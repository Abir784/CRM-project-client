<?php

use yii\helpers\Html;

/* @var $this yii\web\View */
/* @var $model app\modules\addons\modules\stripe\models\Stripe */
/* @var $itemModel app\modules\addons\modules\stripe\models\StripeItem */
/* @var $forms array [id => name] of Form models */

$this->title = Yii::t('app', 'Set Up a Payment Form');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Add-ons'), 'url' => ['/addons']];
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Stripe'), 'url' => ['index']];
$this->params['breadcrumbs'][] = $this->title;
?>
<div class="stripe-form-page box box-big box-light">

    <div class="box-header">
        <h3 class="box-title"><?= $this->title ?>
            <span class="box-subtitle"><?= Html::encode($model->id) ?></span>
        </h3>
    </div>

    <?= $this->render('_form', [
        'model' => $model,
        'itemModel' => $itemModel,
        'forms' => $forms,
    ]) ?>

</div>
