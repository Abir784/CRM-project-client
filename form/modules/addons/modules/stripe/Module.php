<?php
/**
 * Copyright (C) Baluart.COM - All Rights Reserved
 *
 * @since 1.0
 * @author Baluart E.I.R.L.
 * @copyright Copyright (c) 2015 - 2021 Baluart E.I.R.L.
 * @license http://codecanyon.net/licenses/faq Envato marketplace licenses
 * @link https://easyforms.dev/ Easy Forms
 */

namespace app\modules\addons\modules\stripe;

use app\components\rules\RuleEngine;
use app\controllers\AjaxController;
use app\helpers\EventHelper;
use app\helpers\Html;
use app\helpers\MailHelper;
use app\helpers\SubmissionHelper;
use app\models\Form;
use app\models\FormSubmission;
use app\modules\addons\EventManagerInterface;
use app\modules\addons\FormManagerInterface;
use app\modules\addons\modules\stripe\controllers\CheckController;
use app\modules\addons\modules\stripe\helpers\Client;
use app\modules\addons\modules\stripe\models\Stripe;
use app\modules\addons\modules\stripe\models\StripeItem;
use app\modules\addons\modules\stripe\models\StripePayment;
use app\modules\addons\modules\stripe\services\StripeService;
use Exception;
use Yii;
use yii\base\View;
use yii\helpers\Url;
use yii\web\Response;

/**
 * Class Module
 * @package app\modules\addons\modules\stripe
 */
class Module extends \yii\base\Module implements EventManagerInterface, FormManagerInterface
{

    public $id = "stripe";
    public $defaultRoute = 'admin/index';
    public $controllerLayout = '@app/views/layouts/main';

    /**
     * @inheritdoc
     */
    public function getDefaultModelClasses()
    {
        return [
            'Stripe' => Stripe::class,
        ];
    }

    /**
     * @inheritdoc
     */
    public function attachGlobalEvents()
    {
        return [
            'app.form.submission.accepted' => function ($event) {
                $this->onSubmissionAccepted($event);
            },
            'app.form.submission.verified' => function ($event) {
                $this->onSubmissionVerified($event);
            },
            AjaxController::EVENT_FORM_COPIED => function ($event) {
                $this->onFormCopied($event);
            },
        ];
    }

    /**
     * @inheritdoc
     */
    public function attachClassEvents()
    {
        return [
            View::class => [
                'afterRender' => [
                    [Module::class, 'onViewAfterRender']
                ],
            ],
            Form::class => [
                Form::EVENT_BEFORE_DELETE => [
                    [Module::class, 'onFormDeleted']
                ]
            ],
            FormSubmission::class => [
                FormSubmission::EVENT_GET_SUBMISSION_DATA => [
                    [Module::class, 'onGetSubmissionData']
                ]
            ],
            EventHelper::class => [
                EventHelper::SUPPORTED_FORM_EVENTS => [
                    [self::class, 'onSupportedFormEvents']
                ]
            ],
            SubmissionHelper::class => [
                SubmissionHelper::GET_FIELDS_FOR_FIELD_MAPPING => [
                    [self::class, 'onGetFieldsForFieldMapping']
                ],
            ],
            CheckController::class => [
                EventHelper::EVENT_STRIPE_PAYMENT_RECEIVED => [
                    [self::class, 'onPaymentReceived']
                ]
            ],
        ];
    }

    /**
     * @param $event
     * @throws Exception
     */
    public static function onPaymentReceived($event)
    {
        if (isset($event, $event->sender, $event->sender->payment)) {
            /**
             * Send Email Notification
             * Only when the required event occurs
             */
            /** @var StripePayment $payment */
            $payment = $event->sender->payment;
            if (in_array(EventHelper::STATUS_STRIPE_PAYMENT_RECEIVED, $payment->form->formEmail->event)) {
                MailHelper::sendNotificationByEmail($payment->form, $payment->submission);
            }
        }
    }

    /**
     * Event Handler
     * When Supported Form Events is executed
     *
     * @param $event
     */
    public static function onSupportedFormEvents($event)
    {
        $sender = $event->sender;
        if (!in_array(EventHelper::STATUS_STRIPE_PAYMENT_RECEIVED, array_keys($sender->supportedFormEvents))) {
            $sender->supportedFormEvents[EventHelper::STATUS_STRIPE_PAYMENT_RECEIVED] = Yii::t('app', 'Stripe payment received');
        }
        $event->sender = $sender;
    }

