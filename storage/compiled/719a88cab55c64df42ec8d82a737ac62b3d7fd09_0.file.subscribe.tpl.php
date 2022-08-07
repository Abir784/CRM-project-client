<?php
/* Smarty version 3.1.39, created on 2022-04-25 06:33:09
  from '/home/worlsxzo/public_html/ui/theme/default/subscribe.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_626632958df283_95472185',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '719a88cab55c64df42ec8d82a737ac62b3d7fd09' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/subscribe.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_626632958df283_95472185 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1553362848626632958ac2f8_06134735', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_2140414298626632958de9e9_36502541', 'script');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/paper.tpl");
}
/* {block "content"} */
class Block_1553362848626632958ac2f8_06134735 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1553362848626632958ac2f8_06134735',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="container mt-5">
        <div class="row">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-body">
                        <h2 class="mb-3"><?php echo $_smarty_tpl->tpl_vars['plan']->value->title;?>
</h2>

                        <div class="mb-3">
                            <?php echo $_smarty_tpl->tpl_vars['plan']->value->description;?>

                        </div>

                        <?php if (!empty($_smarty_tpl->tpl_vars['plan']->value->features)) {?>
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, json_decode($_smarty_tpl->tpl_vars['plan']->value->features), 'feature');
$_smarty_tpl->tpl_vars['feature']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['feature']->value) {
$_smarty_tpl->tpl_vars['feature']->do_else = false;
?>
                                <div class="mb-3">

                                    <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-check"><polyline points="20 6 9 17 4 12"></polyline></svg> <?php echo $_smarty_tpl->tpl_vars['feature']->value;?>

                                </div>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        <?php }?>

                    </div>
                </div>
            </div>
            <div class="col-md-4">
                <div class="card">
                    <div class="card-body">
                        <h2 class="mb-3"><?php echo formatCurrency($_smarty_tpl->tpl_vars['plan']->value->price,$_smarty_tpl->tpl_vars['config']->value['home_currency']);?>
</h2>
                            <div>
                                <?php if ($_smarty_tpl->tpl_vars['user']->value) {?>
                                    <?php if ($_smarty_tpl->tpl_vars['plan']->value->stripe_pricing_id) {?>
                                        <form action="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
subscriptions/stripe-create-checkout-session" method="POST">

                                            <input type="hidden" name="priceId" value="<?php echo $_smarty_tpl->tpl_vars['plan']->value->stripe_pricing_id;?>
" />
                                            <button type="submit" class="btn btn-primary"><?php echo __('Subscribe');?>
</button>
                                        </form>
                                    <?php }?>
                                <?php } else { ?>
                                    <div class="mb-3">
                                        <?php echo __('Login or Register to Subscribe');?>

                                    </div>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
client/login&then=subscriptions/subscribe/<?php echo $_smarty_tpl->tpl_vars['plan']->value->slug;?>
" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Login'];?>
</a>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
client/register&then=subscriptions/subscribe/<?php echo $_smarty_tpl->tpl_vars['plan']->value->slug;?>
" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Register'];?>
</a>
                                <?php }?>
                            </div>
                    </div>
                </div>
            </div>
        </div>
    </div>

<?php
}
}
/* {/block "content"} */
/* {block 'script'} */
class Block_2140414298626632958de9e9_36502541 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_2140414298626632958de9e9_36502541',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
>

    <?php echo '</script'; ?>
>


<?php
}
}
/* {/block 'script'} */
}
