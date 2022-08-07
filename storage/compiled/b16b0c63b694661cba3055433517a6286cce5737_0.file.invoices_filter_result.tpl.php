<?php
/* Smarty version 3.1.39, created on 2022-01-04 16:52:43
  from '/home/worlsxzo/public_html/ui/theme/default/invoices_filter_result.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d47b5bc9efa1_80125642',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b16b0c63b694661cba3055433517a6286cce5737' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/invoices_filter_result.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d47b5bc9efa1_80125642 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="row mb-3">
    <div class="col">
        <h3><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoices'];?>
</h3>
    </div>
    <?php if ($_smarty_tpl->tpl_vars['has_delete_access']->value) {?>
        <div class="col text-end">
            <form onSubmit="if(!confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
')){ return false; }" method="post" action="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
invoices/mass-delete">

                <input type="hidden" name="invoice_ids" value="<?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['invoices']->value, 'invoice');
$_smarty_tpl->tpl_vars['invoice']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['invoice']->value) {
$_smarty_tpl->tpl_vars['invoice']->do_else = false;
echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
,<?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>">
                <button id="delete_all" class="btn btn-danger"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</button>

            </form>
        </div>
    <?php }?>
</div>

<div class="table-responsive">
    <table id="clx_datatable" class="table table-striped">
        <thead style="background: #f0f2ff">
        <tr>
            <th>#</th>
            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</th>
            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</th>
            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Date'];?>
</th>
            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Due Date'];?>
</th>
            <th>
                <?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>

            </th>
            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>
            <th class="text-end" width="140px;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
        </tr>
        </thead>
        <tbody>

        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['invoices']->value, 'invoice');
$_smarty_tpl->tpl_vars['invoice']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['invoice']->value) {
$_smarty_tpl->tpl_vars['invoice']->do_else = false;
?>
            <tr>
                <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/view/<?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
/"><?php echo $_smarty_tpl->tpl_vars['invoice']->value->invoicenum;
if ($_smarty_tpl->tpl_vars['invoice']->value->cn != '') {?> <?php echo $_smarty_tpl->tpl_vars['invoice']->value->cn;?>
 <?php } else { ?> <?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
 <?php }?></a> </td>
                <td>
                    <?php if ((isset($_smarty_tpl->tpl_vars['customers']->value[$_smarty_tpl->tpl_vars['invoice']->value->id]))) {?>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/view/<?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
/">
                            <strong>
                                <?php echo $_smarty_tpl->tpl_vars['invoice']->value->account;?>

                                <?php if ($_smarty_tpl->tpl_vars['customers']->value[$_smarty_tpl->tpl_vars['invoice']->value->userid]->company != '') {?>
                                    <br>  <?php echo $_smarty_tpl->tpl_vars['customers']->value[$_smarty_tpl->tpl_vars['invoice']->value->userid]->company;?>

                                <?php }?>
                            </strong>


                        </a>
                    <?php } elseif (!empty($_smarty_tpl->tpl_vars['invoice']->value->account)) {?>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/view/<?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
/">
                            <strong>
                                <?php echo $_smarty_tpl->tpl_vars['invoice']->value->account;?>

                            </strong>

                        </a>
                    <?php }?>
                </td>
                <td><?php echo formatCurrency($_smarty_tpl->tpl_vars['invoice']->value->total,$_smarty_tpl->tpl_vars['invoice']->value->currency_iso_code);?>
</td>
                <td data-value="<?php echo strtotime($_smarty_tpl->tpl_vars['invoice']->value->date);?>
"><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['invoice']->value->date));?>
</td>
                <td data-value="<?php echo strtotime($_smarty_tpl->tpl_vars['invoice']->value->duedate);?>
"><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['invoice']->value->duedate));?>
</td>
                <td>

                    <?php if ($_smarty_tpl->tpl_vars['invoice']->value->status == 'Unpaid') {?>
                        <span class="badge bg-danger"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['invoice']->value->status);?>
</span>
                    <?php } elseif ($_smarty_tpl->tpl_vars['invoice']->value->status == 'Paid') {?>
                        <span class="badge bg-primary"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['invoice']->value->status);?>
</span>
                    <?php } elseif ($_smarty_tpl->tpl_vars['invoice']->value->status == 'Partially Paid') {?>
                        <span class="badge bg-warning"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['invoice']->value->status);?>
</span>
                    <?php } elseif ($_smarty_tpl->tpl_vars['invoice']->value->status == 'Cancelled') {?>
                        <span class="badge bg-secondary"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['invoice']->value->status);?>
</span>
                    <?php } else { ?>
                        <?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['invoice']->value->status);?>

                    <?php }?>



                </td>
                <td>
                    <?php if ($_smarty_tpl->tpl_vars['invoice']->value->r == '0') {?>
                        <span class="badge bg-success"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Onetime'];?>
</span>
                    <?php } else { ?>
                        <span class="badge bg-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Recurring'];?>
</span>
                    <?php }?>
                </td>
                <td class="text-end">


                    <div class="btn-group">
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/view/<?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
/" class="btn btn-primary btn-icon" data-bs-toggle="tooltip" data-placement="top" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['View'];?>
"><i class="fal fa-file-alt"></i></a>

                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/clone/<?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
/" class="btn btn-success btn-icon" data-bs-toggle="tooltip" data-placement="top" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Clone'];?>
"><i class="fal fa-copy"></i></a>


                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/edit/<?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
/" class="btn btn-info btn-icon" data-bs-toggle="tooltip" data-placement="top" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
"><i class="fal fa-file-edit"></i></a>

                        <?php if ($_smarty_tpl->tpl_vars['invoice']->value['r'] != '0') {?>

                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/stop_recurring/<?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
/" class="btn btn-info btn-icon" data-bs-toggle="tooltip" data-placement="top" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Stop Recurring'];?>
"><i class="fal fa-stop"></i></a>

                        <?php }?>

                        <a href="#" class="btn btn-danger btn-icon cdelete" id="iid<?php echo $_smarty_tpl->tpl_vars['invoice']->value->id;?>
" data-bs-toggle="tooltip" data-placement="top" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
"><i class="fal fa-trash-alt"></i></a>
                    </div>


                </td>
            </tr>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

        </tbody>

    </table>
</div>
<?php }
}
