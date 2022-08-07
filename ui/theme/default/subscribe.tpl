{extends file="layouts/paper.tpl"}

{block name="content"}

    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h2 class="mb-3">{$plan->title}</h2>

                        <div class="mb-3">
                            {$plan->description}
                        </div>

                        {if !empty($plan->features)}
                            {foreach json_decode($plan->features) as $feature}
                                <div class="mb-3">

                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg> {$feature}
                                </div>
                            {/foreach}
                        {/if}

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="mb-3">{formatCurrency($plan->price,$config['home_currency'])}</h2>
                            <div>
                                {if $user}
                                    {if $plan->stripe_pricing_id}
                                        <form action="{$base_url}subscriptions/stripe-create-checkout-session" method="POST">

                                            <input type="hidden" name="priceId" value="{$plan->stripe_pricing_id}" />
                                            <button type="submit" class="btn btn-primary">{__('Subscribe')}</button>
                                        </form>
                                    {/if}
                                {else}
                                    <div class="mb-3">
                                        {__('Login or Register to Subscribe')}
                                    </div>
                                    <a href="{$base_url}client/login&then=subscriptions/subscribe/{$plan->slug}" class="btn btn-primary">{$_L['Login']}</a>
                                    <a href="{$base_url}client/register&then=subscriptions/subscribe/{$plan->slug}" class="btn btn-primary">{$_L['Register']}</a>
                                {/if}
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

{/block}

{block name=script}

    <script>

    </script>


{/block}
