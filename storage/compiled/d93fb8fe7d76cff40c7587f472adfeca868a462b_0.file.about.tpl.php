<?php
/* Smarty version 3.1.39, created on 2021-12-02 17:40:43
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/about.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a94b6b37fda4_91393233',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd93fb8fe7d76cff40c7587f472adfeca868a462b' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/about.tpl',
      1 => 1638484840,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a94b6b37fda4_91393233 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_201375162561a94b6b376d20_42945348', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_51553868061a94b6b37f3c4_19345403', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_201375162561a94b6b376d20_42945348 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_201375162561a94b6b376d20_42945348',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-6">
            <div class="panel" id="ib_box">
                <div class="panel-hdr">
                    <h2><?php echo __('Build');?>
</h2>
                </div>

                <div class="panel-container">
                    <div class="panel-content" id="ibox_update">

                        <div class="mb-3">
                            <h1 class="display-3 text-center"><?php echo $_smarty_tpl->tpl_vars['config']->value['build'];?>
</h1>
                        </div>


                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
updating/" class="cls_update btn btn-danger"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Update'];?>
</a>


                    </div>
                </div>

            </div>

            <?php if ($_smarty_tpl->tpl_vars['app_stage']->value == 'Demo') {?>

                <input type="hidden" name="purchase_code" id="purchase_code" value="">

            <?php } else { ?>

                <div class="panel" id="ib_box">

                    <div class="panel-hdr">
                        <h2><?php echo __('License Key');?>
</h2>
                    </div>

                    <div class="panel-container">
                        <div class="panel-content">


                            <form role="form" name="accadd" method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/activate_license_post/">





                                <div class="mb-3">

                                    <input type="text" required class="form-control" id="purchase_key" name="purchase_key" value="<?php echo $_smarty_tpl->tpl_vars['config']->value['purchase_key'];?>
">

                                    <span class="help-block">You will find your Purchase Key in your <a target="_blank" href="https://www.cloudonex.com/licenses">Profile - Downloads</a> Section
                                <br>
                                    In this format - XXXX-XXXX-XXXX-XXXX
                                </span>

                                </div>

                                <div class="mb-3">
                                    <button type="submit" id="btn_save" class="btn btn-primary"><i class="fal fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
                                </div>
                            </form>




                        </div>
                    </div>

                </div>

            <?php }?>



        </div>





    </div>

<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_51553868061a94b6b37f3c4_19345403 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_51553868061a94b6b37f3c4_19345403',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<?php
}
}
/* {/block "script"} */
}
