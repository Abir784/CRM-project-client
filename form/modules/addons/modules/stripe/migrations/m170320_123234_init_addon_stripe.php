<?php
/**
 * Copyright (C) Baluart.COM - All Rights Reserved
 *
 * @since 1.0
 * @author Baluart E.I.R.L.
 * @copyright Copyright (c) 2015 - 2021 Baluart E.I.R.L.
 * @license http://codecanyon.net/licenses/faq Envato marketplace licenses
 * @link https://easyforms.dev/ Easy Forms
 */

use yii\db\Migration;

class m170320_123234_init_addon_stripe extends Migration
{
    public function safeUp()
    {
        $tableOptions = null;
        if ($this->db->driverName === 'mysql') {
            $tableOptions = 'CHARACTER SET utf8 COLLATE utf8_unicode_ci ENGINE=InnoDB';
        }

        $this->createTable('{{%addon_stripe}}', [
            // Basic Settings
            'id' => $this->primaryKey(),
            'form_id' => $this->integer(11)->notNull(),
            'status' => $this->boolean()->notNull()->defaultValue(0),

            // Stripe Auth
            'secret_key' => $this->string(255)->notNull(),
            'publishable_key' => $this->string(255)->notNull(),

            // Credit Card Field Settings
            'currency' => $this->string(3)->notNull()->defaultValue('usd'), // 3-letter currency code
            'label' => $this->string(255),
            'description' => $this->string(255),
            'statement_descriptor' => $this->string(255),

            'card' => $this->boolean()->notNull()->defaultValue(1), // Enables single-line input that collects all card details.
            'hidePostalCode' => $this->boolean()->notNull()->defaultValue(0),
            'hideIcon' => $this->boolean()->notNull()->defaultValue(0),
            'iconStyle' => $this->string(255),
            'style' => $this->text(),

            // Additional Fields
            'receipt_email' => $this->string(255), // The email address where the receipt was sent
            'cardholder_name' => $this->string(255),
            'address_line1' => $this->string(255),
            'address_line2' => $this->string(255),
            'address_city' => $this->string(255),
            'address_state' => $this->string(255),
            'address_zip' => $this->string(255),
            'address_country' => $this->string(255),

            'created_by' => $this->integer(11)->notNull(),
            'updated_by' => $this->integer(11)->notNull(),
            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),

        ], $tableOptions);

        $this->createTable('{{%addon_stripe_item}}', [
            'id' => $this->primaryKey(),
            'form_id' => $this->integer(11),

            'description' => $this->string(127), // Item name
            'quantity' => $this->string(255), // Map to Quantity Field
            'price' => $this->string(255), // Map to Price field

        ], $tableOptions);

        $this->createTable('{{%addon_stripe_payment}}', [
            'id' => $this->primaryKey(),
            'form_id' => $this->integer(11),
            'stripe_id' => $this->integer(11),
            'submission_id' => $this->integer(11),

            'amount' => $this->string(255), // Amount
            'currency' => $this->string(3), // 3-letter currency code
            'brand' => $this->string(255), // Eg. Visa
            'last4' => $this->string(4), // Eg. 4242
            'country' => $this->string(255), // Eg. US
            'receipt_email' => $this->string(255), // The email address where the receipt was sent

            'created_at' => $this->integer(),
            'updated_at' => $this->integer(),
        ], $tableOptions);
    }

    public function safeDown()
    {
        $this->dropTable('{{%addon_stripe_payment}}');
        $this->dropTable('{{%addon_stripe_item}}');
        $this->dropTable('{{%addon_stripe}}');
    }
}
