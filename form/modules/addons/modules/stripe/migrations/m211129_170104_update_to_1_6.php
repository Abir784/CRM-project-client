<?php

use yii\db\Migration;

/**
 * Class m211129_170104_update_to_1_6
 */
class m211129_170104_update_to_1_6 extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        $this->addColumn('{{%addon_stripe}}', 'environment', $this->text()->after('conditions'));
        $this->addColumn('{{%addon_stripe}}', 'test_secret_key', $this->text()->after('publishable_key'));
        $this->addColumn('{{%addon_stripe}}', 'test_publishable_key', $this->text()->after('test_secret_key'));
        $this->addColumn('{{%addon_stripe}}', 'payment_method_types', $this->text()->after('test_publishable_key'));
        $this->addColumn('{{%addon_stripe}}', 'webhook_endpoint', $this->text()->after('payment_method_types'));
        $this->addColumn('{{%addon_stripe_payment}}', 'payment_id', $this->text()->after('submission_id'));
        $this->addColumn('{{%addon_stripe_payment}}', 'payment_method', $this->text()->after('payment_id'));
        $this->addColumn('{{%addon_stripe_payment}}', 'created_by', $this->integer(11));
        $this->addColumn('{{%addon_stripe_payment}}', 'updated_by', $this->integer(11));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('{{%addon_stripe}}', 'environment');
        $this->dropColumn('{{%addon_stripe}}', 'test_publishable_key');
        $this->dropColumn('{{%addon_stripe}}', 'test_secret_key');
        $this->dropColumn('{{%addon_stripe}}', 'payment_method_types');
        $this->dropColumn('{{%addon_stripe_payment}}', 'payment_id');
        $this->dropColumn('{{%addon_stripe_payment}}', 'payment_method');
        $this->dropColumn('{{%addon_stripe_payment}}', 'created_by');
        $this->dropColumn('{{%addon_stripe_payment}}', 'updated_by');
    }

}
