<?php
/* Smarty version 3.1.39, created on 2022-01-02 15:05:36
  from '/home/worlsxzo/public_html/ui/theme/default/transactions_bill.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d1bf40cd6956_07182181',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '50c04c0bf02fdc683ca4729ed6ab990d80babb6e' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/transactions_bill.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d1bf40cd6956_07182181 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_140192580961d1bf40cadc01_24086419', "head");
?>





<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_146949456261d1bf40caf4b0_81848334', "content");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_108422697161d1bf40cd3de1_94378241', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_140192580961d1bf40cadc01_24086419 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_140192580961d1bf40cadc01_24086419',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <style>
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #F7F9FC;
        }

        .h2, h2 {
            font-size: 1.25rem;
        }
        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            font-family: inherit;
            font-weight: 600;
            line-height: 1.5;
            margin-bottom: .5rem;
            color: #32325d;
        }
        .text-info{
            color: #6772E5!important;
        }
        .text-success{
            color: #2CCE89!important;}
        .text-danger{
            color: #F6365B!important;
        }

    </style>


<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_146949456261d1bf40caf4b0_81848334 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_146949456261d1bf40caf4b0_81848334',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div id="panel-12" class="panel">
        <div class="panel-hdr">
            <h2>
                <?php echo $_smarty_tpl->tpl_vars['_L']->value['Bills'];?>
 <span class="fw-300"><i></i></span>
            </h2>
            <div class="panel-toolbar">
                <button class="btn btn-panel" data-action="panel-collapse" data-bs-toggle="tooltip" data-offset="0,10" data-original-title="Collapse"></button>
                <button class="btn btn-panel" data-action="panel-fullscreen" data-bs-toggle="tooltip" data-offset="0,10" data-original-title="Fullscreen"></button>
            </div>
        </div>
        <div class="panel-container show">
            <div class="panel-content">
                <div class="row">
                    <div class="col-auto svg-icon svg-icon-primary">
                        <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                            <a class="nav-link"   href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
transactions/bills" aria-controls="v-pills-home" aria-selected="true">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <path d="M3.95709826,8.41510662 L11.47855,3.81866389 C11.7986624,3.62303967 12.2013376,3.62303967 12.52145,3.81866389 L20.0429,8.41510557 C20.6374094,8.77841684 21,9.42493654 21,10.1216692 L21,19.0000642 C21,20.1046337 20.1045695,21.0000642 19,21.0000642 L4.99998155,21.0000673 C3.89541205,21.0000673 2.99998155,20.1046368 2.99998155,19.0000673 L2.99999828,10.1216672 C2.99999935,9.42493561 3.36258984,8.77841732 3.95709826,8.41510662 Z M10,13 C9.44771525,13 9,13.4477153 9,14 L9,17 C9,17.5522847 9.44771525,18 10,18 L14,18 C14.5522847,18 15,17.5522847 15,17 L15,14 C15,13.4477153 14.5522847,13 14,13 L10,13 Z" fill="#000000"/>
                                    </g>
                                </svg>
                                <span class="hidden-sm-down ml-1"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Summary'];?>
</span>
                            </a>
                            <a class="nav-link"   href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
transactions/bills-all"aria-controls="v-pills-profile" aria-selected="false">
                                <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect x="0" y="0" width="24" height="24"/>
                                        <rect fill="#000000" x="4" y="4" width="7" height="7" rx="1.5"/>
                                        <path d="M5.5,13 L9.5,13 C10.3284271,13 11,13.6715729 11,14.5 L11,18.5 C11,19.3284271 10.3284271,20 9.5,20 L5.5,20 C4.67157288,20 4,19.3284271 4,18.5 L4,14.5 C4,13.6715729 4.67157288,13 5.5,13 Z M14.5,4 L18.5,4 C19.3284271,4 20,4.67157288 20,5.5 L20,9.5 C20,10.3284271 19.3284271,11 18.5,11 L14.5,11 C13.6715729,11 13,10.3284271 13,9.5 L13,5.5 C13,4.67157288 13.6715729,4 14.5,4 Z M14.5,13 L18.5,13 C19.3284271,13 20,13.6715729 20,14.5 L20,18.5 C20,19.3284271 19.3284271,20 18.5,20 L14.5,20 C13.6715729,20 13,19.3284271 13,18.5 L13,14.5 C13,13.6715729 13.6715729,13 14.5,13 Z" fill="#000000" opacity="0.3"/>
                                    </g>
                                </svg>
                                <span class="hidden-sm-down ml-1"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</span>
                            </a>


                            <a class="nav-link active"  href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
transactions/bill/" aria-controls="v-pills-messages" aria-selected="false">
                               <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" width="24px" height="24px" viewBox="0 0 24 24" version="1.1">
                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                        <rect fill="#000000" x="4" y="11" width="16" height="2" rx="1"/>
                                        <rect fill="#000000" opacity="0.3" transform="translate(12.000000, 12.000000) rotate(-270.000000) translate(-12.000000, -12.000000) " x="4" y="11" width="16" height="2" rx="1"/>
                                    </g>
                                </svg>

                                <span class="hidden-sm-down ml-1"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add a bill'];?>
</span>
                            </a>



                        </div>
                    </div>
                    <div class="col">
                        <div class="tab-content">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="alert alert-danger" id="emsg" style="display: none;">
                                        <span id="emsgbody"></span>
                                    </div>
                                    <form method="post" id="mainForm" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
transactions/bill-save">
                                        <div class="mb-3">
                                            <label for="inputTitle"><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Title'];?>
<span></label>
                                            <input class="form-control" name="title" required id="inputTitle" data-pristine-required-message="<?php echo $_smarty_tpl->tpl_vars['_L']->value['This field is required'];?>
" <?php if ($_smarty_tpl->tpl_vars['bill']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['bill']->value->title;?>
" <?php }?>>
                                        </div>
                                        <div class="row">
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label for="inputNextDate"><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Next Due Date'];?>
</span></label>
                                                    <input class="form-control" datepicker
                                                           data-date-format="yyyy-mm-dd" data-auto-close="true" required name="next_date" id="inputNextDate" data-pristine-required-message="<?php echo $_smarty_tpl->tpl_vars['_L']->value['This field is required'];?>
" <?php if ($_smarty_tpl->tpl_vars['bill']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['bill']->value->next_date;?>
" <?php }?>>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label for="inputRecurringType"><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Repeat Every'];?>
</span></label>
                                                    <select class="form-control" required name="recurring_type" id="inputRecurringType" data-pristine-required-message="<?php echo $_smarty_tpl->tpl_vars['_L']->value['This field is required'];?>
">
                                                        <option value="Monthly" <?php if ($_smarty_tpl->tpl_vars['bill']->value && $_smarty_tpl->tpl_vars['bill']->value->recurring_type == 'Monthly') {?> selected  <?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Monthly'];?>
</option>
                                                        <option value="Yearly" <?php if ($_smarty_tpl->tpl_vars['bill']->value && $_smarty_tpl->tpl_vars['bill']->value->recurring_type == 'Yearly') {?> selected  <?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Yearly'];?>
</option>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label for="currency"><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Currency'];?>
</span></label>
                                                    <select class="form-control" required name="currency" id="currency" data-pristine-required-message="<?php echo $_smarty_tpl->tpl_vars['_L']->value['This field is required'];?>
">
                                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['currencies']->value, 'currency');
$_smarty_tpl->tpl_vars['currency']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['currency']->value) {
$_smarty_tpl->tpl_vars['currency']->do_else = false;
?>
                                                            <option value="<?php echo $_smarty_tpl->tpl_vars['currency']->value['iso_code'];?>
" <?php if ($_smarty_tpl->tpl_vars['config']->value['home_currency'] == $_smarty_tpl->tpl_vars['currency']->value['iso_code']) {?>selected<?php }?>
                                                                    <?php if ((isset($_smarty_tpl->tpl_vars['currencies_all']->value[$_smarty_tpl->tpl_vars['currency']->value['iso_code']]))) {?>
                                                                        data-a-sign="<?php echo $_smarty_tpl->tpl_vars['currencies_all']->value[$_smarty_tpl->tpl_vars['currency']->value['iso_code']]['symbol'];?>
" data-a-sep="<?php echo $_smarty_tpl->tpl_vars['currencies_all']->value[$_smarty_tpl->tpl_vars['currency']->value['iso_code']]['thousands_separator'];?>
" data-a-dec="<?php echo $_smarty_tpl->tpl_vars['currencies_all']->value[$_smarty_tpl->tpl_vars['currency']->value['iso_code']]['decimal_mark'];?>
" <?php if (($_smarty_tpl->tpl_vars['currencies_all']->value[$_smarty_tpl->tpl_vars['currency']->value['iso_code']]['symbol_first'] == true)) {?> data-p-sign="p" <?php } else { ?> data-p-sign="s" <?php }?>
                                                                    <?php }?> <?php if ($_smarty_tpl->tpl_vars['bill']->value && $_smarty_tpl->tpl_vars['bill']->value->currency == $_smarty_tpl->tpl_vars['currency']->value['iso_code']) {?> selected  <?php }?>><?php echo $_smarty_tpl->tpl_vars['currency']->value['iso_code'];?>
</option>
                                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-3">
                                                <div class="mb-3">
                                                    <label for="amount"><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</label>
                                                    <input class="form-control" required name="amount" id="amount" data-pristine-required-message="<?php echo $_smarty_tpl->tpl_vars['_L']->value['This field is required'];?>
"  <?php if ($_smarty_tpl->tpl_vars['bill']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['bill']->value->net_amount;?>
" <?php }?>>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="row mt-3">
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['From Account'];?>
</span></label>
                                                    <select class="form-control" name="from_account_id">
                                                        <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['None'];?>
</option>
                                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['accounts']->value, 'account');
$_smarty_tpl->tpl_vars['account']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['account']->value) {
$_smarty_tpl->tpl_vars['account']->do_else = false;
?>
                                                            <option value="<?php echo $_smarty_tpl->tpl_vars['account']->value->id;?>
" <?php if ($_smarty_tpl->tpl_vars['bill']->value && $_smarty_tpl->tpl_vars['bill']->value->from_account_id == $_smarty_tpl->tpl_vars['account']->value->id) {?> selected  <?php }?>><?php echo $_smarty_tpl->tpl_vars['account']->value->account;?>
</option>
                                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                                    </select>
                                                </div>
                                            </div>
                                            <div class="col-md-6">
                                                <div class="mb-3">
                                                    <label><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payee'];?>
</span></label>
                                                    <select class="form-control" name="contact_id" id="contact_id">
                                                        <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['None'];?>
</option>
                                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['contacts']->value, 'contact');
$_smarty_tpl->tpl_vars['contact']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['contact']->value) {
$_smarty_tpl->tpl_vars['contact']->do_else = false;
?>
                                                            <option value="<?php echo $_smarty_tpl->tpl_vars['contact']->value->id;?>
" <?php if ($_smarty_tpl->tpl_vars['bill']->value && $_smarty_tpl->tpl_vars['bill']->value->contact_id == $_smarty_tpl->tpl_vars['contact']->value->id) {?> selected  <?php }?>><?php echo $_smarty_tpl->tpl_vars['contact']->value->account;?>
</option>
                                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                                    </select>
                                                </div>
                                            </div>
                                        </div>

                                        <div class="mb-3 mt-3">
                                            <label><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Category'];?>
</span></label>
                                            <select class="form-control" name="category_id" id="category_id">
                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['categories']->value, 'category');
$_smarty_tpl->tpl_vars['category']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['category']->value) {
$_smarty_tpl->tpl_vars['category']->do_else = false;
?>
                                                    <option value="<?php echo $_smarty_tpl->tpl_vars['category']->value->id;?>
" <?php if ($_smarty_tpl->tpl_vars['bill']->value && $_smarty_tpl->tpl_vars['bill']->value->category_id == $_smarty_tpl->tpl_vars['category']->value->id) {?> selected  <?php }?>><?php echo $_smarty_tpl->tpl_vars['category']->value->name;?>
</option>
                                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                            </select>
                                        </div>

                                        <div class="mb-3">
                                            <label for="website"><span class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Website'];?>
</span></label>
                                            <input class="form-control" name="website" id="website" <?php if ($_smarty_tpl->tpl_vars['bill']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['bill']->value->website;?>
" <?php }?>>
                                        </div>


                                        <div class="mb-3">

                                            <?php if ($_smarty_tpl->tpl_vars['bill']->value) {?>
                                                <input type="hidden" name="bill_id" value="<?php echo $_smarty_tpl->tpl_vars['bill']->value->id;?>
">
                                            <?php } else { ?>
                                                <input type="hidden" name="bill_id" value="">
                                            <?php }?>

                                            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
                                        </div>

                                    </form>


                                </div>








                            </div>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>







<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_108422697161d1bf40cd3de1_94378241 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_108422697161d1bf40cd3de1_94378241',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <?php echo '<script'; ?>
>


        $(function () {

            var form = document.getElementById("mainForm");
            var pristine = new Pristine(form);

            var $currency = $('#currency');
            var $amount = $("#amount");


            function clxAmountSingleFieldAutoNumeric(amountId) {
                $(amountId).autoNumeric('destroy');
                $(amountId).autoNumeric('init', {
                    aSign: $currency.find(':selected').data('a-sign'),
                    dGroup: <?php echo $_smarty_tpl->tpl_vars['config']->value['thousand_separator_placement'];?>
,
                    aPad: <?php echo $_smarty_tpl->tpl_vars['config']->value['currency_decimal_digits'];?>
,
                    pSign: $currency.find(':selected').data('p-sign'),
                    aDec: $currency.find(':selected').data('a-dec'),
                    aSep: $currency.find(':selected').data('a-sep'),
                    vMax: '9999999999999999.00',
                    vMin: '-9999999999999999.00'

                });
            }

            $currency.on('change',function (event) {
                clxAmountSingleFieldAutoNumeric('#amount');
            });



            clxAmountSingleFieldAutoNumeric('#amount');

            function ib_autonumeric() {
                $('.amount').autoNumeric('init', {
                    vMax: '9999999999999999.00',
                    vMin: '-9999999999999999.00'

                });

            }


            ib_autonumeric();

            $('#contact_id').select2({

            });

            $('#category_id').select2({

            });

            $("#mainForm").submit(function (e) {

                e.preventDefault();

                if(pristine.validate())
                {
                    $('#clx_form_box').block({ message:block_msg });

                    $.post('<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
transactions/bill-save', $( "#mainForm" ).serialize())
                        .done(function (data) {
                            if ($.isNumeric(data)) {

                                window.location = '<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
transactions/bills/';
                            }
                            else {
                                $('#clx_form_box').unblock();
                                var body = $("html, body");
                                body.animate({ scrollTop:0 }, '1000', 'swing');
                                $("#emsgbody").html(data);
                                $("#emsg").show("slow");
                            }
                        });
                }

            });

        });

    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
