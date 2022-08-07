<?php
/* Smarty version 3.1.39, created on 2022-01-02 11:48:50
  from '/home/worlsxzo/public_html/ui/theme/default/util_sys_status.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d1912256f829_48923267',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c491ad1b9f28e515ebf815dac6ba97131e0afb60' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/util_sys_status.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d1912256f829_48923267 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_57548486361d1912256bd78_43439072', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_57548486361d1912256bd78_43439072 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_57548486361d1912256bd78_43439072',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">

        <div class="col-md-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Application Environment'];?>
</h2>

                </div>
                <div class="panel-container">
                    <div class="panel-content">
                        <table class="table table-bordered sys_table">
                            <tbody>



                            <tr>
                                <td>BASE URL</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
</td>
                            </tr>

                            <tr>
                                <td>Application Stage</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['app_stage']->value;?>
</td>
                            </tr>

                            <tr>
                                <td>Default Language</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['config']->value['language'];?>
</td>
                            </tr>


                            </tbody>
                        </table>
                    </div>



                </div>
            </div>
        </div>

        <div class="col-md-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Server Environment'];?>
</h2>
                </div>
                <div class="panel-container">
                    <div class="panel-content">
                        <?php echo $_smarty_tpl->tpl_vars['pinfo']->value;?>

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
