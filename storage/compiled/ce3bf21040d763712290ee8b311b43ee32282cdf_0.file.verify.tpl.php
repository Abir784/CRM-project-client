<?php
/* Smarty version 3.1.39, created on 2021-11-29 13:04:33
  from '/Users/razib/Documents/valet/business-suite/apps/twofactor/views/verify.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a516314a2a42_42341619',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ce3bf21040d763712290ee8b311b43ee32282cdf' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/twofactor/views/verify.tpl',
      1 => 1637779230,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a516314a2a42_42341619 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_172282725761a516314938c5_97639000', "head");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_118680482061a51631494762_29173345', "content_body");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_67390791361a516314a2366_87606962', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/base.tpl");
}
/* {block "head"} */
class Block_172282725761a516314938c5_97639000 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_172282725761a516314938c5_97639000',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <style>
        @media (min-width: 992px){
            .clx-fixed-navigation:not(.clx-navigation-type-top):not(.nav-function-hidden):not(.nav-function-minify) .page-content-wrapper {
                padding-left: 0;
            }
        }
    </style>


<?php
}
}
/* {/block "head"} */
/* {block "content_body"} */
class Block_118680482061a51631494762_29173345 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content_body' => 
  array (
    0 => 'Block_118680482061a51631494762_29173345',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="page-content-wrapper bg-transparent m-0">
        <div class="height-10 w-100 shadow-sm px-4 bg-brand-gradient">
            <div class="d-flex align-items-center container p-0">
                <div class="page-logo width-mobile-auto m-0 align-items-center justify-content-center p-0 bg-transparent bg-img-none shadow-0 height-9 border-0">
                    <a href="<?php echo APP_URL;?>
" class="page-logo-link press-scale-down d-flex align-items-center">
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
        <div class="flex-1">
            <div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0">

                <div class="mx-auto" style="max-width: 600px;">
                    <div class="card">
                        <div class="card-body">

                            <?php if ((isset($_smarty_tpl->tpl_vars['notify']->value))) {?>
                                <?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

                            <?php }?>

                            <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
twofactor/otp/post/">
                                <div class="mb-3">
                                    <label for="otp">Enter OTP:</label>
                                    <input type="text" class="form-control" id="otp" name="otp" autofocus>
                                </div>


                                <button type="submit" class="btn btn-primary">Validate</button>
                            </form>

                        </div>
                    </div>
                </div>

                <div class="position-absolute pos-bottom pos-left pos-right p-3 text-center">
                    &copy; <?php echo date('Y');?>
 <?php echo $_smarty_tpl->tpl_vars['config']->value['CompanyName'];?>

                </div>
            </div>
        </div>
    </div>
<?php
}
}
/* {/block "content_body"} */
/* {block "script"} */
class Block_67390791361a516314a2366_87606962 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_67390791361a516314a2366_87606962',
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
