<?php

use app\components\widgets\PageSizeDropDownList;
use yii\web\View;
use yii\helpers\Url;
use yii\helpers\Html;
use app\components\widgets\GridView;
use app\components\widgets\ActionBar;
use kartik\switchinput\SwitchInput;

/* @var $this yii\web\View */
/* @var $dataProvider yii\data\ActiveDataProvider */
/* @var $model app\modules\addons\modules\stripe\models\Stripe */
/* @var $searchModel app\modules\addons\modules\stripe\models\StripeSearch */

$this->title = Yii::t('app', 'Stripe Payments');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Add-ons'), 'url' => ['/addons']];
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Stripe'), 'url' => ['index']];
$this->params['breadcrumbs'][] = Yii::t('app', 'Payments');


$gridColumns = [
    [
        'class' => '\kartik\grid\SerialColumn'
    ],
    [
        'attribute'=> 'submission_id',
        'label' => Yii::t('app', 'Submission'),
        'format' => 'raw',
        'value' => function ($model) {
            return isset($model->form_id, $model->submission_id) ?
                Html::a('#' . $model->submission_id, ['/form/submissions', 'id' => $model->form_id, '#' => 'view/'.$model->submission_id ]) :
                null;
        },
    ],
//    [
//        'attribute'=> 'created_by',
//        'label' => Yii::t('app', 'User ID'),
//        'format' => 'raw',
//        'value' => function ($model) {
//            return !empty($model->created_by) ? $model->created_by : '--';
//        },
//    ],
    'receipt_email',
    [
        'attribute'=> 'currency',
        'format' => 'raw',
        'value' => function ($model) {
            return !empty($model->currency) ? strtoupper($model->currency) : null;
        },
    ],
    [
        'attribute'=> 'amount',
        'format' => 'raw',
        'value' => function ($model) {
            if (empty($model->amount)) {
                return null;
            }

            // If amount was saved in decimals
            if (strpos($model->amount, ".") !== false) {
                return $model->amount;
            }

            // Stripe accepts charges in cents by default
            return number_format($model->amount / 100, 2);
        },
    ],
    'payment_method',
    [
        'attribute'=> 'payment_id',
        'format' => 'raw',
        'value' => function ($model) {
            if (empty($model->payment_id)) {
                return null;
            }

            return Html::a($model->payment_id, "https://dashboard.stripe.com/payments/{$model->payment_id}", ['target' => "_blank"]);
        },
    ],
    [
        'attribute'=> 'created_at',
        'value' => function ($model) {
            return $model->created;
        },
        'label' => Yii::t('app', 'Paid'),
        'width' => '150px',
        'filterType'=> \kartik\grid\GridView::FILTER_DATE_RANGE,
        'filterWidgetOptions' => [
            'presetDropdown' => false,
            'convertFormat' => true,
            'containerTemplate' => '
        <div class="form-control kv-drp-dropdown">
            <i class="glyphicon glyphicon-calendar"></i>&nbsp;
            <span class="range-value">{value}</span>
            <span><b class="caret"></b></span>
        </div>
        {input}
',
            'pluginOptions' => [
                'showDropdowns' => true,
                'linkedCalendars' => false,
                'locale' => [
                    'format' => 'Y-m-d',
                    'separator' => ' - ',
                ],
                'opens' => 'left'
            ]
        ],
    ],
];

// User Preferences
$showFilters = Yii::$app->user->preferences->get('GridView.filters.state') === '1';

$options = array(
    'currentPage' => Url::toRoute(['payments', 'id' => $model->id]), // Used by filters
    'gridViewSettingsEndPoint' => Url::to(['/ajax/grid-view-settings']),
);

// Pass php options to javascript
$this->registerJs("var options = ".json_encode($options).";", View::POS_BEGIN, 'form-options');

?>
<div class="stripe-index">

    <div class="row">
        <div class="col-md-12">
            <?= GridView::widget([
                'id' => 'stripe-grid',
                'dataProvider' => $dataProvider,
                'filterModel' => $searchModel,
                'columns' => $gridColumns,
                'resizableColumns' => false,
                'pjax' => false,
                'export' => false,
                'responsive' => true,
                'responsiveWrap' => false,
                'bordered' => false,
                'striped' => true,
                'containerOptions' => [
                    'class' => $showFilters ? 'table-with-filters' : '',
                ],
                'panelTemplate' => Html::tag('div', '{panelHeading}{panelBefore}{items}{panelFooter}', ['class' => 'panel {type}']),
                'panel' => [
                    'type' => GridView::TYPE_INFO,
                    'heading' => $model->form->name . ' <small class="panel-subtitle hidden-xs">'. Yii::t('app', 'Stripe Payments').'</small>',
                    'before'=> ActionBar::widget([
                        'grid' => 'stripe-grid',
                        'templates' => [
                            '{create}' => ['class' => 'col-xs-6 col-sm-6'],
                            '{filters}' => ['class' => 'col-xs-6 col-sm-6'],
                        ],
                        'elements' => [
                            'create' =>
                                Html::a(
                                    '<span class="glyphicon glyphicon-arrow-left"></span> ' .
                                    Yii::t('app', 'Go Back'),
                                    ['index'],
                                    ['class' => 'btn btn-default']
                                ),
                            'filters' => SwitchInput::widget(
                                [
                                    'name'=>'filters',
                                    'type' => SwitchInput::CHECKBOX,
                                    'value' => $showFilters,
                                    'pluginOptions' => [
                                        'size' => 'mini',
                                        'animate' => false,
                                        'labelText' => Yii::t('app', 'Filter'),
                                    ],
                                    'pluginEvents' => [
                                        "switchChange.bootstrapSwitch" => "function(event, state) {
                                                var show = (typeof state !== 'undefined' && state == 1) ? 1 : 0;
                                                $.post(options.gridViewSettingsEndPoint, { 'show-filters': show })
                                                    .done(function(response) {
                                                        if (response.success) {
                                                            if (show) {
                                                                $('.filters').fadeIn();
                                                            } else {
                                                                $('.filters').fadeOut();
                                                                window.location = options.currentPage;
                                                            }                   
                                                        }
                                                    });
                                            }",
                                    ],
                                    'containerOptions' => ['style' => 'margin-top: 6px; text-align: right'],
                                ]
                            ),
                        ],
                    ]),
                ],
                'replaceTags' => [
                    '{pageSize}' => function($widget) {
                        $html = '';
                        if ($widget->panelFooterTemplate !== false) {
                            $selectedSize = Yii::$app->user->preferences->get('GridView.pagination.pageSize');
                            return PageSizeDropDownList::widget(['selectedSize' => $selectedSize]);
                        }
                        return $html;
                    },
                ],
                'panelFooterTemplate' => '
                    <div class="kv-panel-pager">
                        {pageSize}
                        {pager}
                    </div>
                ',
                'toolbar' => false
            ]); ?>
        </div>
    </div>
</div>

<?php
$js = <<< 'SCRIPT'

$(function () {
    // Tooltips
    $("[data-toggle='tooltip']").tooltip();
});

SCRIPT;
// Register tooltip/popover initialization javascript
$this->registerJs($js);