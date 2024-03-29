<div class="mx-auto">
    <div class="panel mb-0 rounded-0">
        <div class="panel-hdr">
            <h2>{$_L['Edit Custom Field']}</h2>
        </div>
        <div class="panel-container">
            <div class="panel-content">
                <div class="row">
                    <div class="col-md-12">
                        <form role="form" name="edit_form" id="edit_form" method="post" action="{$_url}settings/customfields-post">
                            <div class="mb-3">
                                <label for="fieldname">{$_L['Field Name']}</label>
                                <input type="text" class="form-control" id="fieldname" name="fieldname" value="{$d['fieldname']}">
                            </div>

                            <div class="mb-3">
                                <label for="fieldtype">{$_L['Field Type']}</label>
                                <select class="form-control" name="fieldtype" id="fieldtype">

                                    <option value="text" {if ($d['fieldtype']) eq 'text'}selected=""{/if}>{$_L['Text Box']}</option>
                                    <option value="password" {if ($d['fieldtype']) eq 'password'}selected=""{/if}>{$_L['Password']}</option>
                                    <option value="dropdown" {if ($d['fieldtype']) eq 'dropdown'}selected=""{/if}>{$_L['Drop Down']}</option>
                                    <option value="textarea" {if ($d['fieldtype']) eq 'textarea'}selected=""{/if}>{$_L['Text Area']}</option>

                                </select>
                            </div>
                            <div class="mb-3">
                                <label for="description">{$_L['Description']}</label>
                                <input type="text" class="form-control" id="description" name="description" value="{$d['description']}">
                                <span class="help-block">{$_L['Optional Description help']}</span>
                            </div>
                            <div class="mb-3">
                                <label for="validation">{$_L['Validation']}</label>
                                <input type="text" class="form-control" id="validation" name="validation" value="{$d['regexpr']}">
                                <span class="help-block">{$_L['Regular Expression Validation']}</span>
                            </div>
                            <div class="mb-3">
                                <label for="options">{$_L['Select Options']}</label>
                                <input type="text" class="form-control" id="options" name="options" value="{$d['fieldoptions']}">
                                <span class="help-block">{$_L['Comma Separated List']}</span>
                            </div>

                            <div class="mb-3">
                                <label for="options">{$_L['Show in View Invoice']}</label>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="showinvoice" id="showInvoiceYes" value="Yes" {if ($d['showinvoice']) eq 'Yes'} checked{/if}>
                                        {$_L['Yes']}
                                    </label>
                                </div>
                                <div class="radio">
                                    <label>
                                        <input type="radio" name="showinvoice" id="showInvoiceNo" value="No" {if ($d['showinvoice']) eq 'No'} checked{/if}>
                                        {$_L['No']}
                                    </label>
                                </div>

                            </div>

                            <input type="hidden" name="id" value="{$d['id']}">

                            <div class="mb-3">
                                <button type="button" class="btn btn-primary" id="edit_submit"><i class="fal fa-check"></i> {$_L['Submit']}</button>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
