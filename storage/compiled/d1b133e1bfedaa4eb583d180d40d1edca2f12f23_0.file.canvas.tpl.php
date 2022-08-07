<?php
/* Smarty version 3.1.39, created on 2022-01-07 04:40:35
  from '/home/worlsxzo/public_html/ui/theme/default/layouts/canvas.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d7c443cbab16_40419411',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd1b133e1bfedaa4eb583d180d40d1edca2f12f23' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/layouts/canvas.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d7c443cbab16_40419411 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
if ((isset($_smarty_tpl->tpl_vars['config']->value['base_layout']))) {?>
    
    <?php } else { ?>
    
<?php }?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_48179415561d7c443cb68d3_58095200', "head_extras_from_layout");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_5606172761d7c443cb7de1_95446984', "content_body");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_212188209261d7c443cba0b4_72448015', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, $_smarty_tpl->tpl_vars['config']->value['base_layout']);
$_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/base.tpl");
}
/* {block "head_extras_from_layout"} */
class Block_48179415561d7c443cb68d3_58095200 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head_extras_from_layout' => 
  array (
    0 => 'Block_48179415561d7c443cb68d3_58095200',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <style>
        .pristine-error.text-help {
            color: red;
        }
        @media (min-width: 992px){
            .clx-fixed-navigation:not(.clx-navigation-type-top):not(.nav-function-hidden):not(.nav-function-minify) .page-content-wrapper {
                padding-left: 0;
            }
        }
    </style>
<?php
}
}
/* {/block "head_extras_from_layout"} */
/* {block "content"} */
class Block_139758183661d7c443cb8e30_43178865 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php
}
}
/* {/block "content"} */
/* {block "content_body"} */
class Block_5606172761d7c443cb7de1_95446984 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content_body' => 
  array (
    0 => 'Block_5606172761d7c443cb7de1_95446984',
  ),
  'content' => 
  array (
    0 => 'Block_139758183661d7c443cb8e30_43178865',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_139758183661d7c443cb8e30_43178865', "content", $this->tplIndex);
?>


<?php
}
}
/* {/block "content_body"} */
/* {block "script"} */
class Block_212188209261d7c443cba0b4_72448015 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_212188209261d7c443cba0b4_72448015',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {



        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
