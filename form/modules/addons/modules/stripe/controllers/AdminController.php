<?php

namespace app\modules\addons\modules\stripe\controllers;

use app\components\User;
use app\helpers\ArrayHelper;
use app\models\Form;
use app\modules\addons\modules\stripe\helpers\Currency;
use app\modules\addons\modules\stripe\models\Stripe;
use app\modules\addons\modules\stripe\models\StripeItem;
use app\modules\addons\modules\stripe\models\StripePaymentSearch;
use app\modules\addons\modules\stripe\models\StripeSearch;
use app\modules\addons\modules\stripe\services\StripeService;
use Yii;
use yii\filters\AccessControl;
use yii\filters\VerbFilter;
use yii\helpers\Url;
use yii\web\Controller;
use yii\web\NotFoundHttpException;

/**
 * AdminController implements the CRUD actions for Stripe model.
 */
class AdminController extends Controller
{
    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            'verbs' => [
                'class' => VerbFilter::class,
                'actions' => [
                    'delete' => ['POST'],
                ],
            ],
            'access' => [
                'class' => AccessControl::class,
                'rules' => [
                    ['actions' => ['index', 'fields', 'currency-fields'], 'allow' => true, 'roles' => ['configureFormsWithAddons'], 'roleParams' => function() {
                        return ['listing' => true];
                    }],
                    ['actions' => ['create'], 'allow' => true, 'matchCallback' => function ($rule, $action) {
                        if (Yii::$app->request->isGet && Yii::$app->user->can('configureFormsWithAddons', ['listing' => true])) {
                            return true;
                        } else if ($postData = Yii::$app->request->post('Stripe')) {
                            if (isset($postData['form_id'])) {
                                if (is_array($postData['form_id'])) {
                                    return ['modelClass' => Form::class, 'ids' => $postData['form_id']];
                                } else {
                                    return ['model' => Form::findOne(['id' => $postData['form_id']])];
                                }
                            } else {
                                return true; // Allow access. This request is not saving data.
                            }
                        }
                        return false;
                    }],
                    ['actions' => ['view', 'payments', 'update', 'delete'], 'allow' => true, 'roles' => ['configureFormsWithAddons'], 'roleParams' => function() {
                        $model = $this->findModel(Yii::$app->request->get('id'));
                        return ['model' => $model->form];
                    }],
                    ['actions' => ['update-status', 'delete-multiple'], 'allow' => true, 'roles' => ['configureFormsWithAddons'], 'roleParams' => function() {
                        $models = Stripe::find()
                            ->where(['in', 'id', Yii::$app->request->post('ids')])
                            ->asArray()->all();
                        $ids = ArrayHelper::getColumn($models, 'form_id');
                        return ['modelClass' => Form::class, 'ids' => $ids];
                    }],
                ],
            ],
        ];
    }

    /**
     * @inheritdoc
     */
    public function actions()
    {
        return [
            'delete-multiple' => [
                'class' => 'app\components\actions\DeleteMultipleAction',
                'modelClass' => 'app\modules\addons\modules\stripe\models\Stripe',
                'afterDeleteCallback' => function () {
                    Yii::$app->getSession()->setFlash(
                        'success',
                        Yii::t('app', 'The selected items have been successfully deleted.')
                    );
                },
            ],
            'fields' => [
                'class' => \kartik\depdrop\DepDropAction::class,
                'outputCallback' => function ($formID, $params) {
                    $output = array();
                    $form = Form::findOne(['id' => $formID]);
                    if ($form) {
                        if (Yii::$app->user->can('configureFormsWithAddons', ['model' => $form])) {
                            $formDataModel = $form->formData;
                            if ($formDataModel) {
                                $fields = $formDataModel->getFieldsForEmail();
                                foreach ($fields as $name => $label) {
                                    array_push($output, [
                                        'id' => $name,
                                        'name' => $label,
                                    ]);
                                }
                            }
                        }
                    }
                    return $output;
                },
                'selectedCallback' => function ($formID, $params) {
                    if (isset($params[0]) && !empty($params[0])) {
                        return $params[0];
                    }
                }
            ],
            'currency-fields' => [
                'class' => \kartik\depdrop\DepDropAction::class,
                'outputCallback' => function ($formID, $params) {
                    $currencies = [];
                    foreach (Currency::all() as $code => $name) {
                        array_push($currencies, [
                            'id' => $code,
                            'name' => $name,
                        ]);
                    }
                    $output = [
                        Yii::t('app', 'Currencies') => $currencies,
                    ];
                    $form = Form::findOne(['id' => $formID]);
                    if ($form) {
                        if (Yii::$app->user->can('configureFormsWithAddons', ['model' => $form])) {
                            $formDataModel = $form->formData;
                            if ($formDataModel) {
                                $fields = $formDataModel->getFieldsForEmail();
                                $fieldsOutput = [];
                                foreach ($fields as $name => $label) {
                                    array_push($fieldsOutput, [
                                        'id' => $name,
                                        'name' => $label,
                                    ]);
                                }
                                $output[Yii::t('app', 'Fields')] = $fieldsOutput;
                            }
                        }
                    }
                    return $output;
                },
                'selectedCallback' => function ($formID, $params) {
                    if (isset($params[0]) && !empty($params[0])) {
                        return $params[0];
                    }
                }
            ],
        ];
    }

    /**
     * Lists all Stripe models.
     * @return mixed
     */
    public function actionIndex()
    {
        $searchModel = new StripeSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('index', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
        ]);
    }

    /**
     * Displays a single Stripe model.
     * @param integer $id
     * @return mixed
     */
    public function actionView($id)
    {
        return $this->render('view', [
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Creates a new Stripe model.
     * If creation is successful, the browser will be redirected to the 'view' page.
     * @return mixed
     */
    public function actionCreate()
    {
        $model = new Stripe();

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $model->items = Yii::$app->request->post('StripeItem',[]);
            $model->save();
            if ($model->checkout && $model->subscription) {
                try {
                    // Tracking Active Subscriptions
                    // https://stripe.com/docs/billing/subscriptions/webhooks#tracking
                    $url = Url::to(['/addons/stripe/check/webhook', 'id' => $model->id], true);
                    $events = ['invoice.paid'];
                    $secretKey = $model->environment === Stripe::LIVE ? $model->secret_key : $model->test_secret_key;
                    $stripeService = new StripeService($secretKey);
                    $webhookEndpoint = $stripeService->createWebhookEndpoint($url, $events);
                    $model->webhook_endpoint = $webhookEndpoint->id;
                    $model->save();
                } catch (\Exception $e) {
                    Yii::error($e);
                    Yii::$app->getSession()->setFlash(
                        'danger',
                        "Stripe: " . $e->getMessage()
                    );
                }
            }
            Yii::$app->getSession()->setFlash(
                'success',
                Yii::t('app', 'The form has been successfully configured.')
            );
            return $this->redirect(['index']);
        }

        /** @var User $currentUser */
        $currentUser = Yii::$app->user;
        $forms = $currentUser->forms()->orderBy('updated_at DESC')->asArray()->all();
        $forms = \app\helpers\ArrayHelper::map($forms, 'id', 'name');

        return $this->render('create', [
            'model' => $model,
            'itemModel' => new StripeItem,
            'forms' => $forms,
        ]);
    }

    /**
     * Updates an existing Stripe model.
     * If update is successful, the browser will be redirected to the 'view' page.
     * @param integer $id
     * @return mixed
     */
    public function actionUpdate($id)
    {
        $model = $this->findModel($id);

        if ($model->load(Yii::$app->request->post()) && $model->validate()) {
            $model->items = Yii::$app->request->post('StripeItem',[]);
            $model->save();
            if ($model->checkout && $model->subscription && !$model->webhook_endpoint) {
                try {
                    // Tracking Active Subscriptions
                    // https://stripe.com/docs/billing/subscriptions/webhooks#tracking
                    $url = Url::to(['/addons/stripe/check/webhook', 'id' => $model->id], true);
                    $events = ['invoice.paid'];
                    $secretKey = $model->environment === Stripe::LIVE ? $model->secret_key : $model->test_secret_key;
                    $stripeService = new StripeService($secretKey);
                    $webhookEndpoint = $stripeService->createWebhookEndpoint($url, $events);
                    $model->webhook_endpoint = $webhookEndpoint->id;
                    $model->save();
                } catch (\Exception $e) {
                    Yii::error($e);
                    Yii::$app->getSession()->setFlash(
                        'danger',
                        "Stripe: " . $e->getMessage()
                    );
                }
            }
            Yii::$app->getSession()->setFlash(
                'success',
                Yii::t('app', 'The form has been successfully updated.')
            );
            return $this->redirect(['index']);
        }

        /** @var User $currentUser */
        $currentUser = Yii::$app->user;
        $forms = $currentUser->forms()->orderBy('updated_at DESC')->asArray()->all();
        $forms = \app\helpers\ArrayHelper::map($forms, 'id', 'name');

        return $this->render('update', [
            'model' => $model,
            'itemModel' => new StripeItem,
            'forms' => $forms,
        ]);
    }

    /**
     * Deletes an existing Stripe model.
     * If deletion is successful, the browser will be redirected to the 'index' page.
     * @param integer $id
     * @return mixed
     */
    public function actionDelete($id)
    {
        $this->findModel($id)->delete();

        return $this->redirect(['index']);
    }

    /**
     * Lists all payments.
     * @param integer $id
     * @return mixed
     */
    public function actionPayments($id)
    {
        $searchModel = new StripePaymentSearch();
        $dataProvider = $searchModel->search(Yii::$app->request->queryParams);

        return $this->render('payments', [
            'searchModel' => $searchModel,
            'dataProvider' => $dataProvider,
            'model' => $this->findModel($id),
        ]);
    }

    /**
     * Finds the Stripe model based on its primary key value.
     * If the model is not found, a 404 HTTP exception will be thrown.
     * @param integer $id
     * @return Stripe the loaded model
     * @throws NotFoundHttpException if the model cannot be found
     */
    protected function findModel($id)
    {
        if (($model = Stripe::findOne(['id' => $id])) !== null) {
            return $model;
        } else {
            throw new NotFoundHttpException('The requested page does not exist.');
        }
    }
}
