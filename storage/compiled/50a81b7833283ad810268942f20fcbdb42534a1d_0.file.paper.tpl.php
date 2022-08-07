<?php
/* Smarty version 3.1.39, created on 2022-01-21 09:11:17
  from '/home/worlsxzo/public_html/ui/theme/default/layouts/paper.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61ea78b5e98212_70627070',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '50a81b7833283ad810268942f20fcbdb42534a1d' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/layouts/paper.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61ea78b5e98212_70627070 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16389829861ea78b5e8e0c4_03860297', "head_extras_from_layout");
?>




<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_176346593761ea78b5e8f4c5_23916521', "content_body");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_139728200861ea78b5e97558_58368352', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/base.tpl");
}
/* {block "head_extras_from_layout"} */
class Block_16389829861ea78b5e8e0c4_03860297 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head_extras_from_layout' => 
  array (
    0 => 'Block_16389829861ea78b5e8e0c4_03860297',
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
class Block_182791087361ea78b5e96240_86659907 extends Smarty_Internal_Block
{
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


        <?php
}
}
/* {/block "content"} */
/* {block "content_body"} */
class Block_176346593761ea78b5e8f4c5_23916521 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content_body' => 
  array (
    0 => 'Block_176346593761ea78b5e8f4c5_23916521',
  ),
  'content' => 
  array (
    0 => 'Block_182791087361ea78b5e96240_86659907',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="page-content-wrapper bg-transparent m-0">
        <div class="height-10 w-100 shadow-sm px-4 bg-brand-gradient">
            <div class="d-flex align-items-center container p-0">
                <div class="page-logo width-mobile-auto m-0 align-items-center justify-content-center p-0 bg-transparent bg-img-none shadow-0 height-9 border-0">
                    <a href="<?php echo APP_URL;?>
/client" class="page-logo-link press-scale-down d-flex align-items-center">
                        <?php if ((isset($_smarty_tpl->tpl_vars['config']->value['logo_square']))) {?>
                            <img src="<?php ob_start();
echo APP_URL;
$_prefixVariable1 = ob_get_clean();
echo $_prefixVariable1;?>
/storage/system/<?php ob_start();
echo $_smarty_tpl->tpl_vars['config']->value['logo_square'];
$_prefixVariable2 = ob_get_clean();
echo $_prefixVariable2;?>
" alt="<?php ob_start();
echo $_smarty_tpl->tpl_vars['config']->value['CompanyName'];
$_prefixVariable3 = ob_get_clean();
echo $_prefixVariable3;?>
" aria-roledescription="logo">
                        <?php } else { ?>
                            <img src="<?php ob_start();
echo APP_URL;
$_prefixVariable4 = ob_get_clean();
echo $_prefixVariable4;?>
/storage/system/logo-512x512.png?v=2" alt="<?php ob_start();
echo $_smarty_tpl->tpl_vars['config']->value['CompanyName'];
$_prefixVariable5 = ob_get_clean();
echo $_prefixVariable5;?>
" aria-roledescription="logo">
                        <?php }?>
                        <?php if ((isset($_smarty_tpl->tpl_vars['config']->value['logo_text']))) {?>
                            <span class="page-logo-text mr-1"><?php echo $_smarty_tpl->tpl_vars['config']->value['logo_text'];?>
</span>
                        <?php } else { ?>
                            <span class="page-logo-text mr-1">CloudOnex</span>
                        <?php }?>
                    </a>
                </div>




            </div>
        </div>

        <?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_182791087361ea78b5e96240_86659907', "content", $this->tplIndex);
?>


    </div>
<?php
}
}
/* {/block "content_body"} */
/* {block "script"} */
class Block_139728200861ea78b5e97558_58368352 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_139728200861ea78b5e97558_58368352',
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
