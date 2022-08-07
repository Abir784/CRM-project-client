<?php
/**
 * Copyright (C) Baluart.COM - All Rights Reserved
 *
 * @since 1.1
 * @author Baluart E.I.R.L.
 * @copyright Copyright (c) 2015 - 2021 Baluart E.I.R.L.
 * @license http://codecanyon.net/licenses/faq Envato marketplace licenses
 * @link https://easyforms.dev/ Easy Forms
 */

namespace app\modules\addons\modules\stripe\services;

use Yii;

class StripeService
{
    public function __construct($apiKey)
    {
        spl_autoload_register(function(){
            require_once(Yii::getAlias('@addons/stripe/stripe_api/init.php'));
        });

        // Set your secret key: remember to change this to your live secret key in production
        // See your keys here: https://dashboard.stripe.com/account/apikeys
        \Stripe\Stripe::setApiKey($apiKey);
    }

    /**
     * API call to charge the card
     *
     * Params Eg.
     * "amount" => 1000,
     * "currency" => "usd",
     * "description" => "Example charge",
     * "source" => $token,
     *
     * @param array $params
     * @return \Stripe\Charge
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function charge(array $params)
    {
        // Charge the user's card:
        return \Stripe\Charge::create($params);
    }

    /**
     * Create customer
     *
     * @param array $params
     * @return \Stripe\Customer
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function customer(array $params)
    {
        return \Stripe\Customer::create($params);
    }

    /**
     * API call to find a customer
     *
     * Params Eg.
     * "email" => "john.doe@example.com",
     *
     * @param array $params
     * @return string
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function findCustomerIdBy(array $params)
    {
        $params = array_merge(['limit' => 1], $params);
        $customers = \Stripe\Customer::all($params);
        if (!isset($customers['data'], $customers['data'][0]) && !empty($customers['data'][0]->id)) {
            return $customers['data'][0]->id;
        }

        return '';
    }

    /**
     * Create Checkout Session
     *
     * @param $params
     * @return \Stripe\Checkout\Session
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function session($params)
    {
        return \Stripe\Checkout\Session::create($params);
    }

    /**
     * Retrieve Checkout Session By ID
     *
     * @param $id
     * @return \Stripe\Checkout\Session
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function retrieveSessionByById($id)
    {
        return \Stripe\Checkout\Session::retrieve($id);
    }

    /**
     * Retrieve Payment Intent By ID
     *
     * @param $id
     * @return \Stripe\PaymentIntent
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function retrievePaymentIntent($id)
    {
        return \Stripe\PaymentIntent::retrieve($id);
    }

    /**
     * Retrieve Subscription By ID
     *
     * @param $id
     * @return \Stripe\Subscription
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function retrieveSubscription($id)
    {
        return \Stripe\Subscription::retrieve($id);
    }

    /**
     * Create a Webhook Endpoint
     *
     * @param $url
     * @param $events
     * @return \Stripe\WebhookEndpoint
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function createWebhookEndpoint($url, $events) {
        return \Stripe\WebhookEndpoint::create([
            'url' => $url,
            'enabled_events' => $events,
        ]);
    }

    /**
     * Retrieve a Webhook Endpoint
     *
     * @param $url
     * @param $events
     * @return \Stripe\WebhookEndpoint
     * @throws \Stripe\Exception\ApiErrorException
     */
    public function retrieveWebhookEndpoint($url, $events) {
        return \Stripe\WebhookEndpoint::create([
            'url' => $url,
            'enabled_events' => $events,
        ]);
    }

    /**
     * Verify with Stripe that the event is genuine.
     *
     * @param string $id
     *
     * @return \Stripe\Event
     */
    public function eventExistsOnStripe($id)
    {
        try {

            return \Stripe\Event::retrieve($id);

        } catch (\Exception $e) {

            Yii::error($e);

        }
    }
}