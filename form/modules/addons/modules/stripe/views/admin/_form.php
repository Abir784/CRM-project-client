<?php

use app\components\widgets\ConditionsBuilder;
use app\helpers\EventHelper;
use app\modules\addons\modules\stripe\helpers\Client;
use app\modules\addons\modules\stripe\models\Stripe;
use dosamigos\selectize\SelectizeDropDownList;
use yii\helpers\Html;
use yii\helpers\Url;
use kartik\form\ActiveForm;
use kartik\select2\Select2;
use kartik\switchinput\SwitchInput;
use kartik\depdrop\DepDrop;
use app\modules\addons\modules\stripe\helpers\Currency;

/* @var $this yii\web\View */
/* @var $model app\modules\addons\modules\stripe\models\Stripe */
/* @var $itemModel app\modules\addons\modules\stripe\models\StripeItem */
/* @var $form yii\widgets\ActiveForm */
/* @var $forms array [id => name] of Form models */

$url = Url::to(['/addons/stripe/admin/fields']);
$currencyUrl = Url::to(['/addons/stripe/admin/currency-fields']);

?>

<div class="stripe-form">

    <?php $form = ActiveForm::begin(); ?>

    <div class="row">
        <div class="col-sm-12">
            <?= $form->field($model, 'name')->textInput([
                'placeholder' => Yii::t('app', "Enter a configuration name..."),
                'maxlength' => true,
            ]) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?= $form->field($model, 'form_id')->widget(Select2::class, [
                'data' => $forms,
                'options' => ['placeholder' => Yii::t('app', 'Select a form...')],
                'pluginOptions' => [
                    'allowClear' => true
                ],
            ])->label(Yii::t('app', 'Form')); ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'event')->widget(Select2::class, [
                'data' => EventHelper::supportedFormEventsInPostRequest(),
            ]); ?>
        </div>
        <div class="col-sm-3">
            <?php if ($model->isNewRecord) { $model->status = true; } ?>
            <?= $form->field($model, 'status')->widget(SwitchInput::class) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <?php if ($model->isNewRecord) { $model->environment = Stripe::TEST; } ?>
            <?= $form->field($model, 'environment')->widget(Select2::class, [
                'data' => [
                    Stripe::TEST => ucfirst(Stripe::TEST),
                    Stripe::LIVE => ucfirst(Stripe::LIVE),
                ],
                'options' => ['placeholder' => Yii::t('app', 'Select an environment...')],
            ]); ?>
        </div>
        <div class="col-sm-3">
            <?= Html::hiddenInput('currency', $model->currency, ['id'=>'currency']) ?>
            <?= $form->field($model, 'currency')->widget(DepDrop::class, [
                'type' => DepDrop::TYPE_SELECT2,
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $currencyUrl,
                    'initialize' => !$model->isNewRecord,
                    'params'=>['currency'],
                ]
            ]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'checkout')->widget(SwitchInput::class, [
                'pluginEvents' => [
                    "switchChange.bootstrapSwitch" => "function(event, state) {
                        if (state == true) {
                            $('.checkout-settings').show();
                        } else {
                            $('.checkout-settings').hide();
                        }
                    }",
                ],
            ]) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3">
            <?= $form->field($model, 'publishable_key')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'secret_key')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'test_publishable_key')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'test_secret_key')->textInput(['maxlength' => true]) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <?= ConditionsBuilder::widget([
                'label' => Yii::t('app', 'Conditions'),
            ]) ?>
            <?= $form->field($model, "conditions", ['options' => ['class' => 'hidden']])->hiddenInput() ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <legend><?= Yii::t('app', 'Items') ?></legend>
        </div>
    </div>
    
    <?php if ($model->isNewRecord || empty($model->items)): ?>

        <fieldset class="item">
            <div class="row">
                <div class="col-sm-6">
                    <?= $form->field($itemModel, '[0]description')->textInput([
                        'maxlength' => true,
                    ]) ?>
                </div>
                <div class="col-sm-3">
                    <?= $form->field($itemModel, '[0]price')->widget(DepDrop::class, [
                        'pluginOptions' => [
                            'depends' => ['stripe-form_id'],
                            'placeholder' => Yii::t('app', 'Select...'),
                            'url' => Url::to(['/addons/stripe/admin/fields']),
                            'params'=>['stripe-item_1']
                        ]
                    ]) ?>
                </div>
                <div class="col-sm-2">
                    <?= $form->field($itemModel, '[0]quantity')->widget(DepDrop::class, [
                        'pluginOptions' => [
                            'depends' => ['stripe-form_id'],
                            'placeholder' => Yii::t('app', 'Select...'),
                            'url' => Url::to(['/addons/stripe/admin/fields']),
                        ]
                    ]) ?>
                </div>
                <div class="col-sm-1">
                    <div class="form-group" style="padding-top: 25px;">
                        <button type="button" class="btn btn-default btn-add">
                            <i class="glyphicon glyphicon-plus"></i>
                        </button>
                    </div>
                </div>
            </div>
        </fieldset>

        <fieldset id="itemTemplate" class="hide">
            <div class="row">
                <div class="col-sm-6">
                    <?= $form->field($itemModel, 'description')->textInput([
                        'maxlength' => true,
                        'disabled' => true,
                    ]) ?>
                </div>
                <div class="col-sm-3">
                    <?= $form->field($itemModel, 'price')->widget(DepDrop::class, [
                        'pluginOptions' => [
                            'depends' => ['stripe-form_id'],
                            'placeholder' => Yii::t('app', 'Select...'),
                            'url' => $url,
                        ],
                        'pluginEvents' => [
                            "depdrop:afterChange" => "function(event, id, value) { 
                                $(event.currentTarget).attr('disabled', true)
                            }",
                        ],
                    ]) ?>
                </div>
                <div class="col-sm-2">
                    <?= $form->field($itemModel, 'quantity')->widget(DepDrop::class, [
                        'pluginOptions' => [
                            'depends' => ['stripe-form_id'],
                            'placeholder' => Yii::t('app', 'Select...'),
                            'url' => $url,
                        ],
                        'pluginEvents' => [
                            "depdrop:afterChange" => "function(event, id, value) { 
                                $(event.currentTarget).attr('disabled', true)
                            }",
                        ],
                    ]) ?>
                </div>
                <div class="col-sm-1">
                    <div class="form-group" style="padding-top: 25px;">
                        <button type="button" class="btn btn-default btn-remove">
                            <i class="glyphicon glyphicon-minus"></i>
                        </button>
                    </div>
                </div>
            </div>
        </fieldset>

    <?php else: ?>

        <?php foreach($model->items as $i => $item): ?>
            <fieldset class="item">
                <div class="row">
                    <div class="col-sm-6">
                        <?= $form->field($item, '['.$i.']description')->textInput([
                            'maxlength' => true,
                        ]) ?>
                    </div>
                    <div class="col-sm-3">
                        <?= Html::hiddenInput('item-'.$i.'-price',
                            $item->price, ['id'=>'item-'.$i.'-price']) ?>
                        <?= $form->field($item, '['.$i.']price')->widget(DepDrop::class, [
                            'pluginOptions' => [
                                'depends' => ['stripe-form_id'],
                                'placeholder' => Yii::t('app', 'Select...'),
                                'url' => $url,
                                'params'=>['item-'.$i.'-price'],
                            ]
                        ]) ?>
                    </div>
                    <div class="col-sm-2">
                        <?= Html::hiddenInput('item-'.$i.'-quantity',
                            $item->quantity, ['id'=>'item-'.$i.'-quantity']) ?>
                        <?= $form->field($item, '['.$i.']quantity')->widget(DepDrop::class, [
                            'pluginOptions' => [
                                'depends' => ['stripe-form_id'],
                                'placeholder' => Yii::t('app', 'Select...'),
                                'url' => $url,
                                'params'=>['item-'.$i.'-quantity'],
                            ]
                        ]) ?>
                    </div>
                    <div class="col-sm-1">
                        <button type="button" class="btn btn-default btn-remove" style="margin-top: 25px;">
                            <i class="glyphicon glyphicon-minus"></i>
                        </button>
                    </div>
                </div>
            </fieldset>
        <?php endforeach; ?>

        <fieldset id="itemTemplate" class="hide">
            <div class="row">
                <div class="col-sm-6">
                    <?= $form->field($itemModel, 'description')->textInput([
                        'maxlength' => true,
                        'disabled' => true,
                    ]) ?>
                </div>
                <div class="col-sm-3">
                    <?= Html::hiddenInput('item-price', '', ['id'=>'item-price']) ?>
                    <?= $form->field($itemModel, 'price')->widget(DepDrop::class, [
                        'pluginOptions' => [
                            'depends' => ['stripe-form_id'],
                            'placeholder' => Yii::t('app', 'Select...'),
                            'url' => $url,
                            'params'=>['item-price'],
                        ],
                        'pluginEvents' => [
                            "depdrop:afterChange" => "function(event, id, value) { 
                                $(event.currentTarget).attr('disabled', true)
                            }",
                        ],
                    ]) ?>
                </div>
                <div class="col-sm-2">
                    <?= Html::hiddenInput('item-quantity', '', ['id'=>'item-quantity']) ?>
                    <?= $form->field($itemModel, 'quantity')->widget(DepDrop::class, [
                        'pluginOptions' => [
                            'depends' => ['stripe-form_id'],
                            'initialize' => true,
                            'placeholder' => Yii::t('app', 'Select...'),
                            'url' => $url,
                            'params'=>['item-quantity'],
                        ],
                        'pluginEvents' => [
                            "depdrop:afterChange" => "function(event, id, value) { 
                                $(event.currentTarget).attr('disabled', true)
                            }",
                        ],
                    ]) ?>
                </div>
                <div class="col-sm-1">
                    <button type="button" class="btn btn-default btn-remove" style="margin-top: 25px;">
                        <i class="glyphicon glyphicon-minus"></i>
                    </button>
                </div>
            </div>
        </fieldset>
    
    <?php endif; ?>

    <div class="row">
        <div class="col-sm-12">
            <p class="help-block">
                <span class="label label-default"><?= Yii::t('app', 'Notes') ?></span>
            </p>
            <ul class="help-block">
                <li><?= Yii::t(
                        'app',
                        'Specify in each item the information of your product or service.'
                    ) ?></li>
                <li><?= Yii::t(
                        'app',
                        'For one time credit card payments, Price (required) and Quantity (optional) will be multiplied in order to get the item total value.'
                    ) ?></li>
            </ul>
        </div>
    </div>

    <div class="row checkout-settings">
        <div class="col-sm-12">
            <legend><?= Yii::t('app', 'Checkout Page Settings') ?></legend>
        </div>
    </div>

    <div class="row checkout-settings">
        <div class="col-sm-6">
            <?= $form->field($model, 'message')->textInput([
                'maxlength' => true,
                'placeholder' => Yii::t('app', 'You are being redirected to the Stripe checkout page...'),
            ]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'success_url')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'cancel_url')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'billing_address')->widget(SwitchInput::class)
                ->hint(Yii::t('app', 'Checkout should collect the customer’s billing address.')) ?>
        </div>
        <div class="col-sm-6">
            <?= $form->field($model, 'payment_method_types')->widget(Select2::class, [
                'data' => Client::paymentMethodTypes(),
                'options' => [
                    'placeholder'=> Yii::t('app', 'Select types...'),
                    'multiple' => true,
                ],
            ]); ?>
        </div>
    </div>
    <div class="row checkout-settings">
        <div class="col-sm-3">
            <?= $form->field($model, 'subscription')->widget(SwitchInput::class, [
                'pluginEvents' => [
                    "switchChange.bootstrapSwitch" => "function(event, state) {
                        if (state == true) {
                            $('.subscription-settings').show();
                        } else {
                            $('.subscription-settings').hide();
                        }
                    }",
                ],
            ]) ?>
        </div>
        <div class="col-sm-3 subscription-settings" style="display: none">
            <?= $form->field($model, 'trial')->widget(SwitchInput::class) ?>
        </div>
        <div class="col-sm-3 subscription-settings" style="display: none">
            <?= $form->field($model, 'trial_days')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-sm-12 subscription-settings">
            <p class="help-block">
                <span class="label label-default"><?= Yii::t('app', 'Notes') ?></span>
            </p>
            <ul class="help-block">
                <li><?= Yii::t(
                        'app',
                        "The Item's 'Price' must be the Form field that have the Plan ID for your Product in Stripe."
                    ) ?></li>
                <li><?= Yii::t(
                        'app',
                        "Users can subscribe until 20 plans under a single subscription, however all of the plans must have the same billing interval."
                    ) ?></li>
            </ul>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <legend><?= Yii::t('app', 'Credit Card Field Settings') ?></legend>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3">
            <?php if ($model->isNewRecord) { $model->label = Yii::t('app', 'Credit or debit card'); } ?>
            <?= $form->field($model, 'label')->textInput(['maxlength' => true]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'description')->textInput(['maxlength' => true])->hint(Yii::t('app', 'Text which you can attach to a charge. Your receipt emails will include it.')) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'statement_descriptor')->textInput(['maxlength' => true])->hint(Yii::t('app', 'Up to 22 characters to be displayed on your customer\'s credit card statement.')) ?>
        </div>
        <div class="row">
            <div class="col-sm-3">
                <?= $form->field($model, 'required')->widget(SwitchInput::class) ?>
            </div>
        </div>
    </div>

    <div class="row">
        <!--<div class="col-sm-3">-->
            <?php if ($model->isNewRecord) { $model->card = true; } ?>
            <?php /* $form->field($model, 'card')->widget(SwitchInput::class, ['disabled' => true])->label(Yii::t('app', 'Single-line input')) */ ?>
        <!--</div>-->
        <div class="col-sm-3">
            <?= $form->field($model, 'hide_label')->widget(SwitchInput::class) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'hidePostalCode')->widget(SwitchInput::class) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'hideIcon')->widget(SwitchInput::class) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'iconStyle')->dropDownList(
                ['solid' => Yii::t('app', 'Solid'), 'default' => Yii::t('app', 'Default')]
            ) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <?php if ($model->isNewRecord) { $model->style = "{
      base: {
        lineHeight: '24px',
        fontWeight: 400,
        fontFamily: '\"Helvetica Neue\", \"Helvetica\", sans-serif',
        fontSize: '14px',

        '::placeholder': {
          color: '#CFD7DF',
        }
      },
      invalid: {
        iconColor: '#e85746',
        color: '#e85746',
      }
    }"; } ?>
            <?= $form->field($model, 'style')->textarea(['rows' => '3'])
                ->hint(Yii::t('app', 'Customize the Credit Card Field appearance using CSS properties in JSON format.')) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
            <legend><?= Yii::t('app', 'Additional Fields') ?></legend>
        </div>
    </div>

    <?php if (!$model->isNewRecord): ?>
        <?= Html::hiddenInput('receipt_email', $model->receipt_email, ['id'=>'receipt_email']) ?>
        <?= Html::hiddenInput('cardholder_name', $model->cardholder_name, ['id'=>'cardholder_name']) ?>
        <?= Html::hiddenInput('address_line1', $model->address_line1, ['id'=>'address_line1']) ?>
        <?= Html::hiddenInput('address_line2', $model->address_line2, ['id'=>'address_line2']) ?>
        <?= Html::hiddenInput('address_city', $model->address_city, ['id'=>'address_city']) ?>
        <?= Html::hiddenInput('address_state', $model->address_state, ['id'=>'address_state']) ?>
        <?= Html::hiddenInput('address_zip', $model->address_zip, ['id'=>'address_zip']) ?>
        <?= Html::hiddenInput('address_country', $model->address_country, ['id'=>'address_country']) ?>
    <?php endif; ?>

    <div class="row">
        <div class="col-sm-3">
            <?= $form->field($model, 'receipt_email')->widget(DepDrop::class, [
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $url,
                    'params'=>['receipt_email'],
                ],
                'pluginEvents' => [
                    "depdrop:afterChange" => "function(event, id, value) { 
                    }",
                ],
            ]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'cardholder_name')->widget(DepDrop::class, [
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $url,
                    'params'=>['cardholder_name'],
                ],
                'pluginEvents' => [
                    "depdrop:afterChange" => "function(event, id, value) { 
                    }",
                ],
            ]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'address_line1')->widget(DepDrop::class, [
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $url,
                    'params'=>['address_line1'],
                ],
                'pluginEvents' => [
                    "depdrop:afterChange" => "function(event, id, value) { 
                    }",
                ],
            ]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'address_line2')->widget(DepDrop::class, [
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $url,
                    'params'=>['address_line2'],
                ],
                'pluginEvents' => [
                    "depdrop:afterChange" => "function(event, id, value) { 
                    }",
                ],
            ]) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3">
            <?= $form->field($model, 'address_city')->widget(DepDrop::class, [
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $url,
                    'params'=>['address_city'],
                ],
                'pluginEvents' => [
                    "depdrop:afterChange" => "function(event, id, value) { 
                    }",
                ],
            ]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'address_state')->widget(DepDrop::class, [
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $url,
                    'params'=>['address_state'],
                ],
                'pluginEvents' => [
                    "depdrop:afterChange" => "function(event, id, value) { 
                    }",
                ],
            ]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'address_zip')->widget(DepDrop::class, [
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $url,
                    'params'=>['address_zip'],
                ],
                'pluginEvents' => [
                    "depdrop:afterChange" => "function(event, id, value) { 
                    }",
                ],
            ]) ?>
        </div>
        <div class="col-sm-3">
            <?= $form->field($model, 'address_country')->widget(DepDrop::class, [
                'pluginOptions' => [
                    'depends' => ['stripe-form_id'],
                    'placeholder' => Yii::t('app', 'Select...'),
                    'url' => $url,
                    'params'=>['address_country'],
                    'initialize' => !empty($model->form_id),
                ],
                'pluginEvents' => [
                    "depdrop:afterChange" => "function(event, id, value) { 
                    }",
                ],
            ]) ?>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-12">
                <span class="help-block">
                    <span class="label label-default"><?= Yii::t('app', 'Note') ?></span>
                    <?= Yii::t(
                        'app',
                        'Although these fields are optional, this information can be used to perform a number of verifications, such as CVC, ZIP, and address verification. Also, we will use the Receipt Email to prefill the customer email on the Checkout page.'
                    ) ?>
                </span>
        </div>
    </div>

    <div class="form-group" style="margin-top: 20px">
        <?= Html::submitButton($model->isNewRecord ? Yii::t('app', 'Create') : Yii::t('app', 'Update'), ['class' => $model->isNewRecord ? 'btn btn-primary' : 'btn btn-primary']) ?>
    </div>

    <?php ActiveForm::end(); ?>

