<?php
/* Smarty version 3.1.39, created on 2022-01-02 12:19:45
  from '/home/worlsxzo/public_html/ui/theme/default/contacts_files.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d19861cf9c34_79164849',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '106fde8a68bdc4910f1751472fbccf730ff9d42c' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/contacts_files.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d19861cf9c34_79164849 (Smarty_Internal_Template $_smarty_tpl) {
?>

<form id="rform">


    <div class="mb-3"><label for="c_file"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Files'];?>
</label>

        <select name="c_file" id="c_file" class="form-control">
            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['files']->value, 'file');
$_smarty_tpl->tpl_vars['file']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['file']->value) {
$_smarty_tpl->tpl_vars['file']->do_else = false;
?>
                <option value="<?php echo $_smarty_tpl->tpl_vars['file']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['file']->value['title'];?>
</option>
            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

        </select>
    </div>


    <div class="mb-3">
        <button class="btn btn-primary" type="submit" id="assign_file"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Submit'];?>
</button>
    </div>

</form>
<hr>
<table class="table table-bordered table-hover sys_table">
    <thead>
    <tr>

        <th class="text-end" data-sort-ignore="true" width="20px;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>

        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Title'];?>
</th>

        <th class="text-end" data-sort-ignore="true" width="100px;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>

    </tr>
    </thead>
    <tbody>

    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
$_smarty_tpl->tpl_vars['ds']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
$_smarty_tpl->tpl_vars['ds']->do_else = false;
?>

        <tr>

            <td>
                <?php if ($_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'jpg' || $_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'png' || $_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'gif') {?>
                    <i class="fal fa-file-image-o"></i>
                <?php } elseif ($_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'pdf') {?>
                    <i class="fal fa-file-pdf-o"></i>
                <?php } elseif ($_smarty_tpl->tpl_vars['ds']->value['file_mime_type'] == 'zip') {?>
                    <i class="fal fa-file-archive-o"></i>
                <?php } else { ?>
                    <i class="fal fa-file"></i>
                <?php }?>
            </td>


            <td>

                <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
documents/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/"><?php echo $_smarty_tpl->tpl_vars['ds']->value['title'];?>
</a>

            </td>

            <td class="text-end">

                <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/remove_file/<?php echo $_smarty_tpl->tpl_vars['cid']->value;?>
/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/" class="btn btn-success btn-xs"><i class="fal fa-times"></i> </a>

            </td>


        </tr>

    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    </tbody>
</table>
<?php }
}
