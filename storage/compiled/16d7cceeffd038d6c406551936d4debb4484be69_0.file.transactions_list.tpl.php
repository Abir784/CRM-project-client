<?php
/* Smarty version 3.1.39, created on 2022-01-07 04:45:03
  from '/home/worlsxzo/public_html/ui/theme/default/transactions_list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d7c54f2301a0_15299473',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '16d7cceeffd038d6c406551936d4debb4484be69' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/transactions_list.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d7c54f2301a0_15299473 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_198523357561d7c54f206844_58264075', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_70431088361d7c54f208270_41576431', "content");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_177690393561d7c54f2253a9_10510134', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_198523357561d7c54f206844_58264075 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_198523357561d7c54f206844_58264075',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css" />
    <style>
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
            color: #2CCE89!important;}

        .text-danger{
            color: #F6365B!important;
        }
        .text-warning{
            color: #FB6340!important;
        }
        .text-primary{
            color: #10CDEF!important;
        }
    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_70431088361d7c54f208270_41576431 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_70431088361d7c54f208270_41576431',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-container">
                    <div class="panel-content">



                        <div class="row">
                            <div class="col-md-3 col-sm-6">

                                <form>
                                    <div class="mb-3">
                                        <label for="reportrange"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date Range'];?>
</label>
                                        <input type="text" name="reportrange" class="form-control" id="reportrange">
                                    </div>

                                    <div class="mb-3">
                                        <label for="tr_type">Transaction <?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</label>
                                        <select id="tr_type" name="tr_type" class="form-control">
                                            <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</option>
                                            <option value="Income" <?php if ($_smarty_tpl->tpl_vars['tr_type']->value == 'Income') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Income'];?>
</option>
                                            <option value="Expense" <?php if ($_smarty_tpl->tpl_vars['tr_type']->value == 'Expense') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Expense'];?>
</option>
                                            <option value="Transfer" <?php if ($_smarty_tpl->tpl_vars['tr_type']->value == 'Transfer') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Transfer'];?>
</option>
                                            <option value="Equity" <?php if ($_smarty_tpl->tpl_vars['tr_type']->value == 'Transfer') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Equity'];?>
</option>
                                        </select>
                                    </div>

                                    <div class="mb-3" id="block_expense_type">
                                        <label for="tr_type">Expense <?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</label>
                                        <select id="tr_type" name="tr_type" class="form-control">
                                            <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</option>
                                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['expense_types']->value, 'expense_type');
$_smarty_tpl->tpl_vars['expense_type']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['expense_type']->value) {
$_smarty_tpl->tpl_vars['expense_type']->do_else = false;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['expense_type']->value->name;?>
"><?php echo $_smarty_tpl->tpl_vars['expense_type']->value->name;?>
</option>
                                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="account"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</label>
                                        <select id="account" name="account" class="form-control">
                                            <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</option>
                                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['a']->value, 'as');
$_smarty_tpl->tpl_vars['as']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['as']->value) {
$_smarty_tpl->tpl_vars['as']->do_else = false;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['as']->value['account'];?>
" <?php if ($_smarty_tpl->tpl_vars['p_account']->value == ($_smarty_tpl->tpl_vars['as']->value['id'])) {?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['as']->value['account'];?>
</option>
                                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="cid"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Contact'];?>
</label>
                                        <select id="cid" name="cid" class="form-control">
                                            <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</option>
                                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['c']->value, 'cs');
$_smarty_tpl->tpl_vars['cs']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['cs']->value) {
$_smarty_tpl->tpl_vars['cs']->do_else = false;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['cs']->value['id'];?>
"
                                                        <?php if ($_smarty_tpl->tpl_vars['p_cid']->value == ($_smarty_tpl->tpl_vars['cs']->value['id'])) {?>selected="selected" <?php }?>><?php echo $_smarty_tpl->tpl_vars['cs']->value['account'];?>
 <?php if ($_smarty_tpl->tpl_vars['cs']->value['email'] != '') {?>- <?php echo $_smarty_tpl->tpl_vars['cs']->value['email'];
}?></option>
                                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                        </select>
                                    </div>

                                    <div class="mb-3">
                                        <label for="category"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Category'];?>
</label>
                                        <select id="category" name="category" class="form-control">
                                            <option value=""><?php echo $_smarty_tpl->tpl_vars['_L']->value['All'];?>
</option>
                                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['categories']->value, 'category');
$_smarty_tpl->tpl_vars['category']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['category']->value) {
$_smarty_tpl->tpl_vars['category']->do_else = false;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['category']->value->id;?>
"><?php echo $_smarty_tpl->tpl_vars['category']->value->name;?>
</option>
                                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                        </select>
                                    </div>





                                    <button type="submit" id="ib_filter" class="btn btn-primary">Filter</button>

                                    <br>
                                </form>


                            </div>
                            <div class="col-md-9 col-sm-6 ib_right_panel">


                                <div class="table-responsive" id="ib_data_panel">


                                    <table class="table table-bordered display" id="ib_dt">
                                        <thead>
                                        <tr class="heading">
                                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['ID'];?>
</th>
                                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
</th>
                                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Account'];?>
</th>
                                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>

                                            <th class="text-end"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
</th>

                                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Description'];?>
</th>
                                            <th class="text-end">
                                                <?php echo $_smarty_tpl->tpl_vars['_L']->value['Dr'];?>

                                                (<?php echo $_smarty_tpl->tpl_vars['home_currency']->value->iso_code;?>
)
                                            </th>
                                            <th class="text-end">
                                                <?php echo $_smarty_tpl->tpl_vars['_L']->value['Cr'];?>

                                                (<?php echo $_smarty_tpl->tpl_vars['home_currency']->value->iso_code;?>
)
                                            </th>

                                            <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                                        </tr>
                                        </thead>

                                        <tfoot>
                                        <tr>
                                            <th colspan="6" style="text-align:right"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total'];?>
:</th>
                                            <th></th>
                                            <th></th>
                                            <th></th>
                                        </tr>
                                        </tfoot>

                                    </table>
                                </div>

                            </div>
                        </div>








                    </div>
                </div>
            </div>

        </div>


    </div> <!-- Row end-->



<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_177690393561d7c54f2253a9_10510134 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_177690393561d7c54f2253a9_10510134',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
 type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/dataTables.buttons.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 type="text/javascript" src="https://cdn.datatables.net/buttons/1.6.2/js/buttons.html5.min.js"><?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
>
        $(function () {
            var $block_expense_type = $("#block_expense_type");
            $block_expense_type.hide();

            $("#tr_type").on('change',function () {
                if($(this).val() == 'Expense'){
                    $block_expense_type.show('slow');
                }
                else{
                    $block_expense_type.hide('slow');
                }
            });

            var $ib_data_panel = $("#ib_data_panel");

            $ib_data_panel.block({ message:block_msg });

            var $cid = $('#cid');

            var $account = $("#account");

            var $category = $("#category");

            $category.select2({

            });

            $cid.select2({

            });

            $account.select2({

            });


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





            var ib_dt = $('#ib_dt').DataTable( {
                select: true,
                "serverSide": true,
                "ajax": {
                    "url": base_url + "transactions/tr_list/",
                    "type": "POST",
                    "data": function ( d ) {

                        d.tr_type = $('#tr_type').val();
                        d.reportrange = $reportrange.val();
                        d.cid = $cid.val();
                        d.account = $account.val();
                        d.category = $category.val();

                    }
                },
                rowId: 9,
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
                "pageLength": 10,
                responsive: true,
                dom:
                /*	--- Layout Structure
                    --- Options
                    l	-	length changing input control
                    f	-	filtering input
                    t	-	The table!
                    i	-	Table information summary
                    p	-	pagination control
                    r	-	processing display element
                    B	-	buttons
                    R	-	ColReorder
                    S	-	Select

                    --- Markup
                    < and >				- div element
                    <"class" and >		- div with a class
                    <"#id" and >		- div with an ID
                    <"#id.class" and >	- div with an ID and a class

                    --- Further reading
                    https://datatables.net/reference/option/dom
                    --------------------------------------
                 */
                    "<'row mb-3'<'col-sm-12 col-md-6 d-flex align-items-center justify-content-start'l><'col-sm-12 col-md-6 d-flex align-items-center justify-content-end'B>>" +
                    "<'row'<'col-sm-12'tr>>" +
                    "<'row'<'col-sm-12 col-md-5'i><'col-sm-12 col-md-7'p>>",
                buttons: [

                    {
                        extend: 'pdfHtml5',
                        text: 'PDF',
                        titleAttr: 'Generate PDF',
                        className: 'btn-danger btn-sm mb-2'
                    },
                    {
                        extend: 'excelHtml5',
                        text: 'Excel',
                        titleAttr: 'Generate Excel',
                        className: 'btn-success btn-sm mb-2'
                    },
                    {
                        extend: 'csvHtml5',
                        text: 'CSV',
                        titleAttr: 'Generate CSV',
                        className: 'btn-primary btn-sm mb-2'
                    },
                    {
                        extend: 'copyHtml5',
                        text: 'Copy',
                        titleAttr: 'Copy to clipboard',
                        className: 'btn-dark btn-sm mb-2'
                    },
                    {
                        extend: 'print',
                        text: 'Print',
                        titleAttr: 'Print Table',
                        className: 'btn-secondary btn-sm mb-2'
                    },
                    {
                        extend: 'selectAll',
                        text: 'Select All',
                        titleAttr: 'Select All',
                        className: 'btn-success btn-sm mb-2'
                    },
                    {
                        extend: 'selectNone',
                        text: 'Select None',
                        titleAttr: 'Select None',
                        className: 'btn-danger btn-sm mb-2'
                    },
                    {
                        text: 'Delete All',
                        className: 'btn-danger btn-sm mb-2',
                        action: function () {
                            let ids = ib_dt.rows({ selected: true }).ids();
                            if (ids.length > 0) {
                                let ids_string = ids.join(",");
                                let c = confirm("<?php echo __('Delete all selected items?');?>
");
                                if (c) {
                                    $.post('<?php echo $_smarty_tpl->tpl_vars['base_url']->value;?>
transactions/mass-delete', {
                                        'ids': ids_string,
                                    }, function (data) {
                                        location.reload();
                                    });
                                }
                            } else {
                                toastr.error("<?php echo __('No items selected');?>
");
                            }
                        }
                    }
                ],
                fixedHeader: {
                    headerOffset: 50
                },
                lengthMenu: [
                    [ 10, 25, 50, -1 ],
                    [ '10 rows', '25 rows', '50 rows', 'Show all' ]
                ],
                "columnDefs": [
                    { "orderable": false, "targets": 8 }
                ],
                "order": [[ 0, 'desc' ]],
                "scrollX": true,
                "initComplete": function () {
                    $ib_data_panel.unblock();
                },
                "footerCallback": function ( row, data, start, end, display ) {
                    var api = this.api(), data;

                    // Remove the formatting to get integer data for summation
                    var intVal = function ( i ) {
                        return typeof i === 'string' ?
                            i.replace(/[\$,]/g, '')*1 :
                            typeof i === 'number' ?
                                i : 0;
                    };

                    // Total over all pages
                    total = api
                        .column( 6 )
                        .data()
                        .reduce( function (a, b) {
                            return intVal(a) + intVal(b);
                        }, 0 );

                    // Total over this page
                    pageTotal = api
                        .column( 6, { page: 'current'} )
                        .data()
                        .reduce( function (a, b) {
                            return intVal(a) + intVal(b);
                        }, 0 );

                    pageTotal_2 = api
                        .column( 7, { page: 'current'} )
                        .data()
                        .reduce( function (a, b) {
                            return intVal(a) + intVal(b);
                        }, 0 );

                    // Update footer
                    $( api.column( 6 ).footer() ).html(
                       // '$'+pageTotal +' ( $'+ total +' total)'
                        pageTotal.toFixed(2)

                    );
                    $( api.column( 7 ).footer() ).html(
                        // '$'+pageTotal +' ( $'+ total +' total)'
                        pageTotal_2.toFixed(2)

                    );
                }
            } );

            var $ib_filter = $("#ib_filter");



            $ib_filter.on('click', function(e) {
                e.preventDefault();

                $ib_data_panel.block({ message:block_msg });

                ib_dt.ajax.reload(
                    function () {
                        $ib_data_panel.unblock();
                    }
                );


            });



        })
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
