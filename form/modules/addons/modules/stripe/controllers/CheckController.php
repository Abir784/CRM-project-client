<?php
/**
 * Copyright (C) Baluart.COM - All Rights Reserved
 *
 * @since 1.1
 * @author Baluart E.I.R.L.
 * @copyright Copyright (c) 2015 - 2021 Baluart E.I.R.L.
 * @license http://codecanyon.net/licenses/faq Envato marketplace licenses
 * @link https://easyforms.dev/ Easy Forms
 */

namespace app\modules\addons\modules\stripe\controllers;

use app\components\rules\RuleEngine;
use app\helpers\EventHelper;
use app\helpers\Hashids;
use app\helpers\SubmissionHelper;
use app\models\FormSubmission;
use app\modules\addons\modules\stripe\helpers\Client;
use app\modules\addons\modules\stripe\models\Stripe;
use app\modules\addons\modules\stripe\models\StripePayment;
use app\modules\addons\modules\stripe\services\StripeService;
use Exception;
use Yii;
use yii\helpers\Inflector;
use yii\helpers\Json;
use yii\helpers\Url;
use yii\web\NotFoundHttpException;
use yii\web\Response;
use yii\web\Controller;

/**
 * CheckController implements the CRUD actions for Stripe model.
 */
class CheckController extends Controller
{

    public $payment = null;

    /**
     * @inheritDoc
     */
    public function beforeAction($action)
    {
        if ($action->id =='webhook') {
            $this->enableCsrfValidation = false;
        }

        return parent::beforeAction($action);
    }

