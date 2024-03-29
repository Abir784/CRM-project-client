{extends file="$layouts_admin"}

{block name="content"}
    <div class="row">
        <div class="col-md-{if $extra_panel eq ''}12{else}6{/if}">
            <div class="panel">
                <div class="panel-hdr">
                    <h2>{$d['name']}</h2>

                </div>
                <div class="panel-container" id="ibox_form">
                    <div class="panel-content">
                        <div class="alert alert-danger" id="emsg">
                            <span id="emsgbody"></span>
                        </div>
                        <form class="form-horizontal" method="post" id="pg-conf" role="form">

                            {if (isset($icon_url)) && ($icon_url) neq ''}
                                <div class="mb-3">
                                    <label for="name" class="col-sm-3 control-label">&nbsp;</label>
                                    <div class="col-sm-9">
                                        <img style="max-height: 64px;" src="{$icon_url}">
                                    </div>
                                </div>
                            {/if}


                            <div class="mb-3">
                                <label for="name">{$_L['Name']}</label>
                                <input type="text" class="form-control" id="name" name="name" value="{$d['name']}">
                            </div>

                            {*<div class="mb-3">*}
                            {*<label for="settings" class="col-sm-3 control-label">{$_L['Settings Name']}</label>*}
                            {*<div class="col-sm-9">*}
                            {*<input type="text" class="form-control" id="settings" name="settings" value="{$d['settings']}" {if $d->name eq 'Braintree'} disabled {/if}>*}
                            {*</div>*}
                            {*</div>*}

                            <div class="mb-3">
                                <label for="value">{$label['value']}</label>
                                {$input['value']}
                                {if ($help_txt['value']) neq ''}
                                    <span class="help-block">{$help_txt['value']}</span>
                                {/if}
                            </div>





                            {if (isset($label['c1'])) && ($label['c1']) neq ''}
                                <div class="mb-3">
                                    <label for="c1">{$label['c1']}</label>
                                    {$input['c1']}
                                    {if ($help_txt['c1']) neq ''}
                                        <span class="help-block">{$help_txt['c1']}</span>
                                    {/if}
                                </div>
                            {/if}

                            {if (isset($label['c2'])) && ($label['c2']) neq ''}

                                <div class="mb-3">
                                    <label for="c2">{$label['c2']}</label>
                                    {$input['c2']}
                                    {if ($help_txt['c2']) neq ''}
                                        <span class="help-block">{$help_txt['c2']}</span>
                                    {/if}
                                </div>

                            {/if}


                            {if (isset($label['c3'])) && ($label['c3']) neq ''}

                                <div class="mb-3">
                                    <label for="c3">{$label['c3']}</label>
                                    {$input['c3']}
                                    {if ($help_txt['c3']) neq ''}
                                        <span class="help-block">{$help_txt['c3']}</span>
                                    {/if}
                                </div>

                            {/if}



                            {if (isset($label['c4'])) && ($label['c4']) neq ''}

                                <div class="mb-3">
                                    <label for="c4">{$label['c4']}</label>
                                    {$input['c4']}
                                    {if ($help_txt['c4']) neq ''}
                                        <span class="help-block">{$help_txt['c4']}</span>
                                    {/if}
                                </div>

                            {/if}



                            {if (isset($label['c5'])) && ($label['c5']) neq ''}
                                <div class="mb-3">
                                    <label for="c5" >{$label['c5']}</label>
                                    {$input['c5']}
                                    {if ($help_txt['c5']) neq ''}
                                        <span class="help-block">{$help_txt['c5']}</span>
                                    {/if}
                                </div>
                            {/if}


                            <div class="mb-3">
                                <label for="status" >{$_L['Status']}</label>
                                <select name="status" id="status" class="form-control">
                                    <option value="Active" {if $d['status'] eq 'Active'}selected="selected" {/if}>{$_L['Active']}</option>
                                    <option value="Inactive" {if $d['status'] eq 'Inactive'}selected="selected" {/if}>{$_L['Inactive']}</option>

                                </select>


                            </div>


                            {if (isset($label['mode'])) && ($label['mode'])}

                                <div class="mb-3">
                                    <label for="mode">{$_L['Mode']}</label>
                                    <select name="mode" id="mode" class="form-control">
                                        <option value="Live" {if $d['mode'] eq 'Live'}selected="selected" {/if}>{$_L['Live']}</option>
                                        <option value="Sandbox" {if $d['mode'] eq 'Sandbox'}selected="selected" {/if}>{$_L['Sandbox']}</option>

                                    </select>

                                    {if ($help_txt['mode']) neq ''}
                                        <span class="help-block">{$help_txt['mode']}</span>
                                    {/if}
                                </div>

                            {/if}



                            <div class="mb-3">
                                <div>
                                    <input type="hidden" name="pgid" id="pgid" value="{$d['id']}">
                                    <button type="submit" id="submit" class="btn btn-primary"> {$_L['Submit']}</button>
                                    | {$_L['Or']} <a href="{$_url}settings/pg/"> {$_L['Back To The List']}</a>
                                </div>
                            </div>
                        </form>
                    </div>



                </div>
            </div>

        </div>


        {if $extra_panel neq ''}
            <div class="col-md-6">
                {$extra_panel}
            </div>
        {/if}

    </div>
{/block}

{block name="script"}
    <script>
        {literal}
        $(document).ready(function () {

            $("#emsg").hide();
            $("#submit").click(function (e) {
                e.preventDefault();
                $('#ibox_form').block({ message: null });
                var _url = $("#_url").val();
                $.post(_url + 'settings/pg-post/', {


                    name: $('#name').val(),
                    settings: $('#settings').val(),
                    pgid: $('#pgid').val(),
                    value: $('#value').val(),
                    status: $('#status').val(),
                    c1: $('#c1').val(),
                    c2: $('#c2').val(),
                    c3: $('#c3').val(),
                    c4: $('#c4').val(),
                    c5: $('#c5').val(),
                    mode: $('#mode').val()
                })
                    .done(function (data) {

                        setTimeout(function () {
                            var sbutton = $("#submit");
                            var _url = $("#_url").val();
                            if ($.isNumeric(data)) {

                                location.reload();
                            }
                            else {
                                $('#ibox_form').unblock();
                                var body = $("html, body");
                                body.animate({scrollTop:0}, '1000', 'swing');
                                $("#emsgbody").html(data);
                                $("#emsg").show("slow");
                            }
                        }, 2000);
                    });
            });
        });
        {/literal}
    </script>
{/block}
