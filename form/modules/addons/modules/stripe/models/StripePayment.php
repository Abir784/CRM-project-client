<?php

namespace app\modules\addons\modules\stripe\models;

use app\components\behaviors\DateTrait;
use app\models\Form;
use app\models\FormSubmission;
use Yii;
use yii\behaviors\TimestampBehavior;
use yii\helpers\Url;

/**
 * This is the model class for table "{{%addon_stripe_payment}}".
 *
 * @property integer $id
 * @property integer $form_id
 * @property integer $stripe_id
 * @property integer $submission_id
 * @property string $payment_id
 * @property string $payment_method
 * @property string $amount
 * @property string $currency
 * @property string $brand
 * @property string $last4
 * @property string $country
 * @property string $receipt_email
 * @property integer $created_by
 * @property integer $updated_by
 * @property integer $created_at
 * @property integer $updated_at
 *
 * @property Form $form
 * @property FormSubmission $submission
 * @property Stripe $stripe
 */
class StripePayment extends \yii\db\ActiveRecord
{
    use DateTrait;

    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%addon_stripe_payment}}';
    }

    /**
     * @inheritdoc
     */
    public function behaviors()
    {
        return [
            TimestampBehavior::class,
        ];
    }

    /**
     * @inheritdoc
     */
    public static function primaryKey()
    {
        return ['id'];
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['form_id', 'stripe_id', 'submission_id', 'created_by', 'updated_by', 'created_at', 'updated_at'], 'integer'],
            [['payment_id', 'amount', 'brand', 'country', 'receipt_email'], 'string', 'max' => 255],
            [['currency'], 'string', 'max' => 3],
            [['last4'], 'string', 'max' => 4],
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
            'stripe_id' => Yii::t('app', 'Stripe ID'),
            'submission_id' => Yii::t('app', 'Submission ID'),
            'payment_id' => Yii::t('app', 'Payment ID'),
            'payment_method' => Yii::t('app', 'Payment Method'),
            'amount' => Yii::t('app', 'Amount'),
            'currency' => Yii::t('app', 'Currency'),
            'brand' => Yii::t('app', 'Brand'),
            'last4' => Yii::t('app', 'Last4'),
            'country' => Yii::t('app', 'Country'),
            'receipt_email' => Yii::t('app', 'Receipt Email'),
            'payment_link' => Yii::t('app', 'Payment Link'),
            'created_by' => Yii::t('app', 'Created By'),
            'updated_by' => Yii::t('app', 'Updated By'),
            'created_at' => Yii::t('app', 'Created At'),
            'updated_at' => Yii::t('app', 'Updated At'),
        ];
    }

    /**
     * @inheritdoc
     */
    public function fields()
    {
        return ['id', 'stripe_id', 'payment_id', 'payment_method', 'amount', 'currency', 'brand', 'last4', 'country', 'receipt_email', 'created_by', 'created_at', 'payment_link'];
    }

    /**
     * Get Labels For Field Mapping
     *
     * @return array
     */
    public function getLabelsForFieldMapping()
    {
        $fields = $this->fields();
        $attributes = $this->attributeLabels();
        $labels = [];
        foreach ($fields as $field) {
            $labels['stripe_' . $field] = "Stripe - " . $attributes[$field];
        }
        return $labels;
    }

    /**
     * Get Values For Field Mapping
     *
     * @param $fields
     * @return array
     */
    public function getValuesForFieldMapping($fields)
    {
        $attributes = $this->toArray($fields);
        $values = [];
        foreach ($attributes as $key => $value) {
            $values['stripe_' . $key] = $value;
        }
        return $values;
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStripe()
    {
        return $this->hasOne(Stripe::class,['id' => 'stripe_id']);
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
    public function getSubmission()
    {
        return $this->hasOne(FormSubmission::class, ['id' => 'submission_id']);
    }

    /**
     * Get Payment Link
     * Note: We can use this link, when a form is submitted without a complete payment in the gateway payment
     *
     * @return string
     */
    public function getPayment_Link()
    {
        return Url::to(['/addons/stripe/check/approval', 'sid' => $this->submission->hashId], true);
    }
}
