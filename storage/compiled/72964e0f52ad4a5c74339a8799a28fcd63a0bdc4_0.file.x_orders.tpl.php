<?php
/* Smarty version 3.1.39, created on 2021-11-29 13:12:47
  from '/Users/razib/Documents/valet/business-suite/apps/wcsuite/views/x_orders.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a5181f2b67c4_01913439',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '72964e0f52ad4a5c74339a8799a28fcd63a0bdc4' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/wcsuite/views/x_orders.tpl',
      1 => 1637779260,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a5181f2b67c4_01913439 (Smarty_Internal_Template $_smarty_tpl) {
?><table class="table table-bordered table-hover" id="clx_datatable">
    <thead>
    <tr>
        <th>#</th>
        <th>Order #</th>
        <th>Customer #</th>
        <th>Status</th>
        <th>Total</th>
        <th>
            Payment Method
        </th>
        <th>Date Created</th>
        <th class="text-end" width="120px;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
    </tr>
    </thead>
    <tbody>

    <?php if ($_smarty_tpl->tpl_vars['orders']->value) {?>

        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['orders']->value, 'order');
$_smarty_tpl->tpl_vars['order']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['order']->value) {
$_smarty_tpl->tpl_vars['order']->do_else = false;
?>
            <tr>
                <td  data-value="<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
"> <?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
 </td>
                <td> <?php echo $_smarty_tpl->tpl_vars['order']->value->number;?>
 </td>
                <td> <?php echo $_smarty_tpl->tpl_vars['order']->value->billing->first_name;?>
 <?php echo $_smarty_tpl->tpl_vars['order']->value->billing->last_name;?>
 </td>
                <td> <?php echo $_smarty_tpl->tpl_vars['order']->value->status;?>
 </td>
                <td class="amount" data-a-sign="<?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['order']->value->total;?>
</td>
                <td> <?php echo $_smarty_tpl->tpl_vars['order']->value->payment_method_title;?>
 </td>
                <td data-value="<?php echo strtotime($_smarty_tpl->tpl_vars['order']->value->date_created);?>
"><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['order']->value->date_created));?>
</td>

                <td class="text-end">

                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
wcsuite/app/view-order/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
" class="btn btn-primary">View</a>

                </td>
            </tr>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    <?php }?>

    </tbody>


</table>
<?php }
}
