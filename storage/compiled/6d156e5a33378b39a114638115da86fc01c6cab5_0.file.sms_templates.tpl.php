<?php
/* Smarty version 3.1.39, created on 2022-01-03 17:32:39
  from '/home/worlsxzo/public_html/ui/theme/default/sms_templates.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d333379ce3b4_83300772',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '6d156e5a33378b39a114638115da86fc01c6cab5' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/sms_templates.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d333379ce3b4_83300772 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_116984938261d333379c42b7_44661174', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_93605586661d333379cb2c2_08022710', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_116984938261d333379c42b7_44661174 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_116984938261d333379c42b7_44661174',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="panel">
        <div class="panel-hdr">
            <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['SMS Templates'];?>
</h2>
        </div>

        <div class="panel-container">
            <div class="panel-content">

                <table class="table table-condensed table-hover table-bordered" id="clx_datatable">
                    <thead>
                    <tr>


                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</th>
                        <th width="70%"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Message'];?>
</th>
                        <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                    </tr>
                    </thead>
                    <tbody>

                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['templates']->value, 'template');
$_smarty_tpl->tpl_vars['template']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['template']->value) {
$_smarty_tpl->tpl_vars['template']->do_else = false;
?>
                        <tr>

                            <td><?php echo $_smarty_tpl->tpl_vars['template']->value->tpl;?>
</td>
                            <td><?php echo $_smarty_tpl->tpl_vars['template']->value->sms;?>
</td>
                            <td> <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
sms/init/edit/<?php echo $_smarty_tpl->tpl_vars['template']->value->id;?>
" class="btn btn-sm btn-dark"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a> </td>
                        </tr>
                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                    </tbody>
                </table>

            </div>
        </div>

    </div>
<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_93605586661d333379cb2c2_08022710 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_93605586661d333379cb2c2_08022710',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {
            $('#clx_datatable').dataTable(
                {
                    responsive: true,
                    "language": {
                        "emptyTable": "<?php echo $_smarty_tpl->tpl_vars['_L']->value['No items to display'];?>
",
                        "info":      "<?php echo $_smarty_tpl->tpl_vars['_L']->value['Showing _START_ to _END_ of _TOTAL_ entries'];?>
",
                        "infoEmpty":      "<?php echo $_smarty_tpl->tpl_vars['_L']->value['Showing 0 to 0 of 0 entries'];?>
",
                        buttons: {
                            pageLength: '<?php echo $_smarty_tpl->tpl_vars['_L']->value['Show all'];?>
'
                        },
                        searchPlaceholder: "<?php echo __('Search');?>
"
                    },
                }
            );
        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
