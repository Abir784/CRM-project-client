<?php
/* Smarty version 3.1.39, created on 2022-01-07 18:04:08
  from '/home/worlsxzo/public_html/ui/theme/default/tickets_admin_edit_modal.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d88098ceb272_56539757',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '039dd8af917091eaae55d4945eb3dcc0fef1be47' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/tickets_admin_edit_modal.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d88098ceb272_56539757 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="mx-auto" style="max-width: 600px;">
    <div class="panel rounded-0 mb-0">
        <div class="panel-hdr">
            <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</h2>
        </div>
        <div class="panel-container">
            <div class="panel-content">

                <div class="mb-3">
                    <textarea id="edit_content" class="form-control" name="content"><?php echo $_smarty_tpl->tpl_vars['ticket']->value->message;?>
</textarea>
                </div>

                <div class="mb-3">
                    <input type="hidden" name="edit_type" value="<?php echo $_smarty_tpl->tpl_vars['type']->value;?>
" id="edit_type">
                    <input type="hidden" name="edit_tid" value="<?php echo $_smarty_tpl->tpl_vars['ticket']->value->id;?>
" id="edit_tid">
                    <button type="button" data-bs-dismiss="modal" class="btn btn-danger"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Close'];?>
</button>
                    <button class="btn btn-primary update_ticket_message" type="submit" id="update_ticket_message"><i class="fal fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
                </div>
            </div>
        </div>
    </div>
</div>
<?php }
}
