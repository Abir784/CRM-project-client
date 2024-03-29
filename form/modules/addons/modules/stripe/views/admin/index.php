<?php

use app\components\widgets\ActionBar;
use app\components\widgets\GridView;
use app\components\widgets\PageSizeDropDownList;
use kartik\switchinput\SwitchInput;
use yii\helpers\Html;
use yii\helpers\Url;
use yii\web\View;

/* @var $this yii\web\View */
/* @var $searchModel app\modules\addons\modules\stripe\models\StripeSearch */
/* @var $dataProvider yii\data\ActiveDataProvider */

$this->title = Yii::t('app', 'Stripe');
$this->params['breadcrumbs'][] = ['label' => Yii::t('app', 'Add-ons'), 'url' => ['/addons']];
$this->params['breadcrumbs'][] = $this->title;

// User Preferences
$showFilters = Yii::$app->user->preferences->get('GridView.filters.state') === '1';

$options = array(
    'currentPage' => Url::toRoute(['index']), // Used by filters
    'gridViewSettingsEndPoint' => Url::to(['/ajax/grid-view-settings']),
);

// Pass php options to javascript
$this->registerJs("var options = ".json_encode($options).";", View::POS_BEGIN, 'form-options');

$gridColumns = [
    [
        'class' => '\kartik\grid\CheckboxColumn',
        'headerOptions' => ['class'=>'kartik-sheet-style'],
        'rowSelectedClass' => GridView::TYPE_WARNING,
    ],
    [
        'attribute'=> 'name',
        'format' => 'raw',
        'value' => function ($model) {
            return !empty($model->name) ?
                Html::a(Html::encode($model->name), ['view', 'id' => $model->id]) :
                null;
        },
    ],
    [
        'attribute'=> 'form',
        'label' => Yii::t('app', 'Form'),
        'format' => 'raw',
        'value' => function ($model) {
            return isset($model->form, $model->form->name) ?
                Html::a(Html::encode($model->form->name), ['/form/view', 'id' => $model->form->id]) :
                null;
        },
    ],
    [
        'attribute'=> 'event',
        'format' => 'raw',
        'value' => function ($model) {
            $events = \app\helpers\EventHelper::supportedFormEvents();
            return isset($events[$model->event]) ? $events[$model->event] : null;
        },
        'filter' => Html::activeDropDownList(
            $searchModel,
            'event',
            \app\helpers\EventHelper::supportedFormEvents(),
            ['class'=>'form-control', 'prompt' => '']
        ),
    ],
    [
        'class'=>'kartik\grid\BooleanColumn',
        'attribute'=>'status',
        'trueIcon'=>'<span class="glyphicon glyphicon-ok text-success"></span>',
        'falseIcon'=>'<span class="glyphicon glyphicon-remove text-danger"></span>',
        'vAlign'=>'middle',
    ],
    [
        'attribute' => 'lastEditor',
        'value' => function ($model) {
            return isset($model->lastEditor, $model->lastEditor->username) ? Html::encode($model->lastEditor->username) : null;
        },
        'label' => Yii::t('app', 'Updated by'),
        'noWrap'=>true,
    ],
    [
        'attribute'=> 'updated_at',
        'value' => function ($model) {
            return $model->updated;
        },
        'label' => Yii::t('app', 'Updated'),
        'noWrap'=>true,
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
                'locale' => [
                    'format' => 'Y-m-d',
                    'separator' => ' - ',
                ],
                'opens' => 'left'
            ]
        ],
    ],
    ['class' => 'kartik\grid\ActionColumn',
        'dropdown'=>true,
        'dropdownButton' => ['class'=>'btn btn-primary'],
        'dropdownOptions' => ['class' => 'pull-right'],
        'buttons' => [
            //view button
            'view' => function ($url) {
                $options = array_merge([
                    'title' => Yii::t('app', 'View Record'),
                    'aria-label' => Yii::t('app', 'View Record'),
                    'data-pjax' => '0',
                ], []);
                return '<li>'.Html::a('<span class="glyphicon glyphicon-eye-open"></span> ' .
                        Yii::t('app', 'View Record'), $url, $options).'</li>';
            },
            //update button
            'update' => function ($url) {
                $options = array_merge([
                    'title' => Yii::t('app', 'Update'),
                    'aria-label' => Yii::t('app', 'Update'),
                    'data-pjax' => '0',
                ], []);
                return '<li>'.Html::a('<span class="glyphicon glyphicon-pencil"></span> ' .
                        Yii::t('app', 'Update'), $url, $options).'</li>';
            },
            //payments button
            'payments' => function ($url) {
                $options = array_merge([
                    'title' => Yii::t('app', 'Payments'),
                    'aria-label' => Yii::t('app', 'Payments'),
                    'data-pjax' => '0',
                ], []);
                return '<li>'.Html::a('<span class="glyphicon glyphicon-money"></span> ' .
                        Yii::t('app', 'Payments'), $url, $options).'</li>';
            },
            //delete button
            'delete' => function ($url) {
                $options = array_merge([
                    'title' => Yii::t('app', 'Delete'),
                    'aria-label' => Yii::t('app', 'Delete'),
                    'data-confirm' => Yii::t(
                        'app',
                        'Are you sure you want to delete this payment configuration? All data related to this item will be deleted. This action cannot be undone.'
                    ),
                    'data-method' => 'post',
                    'data-pjax' => '0',
                ], []);
                return '<li>'.Html::a('<span class="glyphicon glyphicon-bin"></span> ' .
                        Yii::t('app', 'Delete'), $url, $options).'</li>';
            },
        ],
        'template' => '{view} {update} {payments} {delete}'
    ],
];

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
                    'bordered' => false,
                    'striped' => true,
                    'containerOptions' => [
                        'class' => $showFilters ? 'table-with-filters' : '',
                    ],
                    'panelTemplate' => Html::tag('div', '{panelHeading}{panelBefore}{items}{panelFooter}', [
                        'class' => 'panel {type}']),
                    'panel' => [
                        'type'=>GridView::TYPE_INFO,
                        'heading'=> Yii::t('app', 'Stripe')
                            . ' <small class="panel-subtitle hidden-xs">'
                            . Yii::t('app', 'Collect money with your forms')
                            . '</small>',
                        'before'=> ActionBar::widget([
                            'grid' => 'stripe-grid',
                            'templates' => Yii::$app->user->can('viewBulkActionsInAddons') ? [
                                '{create}' => ['class' => 'col-xs-6 col-sm-6'],
                                '{filters}' => ['class' => 'col-xs-6 col-sm-3 col-lg-4'],
                                '{bulk-actions}' => ['class' => 'col-sm-3 col-lg-2 hidden-xs'],
                            ] : [
                                '{create}' => ['class' => 'col-xs-6 col-sm-6'],
                                '{filters}' => ['class' => 'col-xs-6 col-sm-6'],
                            ],
                            'elements' => [
                                'create' =>
                                    Html::a(
                                        '<span class="glyphicon glyphicon-plus"></span> ' .
                                        Yii::t('app', 'Set Up a Payment Form'),
                                        ['create'],
                                        ['class' => 'btn btn-primary']
                                    ) .
                                    Html::a(
                                        Html::tag('span', '', [
                                            'class' => 'glyphicon glyphicon-question-sign',
                                            'style' => 'font-size: 18px; color: #6e8292; vertical-align: -3px',
                                        ]),
                                        false,
                                        [
                                            'data-toggle' => 'tooltip',
                                            'data-placement'=> 'top',
                                            'title' => Yii::t(
                                                'app',
                                                "This add-on allows you to easily accept payments with your forms using Stripe."
                                            ),
                                            'class' => 'text hidden-xs hidden-sm'
                                        ]
                                    ),
                                'filters' => SwitchInput::widget([
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
                                ]),
                            ],
                            'bulkActionsItems' => [
                                Yii::t('app', 'Update Status') => [
                                    'status-active' => Yii::t('app', 'Active'),
                                    'status-inactive' => Yii::t('app', 'Inactive'),
                                ],
                                'General' => ['general-delete' => 'Delete'],
                            ],
                            'bulkActionsOptions' => [
                                'options' => [
                                    'status-active' => [
                                        'url' => Url::toRoute(['update-status', 'status' => 1]),
                                    ],
                                    'status-inactive' => [
                                        'url' => Url::toRoute(['update-status', 'status' => 0]),
                                    ],
                                    'general-delete' => [
                                        'url' => Url::toRoute('delete-multiple'),
                                        'data-confirm' => Yii::t(
                                            'app',
                                            'Are you sure you want to delete these payment configurations? All data related to each item will be deleted. This action cannot be undone.'
                                        ),
                                    ],
                                ],
                                'class' => 'form-control',
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
    $("[data-toggle='tooltip']").tooltip();
});;

SCRIPT;
// Register tooltip/popover initialization javascript
$this->registerJs($js);