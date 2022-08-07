<?php
namespace app\modules\addons\modules\stripe\helpers;

use app\helpers\Html;
use app\modules\addons\modules\stripe\models\Stripe;
use Yii;
use yii\helpers\Url;

class Client
{

    public static function paymentMethodTypes()
    {
        return [
            'card' => Yii::t('app', 'Card'),
            'acss_debit' => Yii::t('app', 'Canadian pre-authorized debit'),
            'afterpay_clearpay' => Yii::t('app', 'Afterpay and Clearpay'),
            'alipay' => Yii::t('app', 'Alipay'),
            'bacs_debit' => Yii::t('app', 'Bacs Direct Debit'),
            'bancontact' => Yii::t('app', 'Bancontact'),
            'boleto' => Yii::t('app', 'Boleto'),
            'eps' => Yii::t('app', 'EPS'),
            'fpx' => Yii::t('app', 'FPX'),
            'giropay' => Yii::t('app', 'giropay'),
            'grabpay' => Yii::t('app', 'GrabPay'),
            'ideal' => Yii::t('app', 'iDEAL'),
            'klarna' => Yii::t('app', 'Klarna'),
            'oxxo' => Yii::t('app', 'OXXO'),
            'p24' => Yii::t('app', 'Przelewy24'),
            'sepa_debit' => Yii::t('app', 'SEPA Direct Debit'),
            'sofort' => Yii::t('app', 'Sofort'),
            'wechat_pay' => Yii::t('app', 'WeChat Pay'),
        ];
    }

    public static function displayCheckoutCodeOnView($event, $model)
    {
        $publishableKey = $model->environment === Stripe::LIVE ? $model->publishable_key : $model->test_publishable_key;

        $jsCode = <<<EOT

<script src="https://js.stripe.com/v3/"></script>
<script>
$(document).ready(function(){
    formEl.on('success', function(event, data){
        if (typeof data.addons !== 'undefined') {
            if (typeof data.addons.stripe !== 'undefined') {
                if (typeof data.addons.stripe.session_id !== 'undefined') {
                    var stripe = Stripe('{$publishableKey}');
                    stripe
                    .redirectToCheckout({
                      sessionId: data.addons.stripe.session_id
                    })
                    .then(function(result) {
                      console.log("error", result);
                      if (typeof result.error !== 'undefined') {
                        if (typeof result.error.message !== 'undefined') {
                          alert(result.error.message);                    
                        }                  
                      }
                    })
                    .catch(function(err) {
                      console.log(err);
                    });
                }
            }
        }
    });
})
</script>
</body>
EOT;

        $content = $event->output;
        $event->output = str_replace("</body>", $jsCode, $content);
    }