    /**
     * Event Handler
     * When Get Fields For Field Mapping is executed
     *
     * @param $event
     */
    public static function onGetFieldsForFieldMapping($event)
    {
        /** @var SubmissionHelper $sender */
        $sender = $event->sender;
        $fieldsForFieldMapping = $sender->fieldsForFieldMapping;
        $labels = (new StripePayment())->getLabelsForFieldMapping();
        unset($labels['id'], $labels['form_id'], $labels['submission_id'], $labels['created_at'], $labels['updated_at']);
        $sender->fieldsForFieldMapping = array_merge($fieldsForFieldMapping, $labels);
        $event->sender = $sender;
    }

    /**
     * Event Handler
     * When Get Submission Data is executed
     *
     * @param $event
     */
    public static function onGetSubmissionData($event)
    {
        /** @var FormSubmission $sender */
        $sender = $event->sender;
        $payment = StripePayment::findOne(['submission_id' => $sender->id]);
        $data = $sender->_data;
        if ($payment) {
            // Add Payment Data
            $sender->_data = array_merge($data, $payment->getValuesForFieldMapping($payment->fields()));
        } else {
            // Add Payment Link
            $sender->_data = array_merge($data, [
                'stripe_payment_link' => Url::to(['/addons/stripe/check/approval', 'sid' => $sender->hashId], true)
            ]);
        }
        $event->sender = $sender;
    }

    /**
     * Event Handler
     * When a Form is Copied
     *
     * @param $event
     */
    public function onFormCopied($event)
    {
        if (isset($event, $event->form, $event->form->id, $event->oldForm, $event->oldForm->id)) {
            $oModels = Stripe::findAll(['form_id' => $event->oldForm->id]);
            foreach ($oModels as $oModel) {
                $model = new Stripe();
                $model->attributes = $oModel->attributes;
                $model->id = null;
                $model->form_id = $event->form->id;
                $model->isNewRecord = true;
                $model->save();

                foreach ($oModel->items as $oItem) {
                    $item = new StripeItem();
                    $item->attributes = $oItem->attributes;
                    $item->id = null;
                    $item->stripe_id = $model->id;
                    $item->form_id = $event->form->id;
                    $item->isNewRecord = true;
                    $item->save();
                }
            }
        }
    }

    /**
     * Event Handler
     * Before a form model is deleted
     *
     * @param $event
     */
    public static function onFormDeleted($event)
    {
        if (isset($event) && isset($event->sender) && $event->sender instanceof Form && isset($event->sender->id)) {
            $models = Stripe::find()->where(['form_id' => $event->sender->id])->all();
            foreach ($models as $model) {
                $model->delete();
            }
        }
    }

    /**
     * Event Handler
     * After a view is rendered
     *
     * @param $event
     */
    public static function onViewAfterRender($event)
    {
        if (isset($event, $event->sender, $event->sender->context) &&
            isset($event->sender->context->module, $event->sender->context->module->requestedRoute) &&
            $event->sender->context->module->requestedRoute === "app/embed"
        ) {
            // Add code only to app/embed view

            $formModel = $event->sender->context->getFormModel();
            $model = Stripe::findOne(['form_id' => $formModel->id, 'status' => 1]);

            if ($model) {
                $publishableKey = $model->environment === Stripe::LIVE ? $model->publishable_key : $model->test_publishable_key;
                if (!empty($publishableKey)) {
                    if ($model->checkout) { // Checkout page
                        Client::displayCheckoutCodeOnView($event, $model);
                    } else { // Credit Card Field
                        Client::displayCreditCardCodeOnView($event, $model);
                    }
                }
            }
        }
    }

    /**
     * Event Handler
     * When a form submission has been accepted
     *
     * @param $event
     */
    public function onSubmissionAccepted($event)
    {
        /** @var FormSubmission $submissionModel */
        $submissionModel = $event->submission;
        /** @var Form $formModel */
        $formModel = empty($event->form) ? $submissionModel->form : $event->form;
        /** @var array $filePaths */
        $filePaths = empty($event->filePaths) ? [] : $event->filePaths;

        // If file paths are empty, find them by model relation
        if (empty($filePaths)) {
            $fileModels = $submissionModel->files;
            foreach ($fileModels as $fileModel) {
                $filePaths[] = $fileModel->getLink();
            }
        }

        /*******************************
        /* Make API Request
        /*******************************/
        $this->makeRequest($formModel, $submissionModel, $filePaths, FormSubmission::STATUS_ACCEPTED);
    }