    /**
     * Redirect Users to Stripe Approval Link
     *
     * This endpoint will generate the payment object in Stripe and redirect the user to the Stripe Checkout Page.
     * After the payment, the user will be redirected to the "Success URL",
     * and all the system events will be triggered.
     *
     * This method adds the following GET endpoint:
     * - https://example.com/addons/stripe/check/approval?sid={HashID}
     * - https://example.com/addons/stripe/check/approval?sid={SubmissionID}
     * Where "sid" can be or the Submission Hash ID or the Submission ID.
     *
     * @param int $sid Submission ID
     * @return Response
     * @throws NotFoundHttpException
     */
    public function actionApproval($sid)
    {
        $sid = is_numeric($sid) ? $sid : Hashids::decode($sid);
        /** @var FormSubmission $submissionModel */
        $submissionModel = FormSubmission::findOne(['id' => $sid]);

        if ($submissionModel === null) {
            throw new NotFoundHttpException(Yii::t('app', 'The requested page does not exist.'));
        }

        // Verify if this submission has a previous payment
        $previousPayment = StripePayment::findOne(['submission_id' => $submissionModel->id]);
        if ($previousPayment) {
            // Redirect to Success Url
            return $this->redirect($previousPayment->stripe->success_url);
        }

        $formModel = $submissionModel->form;
        $dataModel = $formModel->formData;
        $event = FormSubmission::STATUS_ACCEPTED;
        $models = Stripe::findAll(['form_id' => $formModel->id, 'status' => 1]);
        $submissionData = $submissionModel->getSubmissionData();
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
                    $params = Client::generateCheckoutParameters(
                        $model,
                        $formModel,
                        $submissionModel,
                        $submissionData,
                        $stripeService);
                    // Create Stripe Session
                    $session = $stripeService->session($params);
                    return $this->redirect($session->url);
                } catch (Exception $e) {
                    // Log exception
                    Yii::error($e);
                }
            }
        }

        // Redirect to Form Page
        return $this->redirect(Url::to([
            '/app/forms',
            'slug' => $formModel->slug
        ], true));
    }

    /**
     * Execute Stripe Payment
     *
     * @param int $id Stripe Model ID
     * @param int $form_id Form Model ID
     * @param int $submission_id Submission Model ID
     * @param string $session_id Stripe Session ID
     * @return Response
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function actionPayment($id, $form_id, $submission_id, $session_id)
    {
        $model = Stripe::findOne(['id' => $id]);

        if ($model !== null) {

            $secretKey = $model->environment === Stripe::LIVE ? $model->secret_key : $model->test_secret_key;
            $stripeService = new StripeService($secretKey);

            // Find Payment by Session ID
            $session = $stripeService->retrieveSessionByById($session_id);

            if ($session && !empty($session->mode) && $session->mode === 'payment' && !empty($session->payment_intent)) {

                $paymentIntent = $stripeService->retrievePaymentIntent($session->payment_intent);

                // Find Submission details
                $submission = null;
                if ($submission_id) {
                    $submission = FormSubmission::findOne(['id' => $submission_id]);
                }

                // Store Payment Details
                $this->payment = new StripePayment();
                $this->payment->form_id = $model->form_id;
                $this->payment->stripe_id = $model->id;
                $this->payment->submission_id = $submission_id;
                $this->payment->payment_id = isset($paymentIntent->id) ? $paymentIntent->id : null;
                $this->payment->payment_method = isset($paymentIntent->charges->data[0]->payment_method_details->type) ? $paymentIntent->charges->data[0]->payment_method_details->type : null;
                $this->payment->amount = !empty($session->amount_total) ? number_format($session->amount_total / 100, 2) : null;
                $this->payment->currency = $session->currency;
                $this->payment->receipt_email = $session->customer_email;
                $this->payment->brand = isset($paymentIntent->charges->data[0]->payment_method_details->card->brand) ? $paymentIntent->charges->data[0]->payment_method_details->card->brand : null;
                $this->payment->last4 = isset($paymentIntent->charges->data[0]->payment_method_details->card->last4) ? $paymentIntent->charges->data[0]->payment_method_details->card->last4 : null;
                $this->payment->country = isset($paymentIntent->charges->data[0]->payment_method_details->card->country) ? $paymentIntent->charges->data[0]->payment_method_details->card->country : null;
                $this->payment->created_by = $submission ? $submission->created_by : null;
                $this->payment->save(false);
                $this->trigger(EventHelper::EVENT_STRIPE_PAYMENT_RECEIVED);
            }
        }

        // Redirect to another page
        return $this->redirect($model->success_url);
    }

    /**
     * Endpoint for Stripe webhooks
     *
     * @return mixed|Response
     */
    public function actionWebhook($id)
    {
        $payload = json_decode(Yii::$app->request->getRawBody(), true);

        if (isset($payload['id'])) {
            $model = Stripe::findOne(['id' => $id]);

            if ($model !== null) {

                $secretKey = $model->environment === Stripe::LIVE ? $model->secret_key : $model->test_secret_key;
                $stripeService = new StripeService($secretKey);

                if (!$stripeService->eventExistsOnStripe($payload['id'])) {
                    return $this->missingMethod();
                }

                $method = 'handle' . Inflector::camelize(str_replace('.', '_', $payload['type']));

                if (method_exists($this, $method)) {
                    return $this->{$method}($model, $payload);
                }
            }
        }

        return $this->missingMethod();
    }

    /**
     * Handle Webhook of Stripe Invoice Paid
     *
     * @param Stripe $model
     * @param array $payload
     * @return Response
     * @throws \Stripe\Exception\ApiErrorException
     */
    protected function handleInvoicePaid($model, array $payload)
    {
        if (isset($payload['data']['object']['id']
            , $payload['data']['object']['status']
            , $payload['data']['object']['subscription'])) {

            $invoice = $payload['data']['object'];
            $secretKey = $model->environment === Stripe::LIVE ? $model->secret_key : $model->test_secret_key;
            $stripeService = new StripeService($secretKey);
            $paymentIntent = $stripeService->retrievePaymentIntent($invoice['payment_intent']);
            $subscription = $stripeService->retrieveSubscription($invoice['subscription']);

            if ($model->checkout && $model->subscription && $model->webhook_endpoint && $paymentIntent && $subscription) {

                $exists = StripePayment::findOne(['payment_id' => $invoice['payment_intent']]);

                if ($exists === null) {
                    // Find Submission details
                    $submission = null;
                    if (isset($subscription->metadata['submission_id'])) {
                        $submission = FormSubmission::findOne(['id' => $subscription->metadata['submission_id']]);
                    }

                    // Store Payment Details
                    $this->payment = new StripePayment();
                    $this->payment->form_id = $model->form_id;
                    $this->payment->stripe_id = $model->id;
                    $this->payment->submission_id = isset($subscription->metadata['submission_id']) ? $subscription->metadata['submission_id'] : null;
                    $this->payment->payment_id = isset($paymentIntent->id) ? $paymentIntent->id : null;
                    $this->payment->payment_method = isset($paymentIntent->charges->data[0]->payment_method_details->type) ? $paymentIntent->charges->data[0]->payment_method_details->type : null;
                    $this->payment->amount = !empty($invoice['amount_paid']) ? number_format($invoice['amount_paid'] / 100, 2) : null;
                    $this->payment->currency = isset($invoice['currency']) ? $invoice['currency'] : null;
                    $this->payment->receipt_email = $invoice['customer_email'];
                    $this->payment->brand = isset($paymentIntent->charges->data[0]->payment_method_details->card->brand) ? $paymentIntent->charges->data[0]->payment_method_details->card->brand : null;
                    $this->payment->last4 = isset($paymentIntent->charges->data[0]->payment_method_details->card->last4) ? $paymentIntent->charges->data[0]->payment_method_details->card->last4 : null;
                    $this->payment->country = isset($paymentIntent->charges->data[0]->payment_method_details->card->country) ? $paymentIntent->charges->data[0]->payment_method_details->card->country : null;
                    $this->payment->created_by = $submission ? $submission->created_by : null;
                    $this->payment->save(false);
                    $this->trigger(EventHelper::EVENT_STRIPE_PAYMENT_RECEIVED);
                }
            }
        }

        return $this->handledMethod();
    }

    /**
     * Response when a webhook is handled
     *
     * @return Response
     */
    protected function handledMethod()
    {
        return new Response([
            'statusCode' => 200,
            'statusText' => 'Webhook Handled',
        ]);
    }

    /**
     * Handle calls to missing methods on the controller.
     *
     * @return mixed
     */
    protected function missingMethod()
    {
        return new Response([
            'statusCode' => 200,
        ]);
    }
}