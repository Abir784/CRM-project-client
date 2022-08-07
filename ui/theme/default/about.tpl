{extends file="$layouts_admin"}

{block name="content"}

    <div class="row">
        <div class="col-md-6">
            <div class="panel" id="ib_box">
                <div class="panel-hdr">
                    <h2>{__('Build')}</h2>
                </div>

                <div class="panel-container">
                    <div class="panel-content" id="ibox_update">

                        <div class="mb-3">
                            <h1 class="display-3 text-center">{$config['build']}</h1>
                        </div>


                        <a href="{$_url}updating/" class="cls_update btn btn-danger">{$_L['Update']}</a>


                    </div>
                </div>

            </div>

            {if $app_stage eq 'Demo'}

                <input type="hidden" name="purchase_code" id="purchase_code" value="">

            {else}

                <div class="panel" id="ib_box">

                    <div class="panel-hdr">
                        <h2>{__('License Key')}</h2>
                    </div>

                    <div class="panel-container">
                        <div class="panel-content">


                            <form role="form" name="accadd" method="post" action="{$_url}settings/activate_license_post/">





                                <div class="mb-3">

                                    <input type="text" required class="form-control" id="purchase_key" name="purchase_key" value="{$config['purchase_key']}">

                                    <span class="help-block">You will find your Purchase Key in your <a target="_blank" href="https://www.cloudonex.com/licenses">Profile - Downloads</a> Section
                                <br>
                                    In this format - XXXX-XXXX-XXXX-XXXX
                                </span>

                                </div>

                                <div class="mb-3">
                                    <button type="submit" id="btn_save" class="btn btn-primary"><i class="fal fa-check"></i> {$_L['Save']}</button>
                                </div>
                            </form>




                        </div>
                    </div>

                </div>

            {/if}



        </div>





    </div>

{/block}

{block name="script"}

{/block}