    /**
     * Event Handler
     * When a form submission has been verified
     *
     * @param $event
     */
    public function onSubmissionVerified($event)
    {
        /** @var FormSubmission $submissionModel */
        $submissionModel = $event->submission;
        /** @var Form $formModel */
        $formModel = empty($event->form) ? $submissionModel->form : $event->form;
        /** @var array $filePaths */
        $filePaths = empty($event->filePaths) ? [] : $event->filePaths;

        // If file paths are empty, find them by model relation
        if (empty($filePaths)) {
            $fileModels = $submissionModel->files;
            foreach ($fileModels as $fileModel) {
                $filePaths[] = $fileModel->getLink();
            }
        }

        /*******************************
        /* Make API Request
        /*******************************/
        $this->makeRequest($formModel, $submissionModel, $filePaths, FormSubmission::STATUS_VERIFIED);
    }

    /**
     * Make Request to API
     *
     * @param Form $formModel
     * @param FormSubmission $submissionModel
     * @param array $filePaths
     * @param int $event Event Type
     * @return bool
     */
    public function makeRequest($formModel, $submissionModel, $filePaths, $event)
    {

        $result = false;

        $models = Stripe::findAll(['form_id' => $formModel->id, 'status' => 1]);
        /** @var \app\models\FormData $dataModel */
        $dataModel = $formModel->formData;
        /** @var array $submissionData */
        $submissionData = $submissionModel->getSubmissionData();
        // Form fields
        $fieldsForEmail = $dataModel->getFieldsForEmail();
        // Submission data in an associative array
        $fieldValues = SubmissionHelper::prepareDataForReplacementToken($submissionData, $fieldsForEmail);
        // Submission data in a multidimensional array: [0 => ['label' => '', 'value' => '']]
        $fieldData = SubmissionHelper::prepareDataForSubmissionTable($submissionData, $fieldsForEmail);
        // Submission data for rule engine
        $data = SubmissionHelper::prepareDataForRuleEngine($submissionModel->data, $dataModel->getFields());

        /*******************************
        /* Process
        /*******************************/
        foreach ($models as $model) {

            // Only when the required event occurs
            if ($model->event !== $event) {
                continue;
            }

            // By default
            $isValid = true;

            // Conditional Logic
            if (!empty($model->conditions)) {
                $engine = new RuleEngine([
                    'conditions' => $model->conditions,
                    'actions' => [],
                ]);
                $isValid = $engine->matches($data);
            }

            // If the conditions have been met
            if ($isValid) {

                try {

                    $secretKey = $model->environment === Stripe::LIVE ? $model->secret_key : $model->test_secret_key;
                    $stripeService = new StripeService($secretKey);

                    if ($model->checkout) {

                        $success = true;
                        $message = !empty($model->message) ? $model->message :
                            Yii::t('app', 'You are being redirected to the Stripe checkout page...');

                        $params = Client::generateCheckoutParameters(
                            $model,
                            $formModel,
                            $submissionModel,
                            $submissionData,
                            $stripeService);

                        // Create Stripe Session
                        $session = $stripeService->session($params);

                        Yii::$app->getResponse()->on(Response::EVENT_BEFORE_SEND,
                            function($event) use ($success, $formModel, $message, $session) {
                                // Update response
                                /** @var \yii\web\Response $response */
                                $response = $event->sender;
                                $response->format = Response::FORMAT_JSON;
                                $response->data = array(
                                    'action'  => 'submit',
                                    'success' => $success,
                                    'id' => $formModel->id,
                                    'message' => $message,
                                );
                                if (!empty($session['id'])) {
                                    $response->data['addons'] = [
                                        'stripe' => [
                                            'session_id' => $session['id'],
                                        ]
                                    ];
                                }
                                $event->sender = $response;
                            });

                    } elseif(isset($_POST['stripe-token']) && $token = $_POST['stripe-token']) {

                        // Amount
                        $amount = 0;
                        $i = 0;
                        $metadata = [
                            'app' => Yii::$app->name,
                            'form_id' => $formModel->id,
                            'submission_id' => $submissionModel->id,
                        ];

                        foreach ($model->items as $itemModel) {
                            // Check field value
                            $quantity = isset($itemModel->quantity, $submissionData[$itemModel->quantity]) &&
                            !empty($submissionData[$itemModel->quantity]) ?
                                $submissionData[$itemModel->quantity] : 1;
                            $price = isset($itemModel->price, $submissionData[$itemModel->price]) &&
                            !empty($submissionData[$itemModel->price]) ?
                                $submissionData[$itemModel->price] : 0;

                            // Sum values if field value is an array
                            $quantity = is_array($quantity) ? array_sum($quantity) : $quantity;
                            $price = is_array($price) ? array_sum($price) : $price;

                            $amount += $quantity * $price * 100; // Stripe Accepts Charges In Cents
                            $metadata['item_' . ++$i] = 'Description: ' . $itemModel->description . ' - Price: ' . number_format($price, 2) . ' - Quantity: ' . $quantity . ' - SubTotal: ' . number_format( $quantity * $price, 2);
                        }

                        // Payment arguments
                        $arguments = [
                            'amount' => $amount,
                            'currency' => $model->currency,
                            'description' => $model->description,
                            'metadata' => $metadata,
                            'source' => $token,
                        ];
                        // Currency
                        if (!empty($model->currency) && !empty($submissionData[$model->currency])) {
                            $arguments['currency'] = is_array($submissionData[$model->currency]) ? implode('', $submissionData[$model->currency]) : $submissionData[$model->currency];
                        }
                        // Receipt Email
                        if (!empty($model->receipt_email) && !empty($submissionData[$model->receipt_email])) {
                            $arguments['receipt_email'] = is_array($submissionData[$model->receipt_email]) ? implode(',', $submissionData[$model->receipt_email]) : $submissionData[$model->receipt_email];
                        }
                        // Shipping Information
                        $shipping = [];
                        // Address
                        $address = [];
                        if (!empty($model->address_line1) && !empty($submissionData[$model->address_line1])) {
                            $address['line1'] = is_array($submissionData[$model->address_line1]) ? implode(',', $submissionData[$model->address_line1]) : $submissionData[$model->address_line1];
                        }
                        if (!empty($model->address_line2) && !empty($submissionData[$model->address_line2])) {
                            $address['line2'] = is_array($submissionData[$model->address_line2]) ? implode(',', $submissionData[$model->address_line2]) : $submissionData[$model->address_line2];
                        }
                        if (!empty($model->address_city) && !empty($submissionData[$model->address_city])) {
                            $address['city'] = is_array($submissionData[$model->address_city]) ? implode(',', $submissionData[$model->address_city]) : $submissionData[$model->address_city];
                        }
                        if (!empty($model->address_state) && !empty($submissionData[$model->address_state])) {
                            $address['state'] = is_array($submissionData[$model->address_state]) ? implode(',', $submissionData[$model->address_state]) : $submissionData[$model->address_state];
                        }
                        if (!empty($model->address_country) && !empty($submissionData[$model->address_country])) {
                            $address['country'] = is_array($submissionData[$model->address_country]) ? implode(',', $submissionData[$model->address_country]) : $submissionData[$model->address_country];
                        }
                        if (!empty($model->address_zip) && !empty($submissionData[$model->address_zip])) {
                            $address['postal_code'] = is_array($submissionData[$model->address_zip]) ? implode(',', $submissionData[$model->address_zip]) : $submissionData[$model->address_zip];
                        }
                        if (!empty($address)) {
                            $shipping['address'] = $address;
                        }
                        // Name
                        if (!empty($model->cardholder_name) && !empty($submissionData[$model->cardholder_name])) {
                            $shipping['name'] = is_array($submissionData[$model->cardholder_name]) ? implode(',', $submissionData[$model->cardholder_name]) : $submissionData[$model->cardholder_name];
                        }
                        // Shipping Info
                        if (!empty($shipping) && !empty($shipping['address'])) {
                            $arguments['shipping'] = $shipping;
                        }

                        // Submit payment
                        $charge = $stripeService->charge($arguments);

                        if ($charge && isset($charge->id)) {

                            $payment = new StripePayment();
                            $payment->form_id = $formModel->id;
                            $payment->stripe_id = $model->id;
                            $payment->submission_id = $submissionModel->id;
                            $payment->payment_id = $charge->payment_intent;
                            $payment->payment_method = !empty($charge->payment_method_details->type) ? $charge->payment_method_details->type : null;
                            $payment->amount = !empty($charge->amount) ? number_format($charge->amount / 100, 2) : null;
                            $payment->currency = $charge->currency;
                            $payment->receipt_email = $charge->receipt_email;

                            if (isset($charge->source->id)) {
                                $payment->brand = $charge->source->brand;
                                $payment->last4 = $charge->source->last4;
                                $payment->country = $charge->source->country;
                            }

                            if (!empty($submissionModel->created_by)) {
                                $payment->created_by = $submissionModel->created_by;
                            }

                            $payment->save(false);
                        }
                    }

                } catch (Exception $e) {

                    // Log exception
                    Yii::error($e);

                }
            }
        }

        return $result;
    }
}