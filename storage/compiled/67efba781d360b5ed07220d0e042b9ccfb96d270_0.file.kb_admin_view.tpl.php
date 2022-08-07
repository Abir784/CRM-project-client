<?php
/* Smarty version 3.1.39, created on 2022-01-04 05:31:56
  from '/home/worlsxzo/public_html/ui/theme/default/kb_admin_view.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d3dbcc241282_14898430',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '67efba781d360b5ed07220d0e042b9ccfb96d270' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/kb_admin_view.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d3dbcc241282_14898430 (Smarty_Internal_Template $_smarty_tpl) {
?><div>
    <div class="panel shadow-none mb-0">
        <div class="panel-hdr">
            <h2>
                <?php echo $_smarty_tpl->tpl_vars['kb']->value->title;?>

            </h2>
        </div>
        <div class="panel-container">
            <div class="panel-content">
                <div class="btn-group">
                    <a class="btn btn-primary" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
kb/a/edit/<?php echo $_smarty_tpl->tpl_vars['kb']->value->id;?>
/"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>
                    <a class="btn btn-danger" onclick="deleteKb('<?php echo $_smarty_tpl->tpl_vars['kb']->value->id;?>
')" href="javascript:;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</a>
                </div>
                <div class="hr-line-dashed"></div>
                <?php echo $_smarty_tpl->tpl_vars['kb']->value->description;?>

            </div>
        </div>
    </div>
</div>
<?php }
}
