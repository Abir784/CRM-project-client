<?php
/* Smarty version 3.1.39, created on 2021-11-29 13:12:45
  from '/Users/razib/Documents/valet/business-suite/apps/wcsuite/views/x_customers.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a5181df0f3a8_26233503',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd5561349d1d3713c7d0e273204a0632ce8fda4d9' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/wcsuite/views/x_customers.tpl',
      1 => 1637779260,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a5181df0f3a8_26233503 (Smarty_Internal_Template $_smarty_tpl) {
?><table class="table table-bordered table-hover" id="clx_datatable">
    <thead>
    <tr>
        <th>#</th>
        <th>Customer</th>
        <th>Email</th>
        <th>
            Total Spent
        </th>
        <th>Created at</th>
        <th class="text-end" width="120px;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
    </tr>
    </thead>
    <tbody>

    <?php if ($_smarty_tpl->tpl_vars['customers']->value) {?>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['customers']->value, 'customer');
$_smarty_tpl->tpl_vars['customer']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['customer']->value) {
$_smarty_tpl->tpl_vars['customer']->do_else = false;
?>
            <tr>
                <td  data-value="<?php echo $_smarty_tpl->tpl_vars['customer']->value->id;?>
"> <?php echo $_smarty_tpl->tpl_vars['customer']->value->id;?>
 </td>
                <td> <?php echo $_smarty_tpl->tpl_vars['customer']->value->first_name;?>
 <?php echo $_smarty_tpl->tpl_vars['customer']->value->last_name;?>
 </td>
                <td> <?php echo $_smarty_tpl->tpl_vars['customer']->value->email;?>
 </td>
                <td class="amount" data-a-sign="<?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
"><?php echo $_smarty_tpl->tpl_vars['customer']->value->total_spent;?>
</td>
                <td data-value="<?php echo strtotime($_smarty_tpl->tpl_vars['customer']->value->date_created);?>
"><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['customer']->value->date_created));?>
</td>

                <td class="text-end">
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
wcsuite/app/view-customer/<?php echo $_smarty_tpl->tpl_vars['customer']->value->id;?>
" class="btn btn-primary">View customer</a>
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
