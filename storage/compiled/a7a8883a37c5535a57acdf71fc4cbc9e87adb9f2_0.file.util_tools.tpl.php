<?php
/* Smarty version 3.1.39, created on 2022-01-04 16:39:22
  from '/home/worlsxzo/public_html/ui/theme/default/util_tools.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d4783a9b2358_55667070',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a7a8883a37c5535a57acdf71fc4cbc9e87adb9f2' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/util_tools.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d4783a9b2358_55667070 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_52543869861d4783a9ad771_58497195', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_75840034561d4783a9b1354_22882778', 'script');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_52543869861d4783a9ad771_58497195 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_52543869861d4783a9ad771_58497195',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<div class="row">

    <div class="col-md-6">



        <div class="panel">
            <div class="panel-container">
                <div class="panel-content">
                    <h4>Data Import</h4>
                    <hr>
                    <form action="" method="post" id="dataImport">
                        <div class="mb-3">
                            <label for="importFrom">From</label>
                            <select id="importFrom" class="form-control" name="importFrom">
                                <option value="">Select...</option>
                                <option value="Salesforce">Salesforce</option>
                                <option value="WHMCS">WHMCS</option>
                                <option value="HostBill">HostBill</option>
                                <option value="custom">Custom</option>
                                <option value="iBilling">iBilling</option>
                            </select>
                        </div>

                        <div class="mb-3" id="sectionFromUrl">
                            <label for="fromUrl">URL</label>
                            <input type="text" class="form-control" name="fromUrl" id="fromUrl" value="<?php echo inSession('fromUrl');?>
">
                        </div>

                        <div class="mb-3" id="sectionAPIKey">
                            <label for="apiKey">API Key</label>
                            <input type="text" class="form-control" name="apiKey" id="apiKey" value="<?php echo inSession('apiKey');?>
">
                        </div>

                        <div class="mb-3" id="sectionImportItems">
                            <label for="cid">Import</label>




                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="appConfig" value="yes">
                                    Configurations
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="currencies" value="yes">
                                    Currencies
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="customers" value="yes">
                                    Customers
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="groups" value="yes">
                                    Groups
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="companies" value="yes">
                                    Companies
                                </label>
                            </div>



                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="items" value="yes" >
                                    Products & Services
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="invoices" value="yes" >
                                    Invoices
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="invoice_items" value="yes" >
                                    Invoice Items
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="quotes" value="yes" >
                                    Quote
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="quote_items" value="yes" >
                                    Quote Items
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="accounts" value="yes" >
                                    Bank Accounts
                                </label>
                            </div>

                            <div class="checkbox">
                                <label>
                                    <input type="checkbox" class="i-checks" name="transactions" value="yes" >
                                    Transactions
                                </label>
                            </div>

                        </div>

                        <div class="mb-3">
                            <button type="submit" id="dataImportContinue" class="btn btn-primary" disabled="disabled">Import</button>
                        </div>
                    </form>
                </div>
            </div>

        </div>


        <div class="panel">
            <div class="panel-container">
                <div class="panel-content">
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
util/clear-financial-data-cache" class="btn btn-primary">Clear Financial Data Cache</a>
                </div>

            </div>
        </div>

</div>

    <div class="col-md-6">
        <div class="panel">
            <div class="panel-container">
                <div class="panel-content">
                    <h2>Response</h2>
                    <hr>
                    <textarea class="form-control" rows="15" id="response"></textarea>
                </div>

            </div>
        </div>
    </div>

</div>

<?php
}
}
/* {/block "content"} */
/* {block 'script'} */
class Block_75840034561d4783a9b1354_22882778 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_75840034561d4783a9b1354_22882778',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
>

        $(function () {

            var $importFrom = $("#importFrom");

            var $sectionFromUrl = $("#sectionFromUrl");
            var $apiKey = $("#apiKey");
            var $sectionAPIKey = $("#sectionAPIKey");

            var $dataImportContinue = $("#dataImportContinue");

            var $dataImport = $("#dataImport");

            var $response = $("#response");



            $sectionFromUrl.hide();
            $sectionAPIKey.hide();



            var $sectionImportItems = $("#sectionImportItems");

            $sectionImportItems.hide();

            $importFrom.on("change",function (e) {

                var valImportFrom = $importFrom.val();

                switch (valImportFrom){

                    case 'iBilling':

                        $sectionFromUrl.show();
                        $sectionAPIKey.show();
                        $sectionImportItems.show();

                        $dataImportContinue.prop('disabled', false);


                        break;


                    default:

                        $sectionFromUrl.hide();

                        $dataImportContinue.prop('disabled', true);

                        break;

                }

            });


            $dataImportContinue.click(function (e) {

                e.preventDefault();

               // $response.html('Importing.......'+"\n");
                $response.html('Importing.......'+"\n" + 'Please do not close your browser..........'+"\n");

                $dataImportContinue.prop('disabled', true);

                $.post(base_url + 'util/import/', $dataImport.serialize())
                    .done(function (data) {

                        $response.html(data);

                        $dataImportContinue.prop('disabled', false);

                    });

            })


        });

    <?php echo '</script'; ?>
>


<?php
}
}
/* {/block 'script'} */
}
