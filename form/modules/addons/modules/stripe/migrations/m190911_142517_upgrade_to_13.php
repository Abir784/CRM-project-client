<?php

use yii\db\Migration;

/**
 * Class m190911_142517_upgrade_to_13
 */
class m190911_142517_upgrade_to_13 extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('{{%addon_stripe}}', 'checkout', $this->boolean()->defaultValue(1));
        $this->addColumn('{{%addon_stripe}}', 'message', $this->string(255));
        $this->addColumn('{{%addon_stripe}}', 'billing_address', $this->boolean()->defaultValue(0));
        $this->addColumn('{{%addon_stripe}}', 'subscription', $this->boolean()->defaultValue(0));
        $this->addColumn('{{%addon_stripe}}', 'trial', $this->boolean()->defaultValue(0));
        $this->addColumn('{{%addon_stripe}}', 'trial_days', $this->smallInteger());
        $this->addColumn('{{%addon_stripe}}', 'success_url', $this->string(2555));
        $this->addColumn('{{%addon_stripe}}', 'cancel_url', $this->string(2555));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('{{%addon_stripe}}', 'cancel_url');
        $this->dropColumn('{{%addon_stripe}}', 'success_url');
        $this->dropColumn('{{%addon_stripe}}', 'trial_days');
        $this->dropColumn('{{%addon_stripe}}', 'trial');
        $this->dropColumn('{{%addon_stripe}}', 'subscription');
        $this->dropColumn('{{%addon_stripe}}', 'billing_address');
        $this->dropColumn('{{%addon_stripe}}', 'message');
        $this->dropColumn('{{%addon_stripe}}', 'checkout');
    }
}
