<?php

namespace app\modules\addons\modules\stripe\models;

use Yii;
use yii\base\Model;
use yii\data\ActiveDataProvider;

/**
 * StripePaymentSearch represents the model behind the search form about `app\modules\addons\modules\stripe\models\StripePayment`.
 */
class StripePaymentSearch extends StripePayment
{
    /**
     * @inheritdoc
     */
    public function rules()
    {
        return [
            [['payment_id', 'payment_method'], 'string'],
            [['id', 'form_id', 'stripe_id', 'submission_id', 'created_by'], 'integer'],
            [['receipt_email', 'amount', 'currency', 'brand', 'last4', 'country', 'created_at'], 'safe'],
        ];
    }

    /**
     * @inheritdoc
     */
    public function scenarios()
    {
        // bypass scenarios() implementation in the parent class
        return Model::scenarios();
    }

    /**
     * Creates data provider instance with search query applied
     *
     * @param array $params
     *
     * @return ActiveDataProvider
     */
    public function search($params)
    {
        $query = StripePayment::find();

        // add conditions that should always apply here

        $dataProvider = new ActiveDataProvider([
            'query' => $query,
            'pagination' => [
                'pageSize' => Yii::$app->user->preferences->get('GridView.pagination.pageSize'),
            ],
            'sort' => [
                'defaultOrder' => [
                    'created_at' => SORT_DESC,
                ]
            ],
        ]);

        // Add Scope
        if (isset($params['id'])) {
            $this->stripe_id = $params['id'];
            unset($params['id']);
        }

        $this->load($params);

        if (!$this->validate()) {
            // uncomment the following line if you do not want to return any records when validation fails
            // $query->where('0=1');
            return $dataProvider;
        }

        // grid filtering conditions
        $query->andFilterWhere([
            'stripe_id' => $this->stripe_id,
            'form_id' => $this->form_id,
            'submission_id' => $this->submission_id,
            'created_by' => $this->created_by,
        ]);

        if (isset($this->created_at) && !empty($this->created_at)) {
            list($start, $end) = explode(" - ", $this->created_at);
            $startAt = strtotime(trim($start));
            // Add +1 day to the endAt
            $endAt = strtotime(trim($end)) + (24 * 60 * 60);
            $query->andFilterWhere(['between', '{{%addon_stripe_payment}}.created_at', $startAt, $endAt]);
        }

        $query->andFilterWhere(['like', 'receipt_email', $this->receipt_email])
            ->andFilterWhere(['like', 'amount', $this->amount])
            ->andFilterWhere(['like', 'currency', $this->currency])
            ->andFilterWhere(['like', 'payment_id', $this->payment_id])
            ->andFilterWhere(['like', 'payment_method', $this->payment_method])
            ->andFilterWhere(['like', 'brand', $this->brand])
            ->andFilterWhere(['like', 'last4', $this->last4])
            ->andFilterWhere(['like', 'country', $this->country]);

        return $dataProvider;
    }
}