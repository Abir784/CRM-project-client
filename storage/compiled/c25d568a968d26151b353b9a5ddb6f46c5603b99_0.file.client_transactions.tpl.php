<?php
/* Smarty version 3.1.39, created on 2022-01-26 18:15:04
  from '/home/worlsxzo/public_html/ui/theme/default/client_transactions.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61f18fa8eeb985_04484528',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c25d568a968d26151b353b9a5ddb6f46c5603b99' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/client_transactions.tpl',
      1 => 1643220902,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61f18fa8eeb985_04484528 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_31204625161f18fa8ed3181_16588010', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_144101457461f18fa8ed4944_41465602', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "head"} */
class Block_31204625161f18fa8ed3181_16588010 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_31204625161f18fa8ed3181_16588010',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <style>
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #F7F9FC;
        }

        .h2, h2 {
            font-size: 1.25rem;
        }
        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            font-family: inherit;
            font-weight: 600;
            line-height: 1.5;
            margin-bottom: .5rem;
            color: #32325d;
        }
        .text-info{
            color: #6772E5!important;
        }
        .text-success{
            color: #2CCE89!important;
        }
    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_144101457461f18fa8ed4944_41465602 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_144101457461f18fa8ed4944_41465602',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total'];?>
 : <?php echo count($_smarty_tpl->tpl_vars['d']->value);?>
 </h2>

                </div>
                <div class="panel-container">
                    <div class="table-responsive">

                        <table class="table table-striped sys_table">
                            <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
</th>
                            <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</th>
                            <th class="h6">Subject</th>
                            <th class="h6">Status</th>


                            <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</th>

                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Description'];?>
</th>

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
$_smarty_tpl->tpl_vars['ds']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
$_smarty_tpl->tpl_vars['ds']->do_else = false;
?>
                                <tr class="<?php if ($_smarty_tpl->tpl_vars['ds']->value['cr'] == '0.00') {?>warning <?php } else { ?>info<?php }?>">
                                    <td class="h6"><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['ds']->value['date']));?>
</td>
                                    <td class="h6"><?php echo $_smarty_tpl->tpl_vars['ds']->value['account'];?>
</td>
                                     <td class="h6"><?php echo $_smarty_tpl->tpl_vars['ds']->value['subject'];?>
</td>
                                     <td class="h6"><?php echo $_smarty_tpl->tpl_vars['ds']->value['status'];?>
</td>
                                                                        


                                    <td class="h6"><?php echo $_smarty_tpl->tpl_vars['ds']->value['currency_symbol'];?>
 <?php echo $_smarty_tpl->tpl_vars['ds']->value['total'];?>
</td>
                                    <td class="h6 text-info"><?php echo $_smarty_tpl->tpl_vars['ds']->value['notes'];?>
</td>

                                                                                                        </tr>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>



                        </table>

                    </div>
                </div>

            </div>

        </div>

        <!-- Widget-1 end-->

        <!-- Widget-2 end-->
    </div>

<?php
}
}
/* {/block "content"} */
}