    public static function displayCreditCardCodeOnView($event, $model)
    {
        $publishableKey = $model->environment === Stripe::LIVE ? $model->publishable_key : $model->test_publishable_key;

        // Hide Postal Code
        $hidePostalCode = $model->hidePostalCode ? 'true' : 'false';
        $hideIcon = $model->hideIcon ? 'true' : 'false';

        // Required
        $required = $model->required ? 'true' : 'false';
        $requiredCssClass = $model->required ? 'required-control' : '';

        // Label
        $label = empty($model->label) ? Yii::t('app', 'Credit or debit card') : $model->label;
        $label = Html::label($label, 'stripe', ['class' => 'control-label stripe-card-label']);
        if ($model->hide_label) {
            $label = '';
        }

        // HTML Code
        $content = <<<HTML
<div id="stripe-container" class="form-group {$requiredCssClass}">
    {$label}
    <div id="card-element" class="form-control"></div>
    <div id="card-errors" class="help-block error-block"></div>                
</div>
HTML;

        if (!$model->card) {
            $cardNumber  = Html::label(Yii::t('app', 'Card Number'), 'card-number', ['class' => 'control-label']);
            $cardNumber .= Html::tag('div', '', ['id' => 'card-number', 'class' => 'form-control']);
            $cardNumber .= Html::tag('div', '', ['id' => 'card-number-errors', 'class' => 'help-block error-block']);
            $cardNumber  = Html::tag('div', $cardNumber, ['class' => 'form-group']);
            $cardExpiry  = Html::label(Yii::t('app', 'Expiration Date'), 'card-expiry', ['class' => 'control-label']);
            $cardExpiry .= Html::tag('div', '', ['id' => 'card-expiry', 'class' => 'form-control']);
            $cardExpiry .= Html::tag('div', '', ['id' => 'card-expiry-errors', 'class' => 'help-block error-block']);
            $cardExpiry  = Html::tag('div', $cardExpiry, ['class' => 'form-group']);
            $cardCvc     = Html::label(Yii::t('app', 'CVC'), 'card-cvc', ['class' => 'control-label']);
            $cardCvc    .= Html::tag('div', '', ['id' => 'card-cvc', 'class' => 'form-control']);
            $cardCvc    .= Html::tag('div', '', ['id' => 'card-cvc-errors', 'class' => 'help-block error-block']);
            $cardCvc     = Html::tag('div', $cardCvc, ['class' => 'form-group']);
            if (!$model->hidePostalCode) {
                $postalCode  = Html::label(Yii::t('app', 'Postal Code'), 'postal-code', ['class' => 'control-label']);
                $postalCode .= Html::tag('div', '', ['id' => 'postal-code', 'class' => 'form-control']);
                $postalCode .= Html::tag('div', '', ['id' => 'postal-code-errors', 'class' => 'help-block error-block']);
                $postalCode  = Html::tag('div', $postalCode, ['class' => 'form-group']);
            } else {
                $postalCode = '';
            }

            $content = <<<HTML
<div class="row">
    <div class="col-xs-12">{$cardNumber}</div>
</div>
<div class="row">
    <div class="col-xs-6">{$cardExpiry}</div>
    <div class="col-xs-3">{$cardCvc}</div>
    <div class="col-xs-3">{$postalCode}</div>
</div>
HTML;

            // Remove layout
            // $content = $cardNumber . $cardExpiry . $cardCvc . $postalCode;
        }

        $htmlCode = $content;

        $jsCode = <<<EOT

<script src="https://js.stripe.com/v3/"></script>
<script>
$(document).ready(function(){

    var stripe = Stripe('{$publishableKey}');
    var elements = stripe.elements();

    var style = {$model->style};
    
    function stripeTokenHandler(token) {
        var hiddenInput = document.createElement('input');
        hiddenInput.setAttribute('type', 'hidden');
        hiddenInput.setAttribute('name', 'stripe-token');
        hiddenInput.setAttribute('value', token.id);
        formEl.find('[name="stripe-token"]').remove();
        formEl.append(hiddenInput);
        // Submit form
        formEl.submit();
    }

EOT;
        if ($model->card) {

            $jsCode .= <<<EOT

    var card = elements.create('card', {style: style, hidePostalCode: {$hidePostalCode}, hideIcon: {$hideIcon}, iconStyle: '{$model->iconStyle}'});
    card.mount('#card-element');
    var isValidCard = false;

    // Handle real-time validation errors from card Element.
    card.addEventListener('change', function(event) {
        var displayError = document.getElementById('card-errors');
        if (displayError) {
            if (event.error) {
                $('#stripe-container').removeClass('has-error').addClass('has-error');
                displayError.textContent = event.error.message;
                isValidCard = false;
            } else {
                $('#stripe-container').removeClass('has-error');
                displayError.textContent = '';
                isValidCard = true;
            }
        }
    });

    // Handle submit button
    $('button[type=submit]').on('click', function(event){
        if (isValidCard  || {$required}) {
            event.preventDefault();
            stripe.createToken(card).then(function(result) {
                if (result.error) {
                    var errorElement = document.getElementById('card-errors');
                    errorElement.textContent = result.error.message;
                } else {
                    // Send token to your server
                    stripeTokenHandler(result.token);
                }
            });   
            return false;
        }
    });

    formEl.on('success', function(event){
        // Clear CC fields
        card.clear();
    });

EOT;

        } else {

            $jsCode .= <<<EOT

    var cardNumber = elements.create('cardNumber', {style: style});
    cardNumber.mount('#card-number');
    cardNumber.addEventListener('change', function(event) {
        var displayError = document.getElementById('card-number-errors');
        if (displayError) {
            if (event.error) {
                displayError.textContent = event.error.message;
                // Send new height to parent window
                Utils.postMessage({
                    height: $("body").outerHeight(true)
                });
            } else {
                displayError.textContent = '';
            }
        }
    });

    var cardExpiry = elements.create('cardExpiry', {style: style});
    cardExpiry.mount('#card-expiry');
    cardExpiry.addEventListener('change', function(event) {
        var displayError = document.getElementById('card-expiry-errors');
        if (event.error) {
            displayError.textContent = event.error.message;
            // Send new height to parent window
            Utils.postMessage({
                height: $("body").outerHeight(true)
            });
        } else {
            displayError.textContent = '';
        }
    });

    var cardCvc = elements.create('cardCvc', {style: style});
    cardCvc.mount('#card-cvc');
    cardCvc.addEventListener('change', function(event) {
        var displayError = document.getElementById('card-cvc-errors');
        if (event.error) {
            displayError.textContent = event.error.message;
            // Send new height to parent window
            Utils.postMessage({
                height: $("body").outerHeight(true)
            });
        } else {
            displayError.textContent = '';
        }
    });
EOT;

            if(!$model->hidePostalCode) {

                $jsCode .= <<<EOT

    var postalCode = elements.create('postalCode', {style: style});
    postalCode.mount('#postal-code');
    postalCode.addEventListener('change', function(event) {
        var displayError = document.getElementById('postal-code-errors');
        if (event.error) {
            displayError.textContent = event.error.message;
            // Send new height to parent window
            Utils.postMessage({
                height: $("body").outerHeight(true)
            });
        } else {
            displayError.textContent = '';
        }
    });
EOT;
            }

            $jsCode .= <<<EOT
                    
    // Handle submit button
    $('button').on('click', function(event){
        event.preventDefault();
        // TODO Send data to Stripe
    });

EOT;

        }

        $jsCode .= <<<EOT

});
</script>
</body>
EOT;

        $content = $event->output;
        $content = str_replace("{{STRIPE}}", $htmlCode, $content);
        $event->output = str_replace("</body>", $jsCode, $content);

    }

