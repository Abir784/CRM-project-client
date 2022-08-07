<?php
/* Smarty version 3.1.39, created on 2021-12-02 17:26:16
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/reports-by-date.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a948086098c2_78264653',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a1d132fa2b7cbd57a147dc1df7159303207a8985' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/reports-by-date.tpl',
      1 => 1638483970,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a948086098c2_78264653 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_184974049961a948085f5b31_38980208', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_15410650761a94808608a11_14801347', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_184974049961a948085f5b31_38980208 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_184974049961a948085f5b31_38980208',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">


        <div class="col-lg-12 col-md-12 col-sm-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Reports by Date'];?>
 </h2>

                </div>
                <div class="panel-container">
                    <div class="panel-content">
                        <div id="dpx" class="table-responsive"></div>
                        <div id="result">
                            <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total Income'];?>
: <?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['cr']->value,2,$_smarty_tpl->tpl_vars['config']->value['dec_point'],$_smarty_tpl->tpl_vars['config']->value['thousands_sep']);?>
</h2>
                            <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total Expense'];?>
: <?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['dr']->value,2,$_smarty_tpl->tpl_vars['config']->value['dec_point'],$_smarty_tpl->tpl_vars['config']->value['thousands_sep']);?>
</h2>

                            <hr>
                            <h4><?php echo $_smarty_tpl->tpl_vars['_L']->value['All Transactions at Date'];?>
: <span id="tdate"><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['mdate']->value));?>
</span> </h4>
                            <hr>
                            <table class="table table-striped table-bordered table-responsive">

                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</th>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>
                                <th class="hidden-xs hidden-sm"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Category'];?>
</th>
                                <th class="text-end"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</th>
                                <th class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payer'];?>
</th>
                                <th class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Payee'];?>
</th>
                                <th class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Method'];?>
</th>
                                <th class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Ref'];?>
</th>
                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Description'];?>
</th>
                                <th class="text-end"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Dr'];?>
</th>
                                <th class="text-end"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cr'];?>
</th>
                                
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
$_smarty_tpl->tpl_vars['ds']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
$_smarty_tpl->tpl_vars['ds']->do_else = false;
?>
                                    <tr>

                                        <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['account'];?>
</td>
                                                                                <td><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['ds']->value['type']);?>
</td>
                                        <td><?php if ($_smarty_tpl->tpl_vars['ds']->value['category'] == 'Uncategorized') {
echo $_smarty_tpl->tpl_vars['_L']->value['Uncategorized'];?>
 <?php } else { ?> <?php echo $_smarty_tpl->tpl_vars['ds']->value['category'];?>
 <?php }?></td>
                                        <td class="text-end"><?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['ds']->value['amount'],2,$_smarty_tpl->tpl_vars['config']->value['dec_point'],$_smarty_tpl->tpl_vars['config']->value['thousands_sep']);?>
</td>
                                        <td class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['ds']->value['payer'];?>
</td>
                                        <td class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['ds']->value['payee'];?>
</td>
                                        <td class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['ds']->value['method'];?>
</td>
                                        <td class="hidden-xs hidden-sm hidden-md"><?php echo $_smarty_tpl->tpl_vars['ds']->value['ref'];?>
</td>
                                        <td><?php echo $_smarty_tpl->tpl_vars['ds']->value['description'];?>
</td>
                                        <td class="text-end"><?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['ds']->value['dr'],2,$_smarty_tpl->tpl_vars['config']->value['dec_point'],$_smarty_tpl->tpl_vars['config']->value['thousands_sep']);?>
</td>
                                        <td class="text-end"><?php echo $_smarty_tpl->tpl_vars['config']->value['currency_code'];?>
 <?php echo number_format($_smarty_tpl->tpl_vars['ds']->value['cr'],2,$_smarty_tpl->tpl_vars['config']->value['dec_point'],$_smarty_tpl->tpl_vars['config']->value['thousands_sep']);?>
</td>
                                        
                                    </tr>
                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>


                                <tfoot>
                                <tr>
                                    <th colspan="9" style="text-align:right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total'];?>
:</th>
                                    <th><?php echo ib_money_format($_smarty_tpl->tpl_vars['dr']->value,$_smarty_tpl->tpl_vars['config']->value);?>
</th>
                                    <th colspan="2"><?php echo ib_money_format($_smarty_tpl->tpl_vars['cr']->value,$_smarty_tpl->tpl_vars['config']->value);?>
</th>

                                </tr>
                                </tfoot>

                            </table>
                        </div>
                    </div>






                </div>
            </div>
        </div>



        <!-- Widget-2 end-->
    </div>




<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_15410650761a94808608a11_14801347 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_15410650761a94808608a11_14801347',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {

            let $dpx = $('#dpx');

            $dpx.datepaginator(
                {

                    selectedDate: '<?php echo date('Y-m-d');?>
',
                    selectedDateFormat:  'YYYY-MM-DD',
                    textSelected:  "dddd<br/>YYYY-MM-DD"
                }
            );
            $dpx.on('selectedDateChanged', function(event, date) {
                $( "#result" ).html( "<h3>Loading.....</h3>" );
                $.get( base_url + "ajax.date-summary/" + date, function( data ) {
                    $( "#result" ).html( data );
                });
            });

        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
