<?php

namespace app\modules\addons\modules\stripe\models;

use Yii;

/**
 * This is the model class for table "{{%addon_stripe_item}}".
 *
 * @property integer $id
 * @property integer $stripe_id
 * @property integer $form_id
 * @property string $description
 * @property string $quantity
 * @property string $price
 */
class StripeItem extends \yii\db\ActiveRecord
{
    /**
     * @inheritdoc
     */
    public static function tableName()
    {
        return '{{%addon_stripe_item}}';
    }

    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['form_id', 'stripe_id'], 'integer'],
            [['description'], 'string', 'max' => 127],
            [['quantity', 'price'], 'string', 'max' => 255],
        ];
    }

    /**
     * @inheritdoc
     */
    public function attributeLabels()
    {
        return [
            'id' => Yii::t('app', 'ID'),
            'stripe_id' => Yii::t('app', 'Stripe ID'),
            'form_id' => Yii::t('app', 'Form ID'),
            'description' => Yii::t('app', 'Description'),
            'quantity' => Yii::t('app', 'Quantity'),
            'price' => Yii::t('app', 'Price'),
        ];
    }

    /**
     * @return \yii\db\ActiveQuery
     */
    public function getStripe()
    {
        return $this->hasOne(Stripe::class,['id'=>'stripe_id']);
    }
}
