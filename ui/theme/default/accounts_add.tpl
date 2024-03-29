{extends file="$layouts_admin"}

{block name="content"}
    <div class="row">
        <div class="col-md-6">
            <div class="panel">
                <div class="panel-hdr">
                    <h2>{$_L['Add_New_Account']}</h2>

                </div>
                <div class="panel-container">
                    <div class="panel-content">

                        <form role="form" name="accadd" method="post" action="{$_url}accounts/add-post">
                            <div class="mb-3">
                                <label for="account">{$_L['Account Title']}*</label>
                                <input type="text" class="form-control" id="account" name="account">

                            </div>
                            <div class="mb-3">
                                <label for="description">{$_L['Description']}</label>
                                <input type="text" class="form-control" id="description" name="description">
                            </div>


                            {foreach $currencies as $currency}

                                <div class="mb-3">
                                    <label for="balance_{$currency->iso_code}">{$_L['Initial Balance']} [ {$currency->iso_code} ]</label>
                                    <input type="text" class="form-control amount" id="balance_{$currency->iso_code}" name="balance_{$currency->iso_code}" {if isset($currencies_all[$currency->iso_code])}
                                        data-a-sign="{$currencies_all[$currency->iso_code]['symbol']}" data-a-sep="{$currencies_all[$currency->iso_code]['thousands_separator']}" data-a-dec="{$currencies_all[$currency->iso_code]['decimal_mark']}" {if ($currencies_all[$currency->iso_code]['symbol_first'] == true)} data-p-sign="p" {else} data-p-sign="s" {/if}
                                    {/if} data-d-group="3">
                                </div>

                            {/foreach}



                            <div class="mb-3">
                                <label for="account_number">{$_L['Account Number']}</label>
                                <input type="text" class="form-control" id="account_number" name="account_number">
                            </div>

                            <div class="mb-3">
                                <label for="contact_person">{$_L['Contact Person']}</label>
                                <input type="text" class="form-control" id="contact_person" name="contact_person">
                            </div>

                            <div class="mb-3">
                                <label for="contact_phone">{$_L['Phone']}</label>
                                <input type="text" class="form-control" id="contact_phone" name="contact_phone">
                            </div>

                            <div class="mb-3">
                                <label for="ib_url">{$_L['Internet Banking URL']}</label>
                                <input type="text" class="form-control" id="ib_url" name="ib_url">
                            </div>

                            <div class="mb-3">
                                <label for="owner_id">{$_L['Owner']}</label>
                                <select class="form-control" name="owner_id" id="owner_id">
                                    {foreach $owners as $owner}
                                        <option value="{$owner->id}" {if $owner->id == $user->id}selected{/if} >{$owner->fullname}</option>
                                    {/foreach}
                                </select>
                            </div>



                            <button type="submit" class="btn btn-primary">{$_L['Save']}</button>
                        </form>

                    </div>
                </div>
            </div>



        </div>



    </div>
{/block}

{block name='script'}
    <script>
        jQuery(document).ready(function() {



            $('.amount').autoNumeric('init',{

                vMin: '-9999999999999.99'

            });


        });

    </script>
{/block}
