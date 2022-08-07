<?php
/* Smarty version 3.1.39, created on 2022-01-04 17:56:45
  from '/home/worlsxzo/public_html/ui/theme/default/subscription_plans.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d48a5d45e089_68545828',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '38f2c04c40f084a4a71ec9a0cff053e353441831' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/subscription_plans.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d48a5d45e089_68545828 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_63675737261d48a5d453f48_55159959', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_34989555761d48a5d45d659_73854355', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_63675737261d48a5d453f48_55159959 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_63675737261d48a5d453f48_55159959',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col">
            <div class="subheader">
                <h1 class="subheader-title">
                    <i class='subheader-icon fal fa-window'></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Subscriptions'];?>

                </h1>
            </div>
        </div>
        <div class="col text-end">
            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
subscriptions/plan" class="btn btn-primary  btn-sm"> <?php echo __('New Subscription Plan');?>
</a>
        </div>
    </div>


    <div class="row">

        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['plans']->value, 'plan');
$_smarty_tpl->tpl_vars['plan']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['plan']->value) {
$_smarty_tpl->tpl_vars['plan']->do_else = false;
?>
            <div class="col-md-3">
                <div class="card mb-3">
                    <div class="card-body">
                        <h2><?php echo $_smarty_tpl->tpl_vars['plan']->value->title;?>
</h2>

                        <div class="hr-line-dashed"></div>

                        <div class="mb-3">
                            <h4><?php echo formatCurrency($_smarty_tpl->tpl_vars['plan']->value->price,$_smarty_tpl->tpl_vars['config']->value['home_currency']);?>
</h4>
                        </div>

                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
subscriptions/plan/<?php echo $_smarty_tpl->tpl_vars['plan']->value->id;?>
" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>
                        <a target="_blank" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
subscriptions/subscribe/<?php echo $_smarty_tpl->tpl_vars['plan']->value->slug;?>
" class="btn btn-success"><?php echo $_smarty_tpl->tpl_vars['_L']->value['View'];?>
</a>
                        <a href="javascript:;" onclick="confirmThenGoToUrl(event,'subscriptions/delete-plan/<?php echo $_smarty_tpl->tpl_vars['plan']->value->id;?>
');" class="btn btn-danger"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</a>
                    </div>
                </div>
            </div>
        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    </div>


<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_34989555761d48a5d45d659_73854355 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_34989555761d48a5d45d659_73854355',
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
