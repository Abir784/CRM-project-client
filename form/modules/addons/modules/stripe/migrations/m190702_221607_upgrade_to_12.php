<?php

use yii\db\Migration;

/**
 * Class m190702_221607_upgrade_to_12
 */
class m190702_221607_upgrade_to_12 extends Migration
{
    /**
     * {@inheritdoc}
     */
    public function up()
    {
        $this->addColumn('{{%addon_stripe}}', 'hide_label', $this->boolean()->notNull()->defaultValue(0));
        $this->addColumn('{{%addon_stripe}}', 'required', $this->boolean()->notNull()->defaultValue(0));
        $this->addColumn('{{%addon_stripe}}', 'opt_in', $this->boolean()->notNull()->defaultValue(0));
        $this->addColumn('{{%addon_stripe}}', 'opt_in_field', $this->string(255));
    }

    /**
     * {@inheritdoc}
     */
    public function down()
    {
        $this->dropColumn('{{%addon_stripe}}', 'opt_in_field');
        $this->dropColumn('{{%addon_stripe}}', 'opt_in');
        $this->dropColumn('{{%addon_stripe}}', 'required');
        $this->dropColumn('{{%addon_stripe}}', 'hide_label');
    }
}
