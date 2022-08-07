<?php
/* Smarty version 3.1.39, created on 2022-01-02 15:06:05
  from '/home/worlsxzo/public_html/ui/theme/default/employee_payroll.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d1bf5d773e62_08898211',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '47c0d7227d15247ca0ddf4f32feace3001660475' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/employee_payroll.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d1bf5d773e62_08898211 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_40557758461d1bf5d76d0e1_57727904', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_33559503561d1bf5d773628_67634094', 'script');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_40557758461d1bf5d76d0e1_57727904 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_40557758461d1bf5d76d0e1_57727904',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">
            <div class="panel">

                <div class="panel-container">
                    <div class="panel-content">
                        <h3><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payroll'];?>
</h3>
                        <div class="hr-line-dashed"></div>
                        <table class="table table-bordered">
                            <thead>
                            <tr>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Month'];?>
</th>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total Amount'];?>
</th>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
</th>
                                <th></th>
                            </tr>
                            </thead>
                            <tbody>
                            <tr>
                                <td>
                                    <?php echo ib_lan_get_line(date('F'));?>

                                </td>
                                <td> <?php echo formatCurrency($_smarty_tpl->tpl_vars['total']->value);?>
</td>
                                <td><?php echo $_smarty_tpl->tpl_vars['_L']->value['Not processed'];?>
</td>
                                <td>
                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
hrm/run-payroll" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Run payroll'];?>
</a>
                                </td>
                            </tr>
                            </tbody>
                        </table>

                    </div>
                </div>

            </div>
        </div>
    </div>

<?php
}
}
/* {/block "content"} */
/* {block 'script'} */
class Block_33559503561d1bf5d773628_67634094 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_33559503561d1bf5d773628_67634094',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
>



    <?php echo '</script'; ?>
>


<?php
}
}
/* {/block 'script'} */
}
