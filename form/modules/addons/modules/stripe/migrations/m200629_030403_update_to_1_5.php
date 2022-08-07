<?php

use yii\db\Migration;

/**
 * Class m200629_030403_update_to_1_5
 */
class m200629_030403_update_to_1_5 extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function safeUp()
    {
        // Add Conditional logic fields
        $this->addColumn('{{%addon_stripe}}', 'name', $this->string(255)->notNull()->after('status'));
        $this->addColumn('{{%addon_stripe}}', 'event', $this->integer()->notNull()->defaultValue(1)->after('name'));
        $this->addColumn('{{%addon_stripe}}', 'conditions', $this->text()->after('event'));

        // Currency field
        $this->alterColumn('{{%addon_stripe}}', 'currency', $this->string(45));

        // Add foreign column to fields
        $this->addColumn('{{%addon_stripe_item}}', 'stripe_id', $this->integer(11)->notNull()->after('id'));
    }

    /**
     * {@inheritdoc}
     */
    public function safeDown()
    {
        $this->dropColumn('{{%addon_stripe_item}}', 'stripe_id');

        $this->dropColumn('{{%addon_stripe}}', 'event');
        $this->dropColumn('{{%addon_stripe}}', 'conditions');
        $this->dropColumn('{{%addon_stripe}}', 'name');
    }

}
