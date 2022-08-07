<?php
/* Smarty version 3.1.39, created on 2021-12-31 11:55:27
  from '/home/worlsxzo/public_html/ui/theme/default/settings_roles.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61ceefaf3a97f3_23168154',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '897abe4060ead1f78e4cf966977519c6380a0043' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/settings_roles.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61ceefaf3a97f3_23168154 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_144919139161ceefaf3a10e9_95859761', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_144919139161ceefaf3a10e9_95859761 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_144919139161ceefaf3a10e9_95859761',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Roles'];?>
</h2>

                    <div class="panel-toolbar">
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/add_role/" class="btn btn-success" id="add_new_group"><i class="fal fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['New Role'];?>
</a>
                    </div>

                </div>

                <div class="panel-container">
                    <div class="panel-content">

                        <div class="table-responsive">
                            <table class="table table-bordered roles no-margin">
                                <thead>
                                <tr>
                                    <th class="bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</th>
                                    <th class="text-center bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                                </tr>
                                </thead>
                                <tbody>


                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['roles']->value, 'role');
$_smarty_tpl->tpl_vars['role']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['role']->value) {
$_smarty_tpl->tpl_vars['role']->do_else = false;
?>
                                    <tr data-id="1">
                                        <td><?php echo $_smarty_tpl->tpl_vars['role']->value['rname'];?>
</td>
                                        <td class="text-end">

                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/edit_role/<?php echo $_smarty_tpl->tpl_vars['role']->value['id'];?>
/" class="btn btn-primary"><i class="fal fa-pencil"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
delete/role/<?php echo $_smarty_tpl->tpl_vars['role']->value['id'];?>
/" class="btn btn-danger" id="uid118"><i class="fal fa-trash-alt"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</a>
                                        </td>



                                    </tr>
                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>






                                </tbody>
                            </table>
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
}
