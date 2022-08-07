<?php
/* Smarty version 3.1.39, created on 2022-01-04 05:32:39
  from '/home/worlsxzo/public_html/ui/theme/default/client_orders.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d3dbf77eaeb4_58614707',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '07c6450030ecdad700e9ccd23c0a12e35a98b7f1' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/client_orders.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d3dbf77eaeb4_58614707 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_70791849161d3dbf77dd786_51493967', "head");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_34320852161d3dbf77def38_04076305', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "head"} */
class Block_70791849161d3dbf77dd786_51493967 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_70791849161d3dbf77dd786_51493967',
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
class Block_34320852161d3dbf77def38_04076305 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_34320852161d3dbf77def38_04076305',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="panel panel-default">

        <div class="panel-body">

            <div class="table-responsive">

                <table class="table table-striped sys_table">
                    <thead style="background: #f0f2ff">
                    <tr>

                        <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
</th>

                        
                        <th class="h6 text-info"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Order'];?>
 #</th>


                        <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</th>
                        <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
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

                            <td class="h6"> <?php ob_start();
echo $_smarty_tpl->tpl_vars['ds']->value['date_added'];
$_prefixVariable1 = ob_get_clean();
echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_prefixVariable1));?>
 </td>

                                                            

                            
                            <td class="h6">

                                <a  class="text-info" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/order_view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/<?php echo $_smarty_tpl->tpl_vars['ds']->value['ordernum'];?>
/"><?php echo $_smarty_tpl->tpl_vars['ds']->value['ordernum'];?>
</a>

                            </td>




                            <td class="amount h6" data-a-sign="<?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
 "><?php echo $_smarty_tpl->tpl_vars['ds']->value['amount'];?>
</td>

                            <td>
                                <?php if ($_smarty_tpl->tpl_vars['ds']->value['status'] == 'Active') {?>
                                    <span class="badge badge-success"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['_L']->value[$_smarty_tpl->tpl_vars['ds']->value['status']]);?>
</span>
                                <?php } else { ?>
                                    <span class="badge badge-danger"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['_L']->value[$_smarty_tpl->tpl_vars['ds']->value['status']]);?>
</span>
                                <?php }?>
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
<?php
}
}
/* {/block "content"} */
}
