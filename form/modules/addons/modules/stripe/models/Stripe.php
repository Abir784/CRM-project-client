<?php

namespace app\modules\addons\modules\stripe\models;

use app\components\behaviors\DateTrait;
use app\models\User;
use Yii;
use app\models\Form;
use app\components\behaviors\RelationTrait;
use yii\behaviors\BlameableBehavior;
use yii\behaviors\TimestampBehavior;

/**
 * This is the model class for table "{{%addon_stripe}}".
 *
 * @property integer $id
 * @property integer $form_id
 * @property integer $status
 * @property string $name
 * @property string $conditions
 * @property integer $event
 * @property string $environment
 * @property string $secret_key
 * @property string $publishable_key
 * @property string $test_secret_key
 * @property string $test_publishable_key
 * @property string|array $payment_method_types
 * @property string $webhook_endpoint
 * @property string $currency
 * @property string $label
 * @property integer $hide_label
 * @property string $description
 * @property string $statement_descriptor
 * @property integer $card
 * @property integer $hidePostalCode
 * @property integer $hideIcon
 * @property string $iconStyle
 * @property string $style
 * @property string $receipt_email
 * @property string $cardholder_name
 * @property string $address_line1
 * @property string $address_line2
 * @property string $address_city
 * @property string $address_state
 * @property string $address_zip
 * @property string $address_country
 * @property integer $required
 * @property boolean $checkout
 * @property boolean $message
 * @property boolean $billing_address
 * @property boolean $subscription
 * @property boolean $trial
 * @property integer $trial_days
 * @property string $success_url
 * @property string $cancel_url
 * @property integer $created_by
 * @property integer $updated_by
 * @property integer $created_at
 * @property integer $updated_at
 *
 * @property Form $form
 * @property StripeItem[] $items
 * @property User $author
 * @property User $lastEditor
 */
class Stripe extends \yii\db\ActiveRecord
{
    use RelationTrait, DateTrait;

    const ON = 1;
    const OFF = 0;

