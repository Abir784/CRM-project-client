<?php
/* Smarty version 3.1.39, created on 2021-11-29 13:08:51
  from '/Users/razib/Documents/valet/business-suite/apps/shopify/views/integration.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a51733d17d04_87092930',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '69128d4ca012c57a7e15e8e53a545f7ebcc3ecc6' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/shopify/views/integration.tpl',
      1 => 1637779230,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a51733d17d04_87092930 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_93180215661a51733d0d144_13253191', "content");
?>

<?php }
/* {block "content"} */
class Block_93180215661a51733d0d144_13253191 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_93180215661a51733d0d144_13253191',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">

        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
shopify/app/save-integration">

                        <div class="mb-3">
                            <label for="name">Name</label>
                            <input type="text" class="form-control" name="name" id="name" <?php if ($_smarty_tpl->tpl_vars['integration']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['integration']->value->name;?>
" <?php }?> >
                        </div>

                        <div class="mb-3">
                            <label for="url">Store Url</label>
                            <input type="text" class="form-control" name="url" id="url" <?php if ($_smarty_tpl->tpl_vars['integration']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['integration']->value->url;?>
" <?php }?>>
                            <span class="help-block">e.g. https://www.example.com</span>
                        </div>

                        <div class="mb-3">
                            <label for="key">Consumer key</label>
                            <input type="text" class="form-control" name="key" id="key" <?php if ($_smarty_tpl->tpl_vars['integration']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['integration']->value->key;?>
" <?php }?>>
                        </div>

                        <div class="mb-3">
                            <label for="secret">Secret</label>
                            <input type="text" class="form-control" name="secret" id="secret" <?php if ($_smarty_tpl->tpl_vars['integration']->value) {?> value="<?php echo $_smarty_tpl->tpl_vars['integration']->value->secret;?>
" <?php }?>>
                        </div>

                        <?php if ($_smarty_tpl->tpl_vars['integration']->value) {?>
                            <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['integration']->value->id;?>
">
                        <?php } else { ?>
                            <input type="hidden" name="id" value="0">
                        <?php }?>

                        <button type="submit" class="btn btn-primary">Submit</button>
                    </form>
                </div>
            </div>
        </div>

    </div>
<?php
}
}
/* {/block "content"} */
}
