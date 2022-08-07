<?php
/* Smarty version 3.1.39, created on 2021-12-31 11:57:15
  from '/home/worlsxzo/public_html/ui/theme/default/ajax.contact-more.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61cef01be05027_73183005',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b4d3aafafe5a4912494c9ce74d39e53d9f88fec0' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/ajax.contact-more.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61cef01be05027_73183005 (Smarty_Internal_Template $_smarty_tpl) {
?><div id="croppic"></div>

<button type="button" id="cropContainerHeaderButton" class="btn btn-info"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Upload Picture'];?>
</button>
<button type="button" id="opt_gravatar" class="btn btn-info"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Use Gravatar'];?>
</button>
<button type="button" id="no_image" class="btn btn-default"><?php echo $_smarty_tpl->tpl_vars['_L']->value['No Image'];?>
</button>
<div class="mt-3"> </div>
<form class="form-horizontal">

    <div class="mb-3"><label for="picture"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Picture'];?>
</label>

        <input type="text" id="picture" readonly name="picture" class="form-control picture" <?php if ($_smarty_tpl->tpl_vars['d']->value['img']) {?> value="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;
echo $_smarty_tpl->tpl_vars['d']->value['img'];?>
" <?php }?> autocomplete="off">
    </div>

    <div class="mb-3"><label for="facebook"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Facebook Profile'];?>
</label>

        <input type="text" id="facebook" name="facebook" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['facebook'];?>
" autocomplete="off">
    </div>

    <div class="mb-3"><label for="google"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Google Plus Profile'];?>
</label>

        <input type="text" id="google" name="google" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['google'];?>
" autocomplete="off">
    </div>
    <div class="mb-3"><label for="linkedin"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Linkedin Profile'];?>
</label>
        <input type="text" id="linkedin" name="linkedin" value="<?php echo $_smarty_tpl->tpl_vars['d']->value['linkedin'];?>
" class="form-control" autocomplete="off">
    </div>


    <div class="mb-3">
        <button class="btn btn-primary" type="submit" id="more_submit"><i class="fal fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Submit'];?>
</button>
    </div>
</form>
<?php }
}