</div>


<?php

$this->registerCss("legend { margin-top: 20px; }");

/**
 * Conditional Logic
 */

$ruleBuilderURL = Url::to(['/form/rule-builder']);
$initialize = (int)!$model->isNewRecord;

$script = <<<JS

$(document).ready(function(){

    // Load Conditions Widget
    $("body")
        .find('.rule-builder-conditions')
        .attr('id', 'conditions-builder-1')
        .conditionsWidget({
            'field': '#stripe-conditions',
            'url': '{$ruleBuilderURL}',
            'depends': ['stripe-form_id'],
            'initialize': parseInt("{$initialize}")
        })
        .end()

});

JS;

$this->registerJs($script, $this::POS_END, 'stripe-conditions');

/**
 * Field Mapping
 */

if ($model->isNewRecord) {
    $script = <<<JS

$(document).ready(function(){

    var item = 0;

    $('form')
        // Add button click handler
        .on('click', '.btn-add', function() {

            var template = $('#itemTemplate'),
                cloned = template
                    .clone()
                    .removeClass('hide')
                    .addClass('item')
                    .removeAttr('id')
                    .insertBefore(template);
            item++;

            // Update the name attributes
            cloned
                .find('[name="StripeItem[description]"]')
                    .attr('name', 'StripeItem[' + item + '][description]')
                    .attr('id', 'stripeitem-' + item + '-description')
                    .removeAttr('disabled')
                    .end()
                .find('[name="StripeItem[price]"]')
                    .attr('name', 'StripeItem[' + item + '][price]')
                    .attr('id', 'stripeitem-' + item + '-price')
                    .removeAttr('disabled')
                    .depdrop({
                        depends: ['stripe-form_id'],
                        url: '$url'
                    })
                    .end()
                .find('[name="StripeItem[quantity]"]')
                    .attr('name', 'StripeItem[' + item + '][quantity]')
                    .attr('id', 'stripeitem-' + item + '-quantity')
                    .removeAttr('disabled')
                    .depdrop({
                        depends: ['stripe-form_id'],
                        url: '$url'
                    })
                    .end()
        })
        // Remove button click handler
        .on('click', '.btn-remove', function() {
            var fieldset = $(this).closest('fieldset');
            fieldset.remove();
        });
    
    // Subscription settings
    $('#stripe-subscription').on('init.bootstrapSwitch', function(event, state) {
        if (this.checked) {
            $('.subscription-settings').show();
        } else {
            $('.subscription-settings').hide();
        }
    });
})

JS;

} else {


    $script = <<<JS

$(window).on('load', function() {
    $('#stripe-form_id').trigger('depdrop.change');
});

$(document).ready(function(){

    var item = $('.item').length;

    $('.btn-remove').first().removeClass('btn-remove').addClass('btn-add')
        .find('.glyphicon-minus').removeClass('glyphicon-minus').addClass('glyphicon-plus');

    $('form')
        // Add button click handler
        .on('click', '.btn-add', function() {

            var template = $('#itemTemplate'),
                cloned = template
                    .clone()
                    .removeClass('hide')
                    .addClass('item')
                    .removeAttr('id')
                    .insertBefore(template);

            // Update the name attributes
            cloned
                .find('[name="StripeItem[description]"]')
                    .attr('name', 'StripeItem[' + item + '][description]')
                    .attr('id', 'stripeitem-' + item + '-description')
                    .removeAttr('disabled')
                    .end()
                .find('[name="StripeItem[price]"]')
                    .attr('name', 'StripeItem[' + item + '][price]')
                    .attr('id', 'stripeitem-' + item + '-price')
                    .removeAttr('disabled')
                    .depdrop({
                        depends: ['stripe-form_id'],
                        url: '$url'
                    })
                    .end()
                .find('#item-price')
                    .attr('name', 'item-' + item + '-price')
                    .attr('id', 'item-' + item + '-price')
                    .end()
                .find('[name="StripeItem[quantity]"]')
                    .attr('name', 'StripeItem[' + item + '][quantity]')
                    .attr('id', 'stripeitem-' + item + '-quantity')
                    .removeAttr('disabled')
                    .depdrop({
                        depends: ['stripe-form_id'],
                        url: '$url'
                    })
                    .end()
                .find('#item-quantity')
                    .attr('name', 'item-' + item + '-quantity')
                    .attr('id', 'item-' + item + '-quantity')
                    .end()

            item++;
        })
        // Remove button click handler
        .on('click', '.btn-remove', function() {
            var fieldset = $(this).closest('fieldset');
            fieldset.remove();
        });
    
    // Subscription settings
    $('#stripe-subscription').on('init.bootstrapSwitch', function(event, state) {
        if (this.checked) {
            $('.subscription-settings').show();
        } else {
            $('.subscription-settings').hide();
        }
    });
})

JS;
}

$this->registerJs($script, $this::POS_END);

?>