    /**
     * Return parameters for Stripe Checkout
     *
     * @param $model
     * @param $formModel
     * @param $submissionModel
     * @param $submissionData
     * @param $stripeService
     * @return array
     */
    public static function generateCheckoutParameters($model, $formModel, $submissionModel, $submissionData, $stripeService)
    {
        $i = 0;
        $items = [];
        $metadata = [
            'app' => Yii::$app->name,
            'form_id' => $formModel->id,
            'submission_id' => $submissionModel->id,
        ];

        // Add User ID to Metadata
        if (!Yii::$app->user->isGuest) {
            $metadata['user_id'] = Yii::$app->user->id;
        }

        $currency = !empty($model->currency) ? $model->currency : 'usd';
        if (!empty($model->currency) && !empty($submissionData[$model->currency])) {
            $currency = is_array($submissionData[$model->currency]) ? implode('', $submissionData[$model->currency]) : $submissionData[$model->currency];
        }
        $successUrl = Url::to(['/addons/stripe/check/payment', 'id' => $model->id, 'form_id' => $formModel->id, 'submission_id' => $submissionModel->id], true);
        $successUrl = $successUrl . "&session_id={CHECKOUT_SESSION_ID}";

        $params = [
            'mode' => 'payment',
            'success_url' => $successUrl,
            'cancel_url' => $model->cancel_url,
        ];

        // Payment method types
        if (!empty($model->payment_method_types)) {
            $params['payment_method_types'] = $model->payment_method_types;
        }

        // Customer ID
        if (!empty($model->receipt_email) && !empty($submissionData[$model->receipt_email])) {
            $email = is_array($submissionData[$model->receipt_email]) && !empty($submissionData[$model->receipt_email][0]) ? $submissionData[$model->receipt_email][0] : $submissionData[$model->receipt_email];
            $customerID = $stripeService->findCustomerIdBy([
                'email' => $email,
            ]);
            if (empty($customerID)) {
                $params['customer_email'] = $email;
            } else {
                $params['customer'] = $customerID;
            }
        }

        // Billing Address
        if ($model->billing_address) {
            $params['billing_address_collection'] = 'required';
        }

        // Subscription
        if ($model->checkout && $model->subscription) {

            // Trial period
            if ($model->trial && $model->trial_days > 0) {
                $params['subscription_data']['trial_period_days'] = $model->trial_days;
            }

            foreach ($model->items as $itemModel) {
                // Check field value
                $quantity = isset($itemModel->quantity, $submissionData[$itemModel->quantity]) &&
                !empty($submissionData[$itemModel->quantity]) ?
                    $submissionData[$itemModel->quantity] : 1;
                $quantity = is_array($quantity) ? array_sum($quantity) : $quantity;
                $price = isset($itemModel->price, $submissionData[$itemModel->price]) &&
                !empty($submissionData[$itemModel->price]) ?
                    $submissionData[$itemModel->price] : '';
                // Array of pricing plans
                $price = is_array($price) ? $price : explode(',', $price);
                foreach ($price as $price_id) {
                    if (!empty($price_id)) {
                        array_push($items, [
                            'price' => $price_id,
                            'quantity' => $quantity,
                        ]);
                        $metadata['item_' . ++$i] = 'Description: ' . $itemModel->description . ' - Price ID: ' . $price_id . ' - Quantity: ' . $quantity;
                    }
                }
            }

            $params['mode'] = 'subscription';
            $params['line_items'] = $items;
            $params['subscription_data'] = [
                'metadata' => $metadata,
            ];

        } else { // One-Time Payment

            // Line Items
            foreach ($model->items as $itemModel) {
                // Check field value
                $quantity = isset($itemModel->quantity, $submissionData[$itemModel->quantity]) &&
                !empty($submissionData[$itemModel->quantity]) ?
                    $submissionData[$itemModel->quantity] : 1;
                $price = isset($itemModel->price, $submissionData[$itemModel->price]) &&
                !empty($submissionData[$itemModel->price]) ?
                    $submissionData[$itemModel->price] : 0;

                // Sum values if field value is an array
                $quantity = is_array($quantity) ? array_sum($quantity) : $quantity;
                $price = is_array($price) ? array_sum($price) : $price;

                array_push($items, [
                    'price_data' => [
                        'currency' => $currency,
                        'product_data' => [
                            'name' => $itemModel->description,
                        ],
                        'unit_amount' => $price * 100, // Stripe Accepts Charges In Cents
                    ],
                    'quantity' => $quantity,
                ]);

                $metadata['item_' . ++$i] = 'Description: ' . $itemModel->description . ' - Price: ' . number_format($price, 2) . ' - Quantity: ' . $quantity . ' - SubTotal: ' . number_format( $quantity * $price, 2);
            }

            $params['line_items'] = $items;
            $params['payment_intent_data'] = [
                'metadata' => $metadata,
            ];
        }

        return $params;
    }
}