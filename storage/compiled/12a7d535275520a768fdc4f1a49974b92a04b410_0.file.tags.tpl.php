<?php
/* Smarty version 3.1.39, created on 2022-01-09 05:59:48
  from '/home/worlsxzo/public_html/ui/theme/default/tags.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61da79d4f1b203_48298020',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '12a7d535275520a768fdc4f1a49974b92a04b410' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/tags.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61da79d4f1b203_48298020 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_176177976161da79d4f052c1_02063716', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_176177976161da79d4f052c1_02063716 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_176177976161da79d4f052c1_02063716',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="panel">
        <div class="panel-hdr">
            <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage Tags'];?>
 </h2>
        </div>
        <div class="panel-container">
            <div class="panel-content">

                    <table class="table table-bordered table-hover sys_table">
                        <thead>
                        <tr>

                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Tag'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>
                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</th>

                        </tr>
                        </thead>
                        <tbody>

                        <?php if (count($_smarty_tpl->tpl_vars['d']->value) > 0) {?>

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
$_smarty_tpl->tpl_vars['ds']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
$_smarty_tpl->tpl_vars['ds']->do_else = false;
?>
                                <tr>

                                    <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['text'];?>
</td>
                                    <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['type'];?>
</td>
                                    <td>
                                        <a href="#" class="btn btn-danger btn-xs cdelete" id="iid<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
"><i class="fal fa-trash"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</a>
                                    </td>
                                </tr>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                        <?php } else { ?>

                            <tr>
                                <td colspan="3">
                                    <?php echo $_smarty_tpl->tpl_vars['_L']->value['No Data Available'];?>

                                </td>
                            </tr>

                        <?php }?>



                        </tbody>
                    </table>



            </div>



        </div>
    </div>
<?php
}
}
/* {/block "content"} */
}
