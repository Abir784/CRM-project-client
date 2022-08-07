<?php
/* Smarty version 3.1.39, created on 2022-01-09 06:54:31
  from '/home/worlsxzo/public_html/ui/theme/default/settings_client_auth_page_widget.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61da86a7e92567_70073523',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7bc97a519cba8083e3444b39285fe536a24530e3' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/settings_client_auth_page_widget.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61da86a7e92567_70073523 (Smarty_Internal_Template $_smarty_tpl) {
?><div style="max-width: 800px;" class="mx-auto">
    <div class="panel mb-0 rounded-0">
        <div class="panel-hdr">
            <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</h2>
        </div>
        <div class="panel-container">
            <div class="panel-content">
                <form id="clx_modal_form">
                    <div class="mb-3">
                        <textarea id="edit_content" name="content" class="form-control"><?php echo Widget::getWidgetContent('client-auth-page-widget');?>
</textarea>
                    </div>
                    <div class="mb-3">
                        <button type="button" id="btn_save_content" class="btn btn-primary modal_submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
                        <button type="button" class="btn btn-danger" onclick="$.fancybox.close();"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancel'];?>
</button>
                    </div>
                </form>
            </div>
        </div>
    </div>
</div>
<?php }
}
