<?php
/* Smarty version 3.1.39, created on 2022-01-04 05:35:08
  from '/home/worlsxzo/public_html/ui/theme/default/client_view_item.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d3dc8c8be6c7_90154394',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '2fcb506ec2633fa833d185bef305b0b795dd9f7c' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/client_view_item.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d3dc8c8be6c7_90154394 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_207923236761d3dc8c8aeec9_12329951', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "content"} */
class Block_207923236761d3dc8c8aeec9_12329951 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_207923236761d3dc8c8aeec9_12329951',
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
