<?php
/* Smarty version 3.1.39, created on 2022-08-01 17:31:15
  from 'C:\xampp\htdocs\well-known\ui\theme\default\welcome.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62e7ffd3994b37_57039012',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f3b78ba4cb68d5ffcb4b0f863f6be0f621475724' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\welcome.tpl',
      1 => 1640880070,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62e7ffd3994b37_57039012 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16793475062e7ffd398f032_78785446', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_16793475062e7ffd398f032_78785446 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_16793475062e7ffd398f032_78785446',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-12">

            <?php echo $_smarty_tpl->tpl_vars['_L']->value['Welcome'];?>
!

        </div>



    </div>
<?php
}
}
/* {/block "content"} */
}
