<?php

use yii\helpers\Html;
use yii\widgets\ActiveForm;

/* @var $this yii\web\View */
/* @var $model app\modules\addons\modules\stripe\models\StripeSearch */
/* @var $form yii\widgets\ActiveForm */
?>

<div class="stripe-search">

    <?php $form = ActiveForm::begin([
        'action' => ['index'],
        'method' => 'get',
    ]); ?>

    <?= $form->field($model, 'id') ?>

    <?= $form->field($model, 'form_id') ?>

    <?= $form->field($model, 'status') ?>

    <?= $form->field($model, 'secret_key') ?>

    <?= $form->field($model, 'publishable_key') ?>

    <?php // echo $form->field($model, 'currency') ?>

    <?php // echo $form->field($model, 'application_fee') ?>

    <?php // echo $form->field($model, 'capture') ?>

    <?php // echo $form->field($model, 'description') ?>

    <?php // echo $form->field($model, 'transfer_group') ?>

    <?php // echo $form->field($model, 'statement_descriptor') ?>

    <?php // echo $form->field($model, 'created_by') ?>

    <?php // echo $form->field($model, 'updated_by') ?>

    <?php // echo $form->field($model, 'created_at') ?>

    <?php // echo $form->field($model, 'updated_at') ?>

    <div class="form-group">
        <?= Html::submitButton(Yii::t('app', 'Search'), ['class' => 'btn btn-primary']) ?>
        <?= Html::resetButton(Yii::t('app', 'Reset'), ['class' => 'btn btn-default']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>