    const LIVE = 'live';
    const TEST = 'test';

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%addon_stripe}}';
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            BlameableBehavior::class,
            TimestampBehavior::class,
        ];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['form_id', 'name', 'environment', 'payment_method_types'], 'required'],
            [['form_id', 'status', 'event', 'checkout', 'subscription', 'billing_address', 'trial', 'trial_days', 'hide_label', 'required', 'card', 'hidePostalCode', 'hideIcon', 'created_by', 'updated_by', 'created_at', 'updated_at'], 'integer'],
            [['name', 'conditions', 'style', 'webhook_endpoint'], 'string'],
            [['secret_key', 'publishable_key', 'test_secret_key', 'test_publishable_key', 'label', 'message', 'description', 'statement_descriptor', 'iconStyle', 'receipt_email', 'cardholder_name', 'address_line1', 'address_line2', 'address_city', 'address_state', 'address_zip', 'address_country'], 'string', 'max' => 255],
            [['currency'], 'string', 'max' => 45],
            [['success_url', 'cancel_url'], 'string', 'max' => 2555],
            [['payment_method_types'], 'safe'],
            [['success_url', 'cancel_url'], 'required', 'when' => function ($model) {
                return $model->subscription == $this::ON;
            }, 'whenClient' => "function (attribute, value) {
                return $(\"input[name='Stripe[checkout]']:checked\").val() == '".self::ON."';
            }"],
            [['publishable_key', 'secret_key'], 'required', 'when' => function ($model) {
                return $model->environment === self::LIVE;
            }, 'whenClient' => "function (attribute, value) {
                return $('#stripe-environment').val() == '".self::LIVE."';
            }"],
            [['test_publishable_key', 'test_secret_key'], 'required', 'when' => function ($model) {
                return $model->environment === self::TEST;
            }, 'whenClient' => "function (attribute, value) {
                return $('#stripe-environment').val() == '".self::TEST."';
            }"],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'form_id' => Yii::t('app', 'Form ID'),
            'status' => Yii::t('app', 'Status'),
            'name' => Yii::t('app', 'Name'),
            'conditions' => Yii::t('app', 'Conditions'),
            'event' => Yii::t('app', 'Event'),
            'environment' => Yii::t('app', 'Mode'),
            'secret_key' => Yii::t('app', 'Live Secret Key'),
            'publishable_key' => Yii::t('app', 'Live Publishable Key'),
            'test_secret_key' => Yii::t('app', 'Test Secret Key'),
            'test_publishable_key' => Yii::t('app', 'Test Publishable Key'),
            'payment_method_types' => Yii::t('app', 'Payment Method Types'),
            'currency' => Yii::t('app', 'Currency'),
            'label' => Yii::t('app', 'Label'),
            'checkout' => Yii::t('app', 'Checkout Page'),
            'message' => Yii::t('app', 'Message'),
            'subscription' => Yii::t('app', 'Subscription'),
            'billing_address' => Yii::t('app', 'Billing Address'),
            'trial' => Yii::t('app', 'Trial'),
            'trial_days' => Yii::t('app', 'Trial Days'),
            'success_url' => Yii::t('app', 'Success URL'),
            'cancel_url' => Yii::t('app', 'Cancel URL'),
            'hide_label' => Yii::t('app', 'Hide Label'),
            'required' => Yii::t('app', 'Required'),
            'description' => Yii::t('app', 'Description'),
            'statement_descriptor' => Yii::t('app', 'Statement Descriptor'),
            'card' => Yii::t('app', 'Card'),
            'hidePostalCode' => Yii::t('app', 'Hide Postal Code'),
            'hideIcon' => Yii::t('app', 'Hide Icon'),
            'iconStyle' => Yii::t('app', 'Icon Style'),
            'style' => Yii::t('app', 'Style'),
            'receipt_email' => Yii::t('app', 'Receipt Email'),
            'cardholder_name' => Yii::t('app', 'Cardholder Name'),
            'address_line1' => Yii::t('app', 'Address Line1'),
            'address_line2' => Yii::t('app', 'Address Line2'),
            'address_city' => Yii::t('app', 'Address City'),
            'address_state' => Yii::t('app', 'Address State'),
            'address_zip' => Yii::t('app', 'Address Zip'),
            'address_country' => Yii::t('app', 'Address Country'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_by' => Yii::t('app', 'Updated By'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getForm()
    {
        return $this->hasOne(Form::class, ['id' => 'form_id']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getAuthor()
    {
        return $this->hasOne(User::class, ['id' => 'created_by']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getLastEditor()
    {
        return $this->hasOne(User::class, ['id' => 'updated_by']);
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getItems()
    {
        return $this->hasMany(StripeItem::class, ['stripe_id' => 'id']);
    }

    public function setItems($value)
    {
        $this->loadRelated('items', $value);
    }

    /**
     * @inheritdoc
     */
    public function beforeDelete()
    {
        if (parent::beforeDelete()) {
            StripeItem::deleteAll(["stripe_id" => $this->id]);
            StripePayment::deleteAll(["stripe_id" => $this->id]);
            return true;
        } else {
            return false;
        }
    }

    /**
     * @param $item
     * @return bool
     */
    public function beforeRSave($item)
    {
        $isValid = true;
        if ($item instanceof StripeItem) {
            $isValid = !empty($item->price);
        }
        return $isValid;
    }

    /**
     * @inheritdoc
     */
    public function afterFind()
    {
        $this->payment_method_types = explode(',', $this->payment_method_types);

        parent::afterFind();
    }

    /**
     * @inheritdoc
     */
    public function beforeValidate()
    {
        if (is_array($this->payment_method_types)) {
            $this->payment_method_types = implode(',', $this->payment_method_types);
        }

        return parent::beforeValidate();
    }

}
