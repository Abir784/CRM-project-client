<?php
/* Smarty version 3.1.39, created on 2021-12-31 11:29:43
  from '/home/worlsxzo/public_html/ui/theme/default/welcome.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61cee9a7d01680_47088413',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0f57573e8bf1a6569c3d138698be3382141d1bb3' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/welcome.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61cee9a7d01680_47088413 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_120579593561cee9a7cff722_06814524', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_120579593561cee9a7cff722_06814524 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_120579593561cee9a7cff722_06814524',
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
