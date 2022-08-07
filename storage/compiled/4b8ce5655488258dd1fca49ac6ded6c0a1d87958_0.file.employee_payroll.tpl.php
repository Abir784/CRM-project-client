<?php
/* Smarty version 3.1.39, created on 2021-11-29 12:17:52
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/employee_payroll.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a50b4001cf38_50110526',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4b8ce5655488258dd1fca49ac6ded6c0a1d87958' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/employee_payroll.tpl',
      1 => 1595195423,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a50b4001cf38_50110526 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_128039714561a50b40017c27_16742103', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_166440810961a50b4001c8e3_82615779', 'script');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_128039714561a50b40017c27_16742103 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_128039714561a50b40017c27_16742103',
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
class Block_166440810961a50b4001c8e3_82615779 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_166440810961a50b4001c8e3_82615779',
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
