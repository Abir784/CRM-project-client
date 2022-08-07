<?php
/* Smarty version 3.1.39, created on 2022-01-04 16:52:43
  from '/home/worlsxzo/public_html/ui/theme/default/invoices_filter.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d47b5b097af8_77789302',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9803f9a34735f058c21259e19abfb63b949d8d47' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/invoices_filter.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d47b5b097af8_77789302 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_68823274761d47b5b087c34_71288866', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_46238537761d47b5b095ce6_57723977', 'script');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_68823274761d47b5b087c34_71288866 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_68823274761d47b5b087c34_71288866',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="panel">
        <div class="panel-hdr">




            <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoices'];?>
</h2>


            <div class="panel-toolbar">

                <div class="btn-group">
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/add/" class="btn btn-primary  btn-sm"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Invoice'];?>
</a>
                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
reports/invoices/" class="btn btn-warning btn-sm"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['View Reports'];?>
</a>
                </div>

            </div>
        </div>
        <div class="panel-container">
            <div class="panel-content">

                <ul class="nav nav-tabs nav-tabs-clean mb-3" role="tablist">
                    <li class="nav-item"><a class="nav-link active" href="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
invoices/list/"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Filter'];?>
</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
invoices/list/0/unpaid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Unpaid'];?>
</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
invoices/list/0/partially_paid/"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Partially Paid'];?>
</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
invoices/list/0/paid/"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Paid'];?>
</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
invoices/list/0/cancelled/"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancelled'];?>
</a></li>
                    <li class="nav-item"><a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
invoices/list/0/all/"><?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</a></li>
                </ul>

                <div class="row">
                    <div class="col-lg-3">
                        <div class="card">
                            <div class="card-body">
                                <form>
                                    <div class="mb-3">
                                        <label for="reportrange"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date Range'];?>
</label>
                                        <input type="text" name="reportrange" class="form-control" id="reportrange">
                                    </div>

                                    <div class="mb-3">
                                        <label for="customer"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Customer'];?>
</label>
                                        <select class="form-select" name="customer" id="customer">
                                            <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</option>
                                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['customers']->value, 'customer');
$_smarty_tpl->tpl_vars['customer']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['customer']->value) {
$_smarty_tpl->tpl_vars['customer']->do_else = false;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['customer']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['customer']->value['account'];?>
 <?php echo $_smarty_tpl->tpl_vars['customer']->value['email'];?>
</option>
                                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="customer"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
</label>
                                        <select class="form-select" name="status" id="status">
                                            <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</option>
                                            <option value="Paid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Paid'];?>
</option>
                                            <option value="Unpaid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Unpaid'];?>
</option>
                                            <option value="Partially Paid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Partially Paid'];?>
</option>
                                            <option value="Cancelled"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancelled'];?>
</option>
                                        </select>
                                    </div>

                                    <button type="submit" id="sp_filter" class="btn btn-primary">Filter</button>

                                </form>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-9">
                        <div class="card">
                            <div class="card-body" id="result_div">

                            </div>
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
/* {block 'script'} */
class Block_46238537761d47b5b095ce6_57723977 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_46238537761d47b5b095ce6_57723977',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
>



        $(function () {

            let $customer = $('#customer').select2();

            var start = moment().subtract(29, 'days');
            var end = moment();



            function cb(start, end) {
                $('#reportrange span').html(start.format('MMMM D, YYYY') + ' - ' + end.format('MMMM D, YYYY'));
            }

            var $reportrange = $("#reportrange");

            $reportrange.daterangepicker({
                startDate: start,
                endDate: end,
                ranges: {
                    'Today': [moment(), moment()],
                    'Yesterday': [moment().subtract(1, 'days'), moment().subtract(1, 'days')],
                    'Last 7 Days': [moment().subtract(6, 'days'), moment()],
                    'Last 30 Days': [moment().subtract(29, 'days'), moment()],
                    'This Month': [moment().startOf('month'), moment().endOf('month')],
                    'Last Month': [moment().subtract(1, 'month').startOf('month'), moment().subtract(1, 'month').endOf('month')]
                },
                locale: {
                    format: 'YYYY/MM/DD'
                }
            }, cb);

            cb(start, end);

            let $result_div = $('#result_div');


            function loadResult() {

                $result_div.html('<img src="<?php echo APP_URL;?>
/storage/system/fsubmit.gif">');

                let $form = $('form');
                let data = $form.serialize();

                $.post('<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/filter', data, function (data) {
                    $result_div.html(data);
                });
            }

            loadResult();

            $('#sp_filter').on('click', function (e) {
                e.preventDefault();

                loadResult();

            });




        });
    <?php echo '</script'; ?>
>


<?php
}
}
/* {/block 'script'} */
}
