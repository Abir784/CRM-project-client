<?php
/* Smarty version 3.1.39, created on 2021-12-02 17:27:02
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/client_view_item.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a94836837592_83657510',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '137f4ff17eef2567d00f9711982dea1a064e9695' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/client_view_item.tpl',
      1 => 1592567777,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a94836837592_83657510 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_77391731161a9483682c661_02295808', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "content"} */
class Block_77391731161a9483682c661_02295808 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_77391731161a9483682c661_02295808',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <section >
        <div class="panel">
            <div class="panel-container">
                <div class="panel-content">
                    <div class="row">
                        <div class="col-lg-5">
                            <div class="cui-ecommerce--catalog--item">
                                <div class="cui-ecommerce--catalog--item--img">
                                    <div class="cui-ecommerce--catalog--item--like cui-ecommerce--catalog--item--like__selected">
                                        <i class="icmn-heart3 cui-ecommerce--catalog--item--like--liked"><!-- --></i>
                                        <i class="icmn-heart4 cui-ecommerce--catalog--item--like--unliked"><!-- --></i>
                                    </div>
                                    <div class="panel">
                                        <div class="panel-container">
                                            <div class="panel-content">
                                                <a href="javascript: void(0);">
                                                    <?php if ($_smarty_tpl->tpl_vars['item']->value->image != '') {?>
                                                        <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
storage/items/<?php echo $_smarty_tpl->tpl_vars['item']->value->image;?>
" class="img-fluid">
                                                    <?php } else { ?>
                                                        <img src="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
ui/lib/img/item_placeholder.png">
                                                    <?php }?>
                                                </a>
                                            </div>
                                        </div>

                                    </div>



                                </div>
                            </div>

                        </div>
                        <div class="col-lg-7">

                            <p class="h1">
                                <?php echo $_smarty_tpl->tpl_vars['item']->value->name;?>

                            </p>

                          <p class="h4">
                              <?php echo ib_money_format($_smarty_tpl->tpl_vars['item']->value->sales_price,$_smarty_tpl->tpl_vars['config']->value);?>

                          </p>


                            <hr>
                            <div class="cui-ecommerce--product--descr">
                                <?php echo $_smarty_tpl->tpl_vars['item']->value->description;?>

                            </div>
                            <hr>
                            <a class="btn btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
cart/add/<?php echo $_smarty_tpl->tpl_vars['item']->value->id;?>
">
                                <i class="fal fa-shopping-cart"></i>
                                <?php echo $_smarty_tpl->tpl_vars['_L']->value['Buy Now'];?>

                            </a>



                        </div>
                    </div>
                </div>

            </div>

        </div>
    </section>
<?php
}
}
/* {/block "content"} */
}
