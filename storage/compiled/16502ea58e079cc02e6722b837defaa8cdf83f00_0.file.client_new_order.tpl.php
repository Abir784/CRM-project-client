<?php
/* Smarty version 3.1.39, created on 2021-11-26 14:40:42
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/client_new_order.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a1383ad30229_80212372',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '16502ea58e079cc02e6722b837defaa8cdf83f00' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/client_new_order.tpl',
      1 => 1636985551,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a1383ad30229_80212372 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_50126099561a1383ad21ac8_57412823', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_185766825961a1383ad2efb7_69847729', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "content"} */
class Block_50126099561a1383ad21ac8_57412823 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_50126099561a1383ad21ac8_57412823',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <h2 class="mb-3">
        <?php echo $_smarty_tpl->tpl_vars['_L']->value['Catalog'];?>

    </h2>
    <div class="row">
        <div class="col-md-9">
            <section>

                <div>
                    <div class="ib-ecom--catalog">
                        <div class="row">

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['items']->value, 'item');
$_smarty_tpl->tpl_vars['item']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['item']->value) {
$_smarty_tpl->tpl_vars['item']->do_else = false;
?>

                                <div class="col-md-4">
                                    <div class="panel" >
                                        <div class="panel-container">
                                            <div class="panel-content">
                                                <div class="ib-ecom--catalog--item">
                                                    <div class="ib-ecom--catalog- mb-3" >

                                                        <a id="item_<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" class="view-item" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/view-item/<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
">

                                                            <?php if ($_smarty_tpl->tpl_vars['item']->value['image'] != '') {?>
                                                                <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
storage/items/thumb_400<?php echo $_smarty_tpl->tpl_vars['item']->value['image'];?>
" class="card-img-top img-fluid rounded-0">
                                                            <?php } else { ?>
                                                                <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
ui/lib/img/item_placeholder.png">
                                                            <?php }?>


                                                        </a>

                                                    </div>
                                                    <div class="ib-ecom--catalog--item--title">
                                                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/view-item/<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['item']->value['name'];?>
</a>
                                                        <div class="ib-ecom--catalog--item--price mb-3">
                                                            <?php echo ib_money_format($_smarty_tpl->tpl_vars['item']->value['sales_price'],$_smarty_tpl->tpl_vars['config']->value);?>

                                                                                                                                                                                                                                            </div>
                                                        <div class="text-center mb-2">
                                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/view-item/<?php echo $_smarty_tpl->tpl_vars['item']->value['id'];?>
" class="btn btn-sm btn-primary">See Details</a>
                                                        </div>

                                                    </div>

                                                                                                                                                                                                                                                                                                                                                                                                                                                                                </div>
                                            </div>

                                        </div>
                                    </div>

                                </div>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                        </div>
                    </div>
                </div>
            </section>
        </div>
        <div class="col-md-3" id="load_shopping_cart">



        </div>
    </div>
<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_185766825961a1383ad2efb7_69847729 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_185766825961a1383ad2efb7_69847729',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {

            var $modal = $('#ajax-modal');

            var $load_shopping_cart = $("#load_shopping_cart");

            function loadShoppingCart() {

                $load_shopping_cart.html(block_msg);

                $.get( base_url + "client/ajax_shopping_cart", function( data ) {
                    $load_shopping_cart.html(data);
                });
            }

            loadShoppingCart();

            $('.view-item').click(function (e) {
                e.preventDefault();

                var item_id = this.id;

                $('body').modalmanager('loading');

                $modal.load( base_url + 'client/modal_view_item/' +  item_id, '', function(){
                    $modal.modal();



                });

            });


            $modal.on('click', '.add_to_cart', function(e) {

                e.preventDefault();



                var form_item_id = $('#form_item_id').val();
                var form_item_qty = $('#form_item_quantity').val();

                $.get( base_url + "client/ajax_add_item/"+form_item_id+'/'+form_item_qty, function( data ) {
                   // alert(data);
                    loadShoppingCart();
                });

                $modal.modal('toggle');


            });




        })
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
