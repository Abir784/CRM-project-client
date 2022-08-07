<?php
/* Smarty version 3.1.39, created on 2021-11-29 13:12:47
  from '/Users/razib/Documents/valet/business-suite/apps/wcsuite/views/x_products.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a5181fe9a959_35238012',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c028925c55d6f7ed2bbc9d4443a208705405b9b3' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/wcsuite/views/x_products.tpl',
      1 => 1609776181,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a5181fe9a959_35238012 (Smarty_Internal_Template $_smarty_tpl) {
?><table class="table table-bordered table-hover" id="clx_datatable">
    <thead>
    <tr>
        <th>#</th>
        <th>Name</th>
        <th>Type</th>
        <th>
            Price
        </th>
        <th>Created at</th>

    </tr>
    </thead>
    <tbody>

    <?php if ($_smarty_tpl->tpl_vars['products']->value) {?>
        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['products']->value, 'product');
$_smarty_tpl->tpl_vars['product']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['product']->value) {
$_smarty_tpl->tpl_vars['product']->do_else = false;
?>
            <tr>
                <td  data-value="<?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
"> <?php echo $_smarty_tpl->tpl_vars['product']->value->id;?>
 </td>
                <td> <?php echo $_smarty_tpl->tpl_vars['product']->value->name;?>
 </td>
                <td> <?php echo $_smarty_tpl->tpl_vars['product']->value->type;?>
 </td>
                <td class="amount" data-a-sign="<?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
"><?php if ($_smarty_tpl->tpl_vars['product']->value->price != '') {
echo $_smarty_tpl->tpl_vars['product']->value->price;?>
 <?php } else { ?> 0.00 <?php }?></td>
                <td data-value="<?php echo strtotime($_smarty_tpl->tpl_vars['product']->value->date_created);?>
"><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['product']->value->date_created));?>
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
