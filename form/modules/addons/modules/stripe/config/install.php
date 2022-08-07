<?php

$config = [
    'id' => 'stripe',
    'name'=> 'Stripe',
    'class' => 'app\modules\addons\modules\stripe\Module',
    'description'=> [
        'en-US' => 'Accept payments from your users via Stripe using Easy Forms.',
        'es-ES' => 'Recibe pagos de tus usuarios vía Stripe usando Easy Forms.',
    ],
    'version' => '1.6',
];

return $config;
