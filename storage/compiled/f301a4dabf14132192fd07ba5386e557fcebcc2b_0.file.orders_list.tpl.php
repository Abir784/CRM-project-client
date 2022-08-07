<?php
/* Smarty version 3.1.39, created on 2022-01-04 16:57:35
  from '/home/worlsxzo/public_html/ui/theme/default/orders_list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d47c7f022626_62720262',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f301a4dabf14132192fd07ba5386e557fcebcc2b' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/orders_list.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d47c7f022626_62720262 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_2710784861d47c7f00a4d4_94857452', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_33996119961d47c7f00b8e4_30396983', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_150613458561d47c7f01ebb7_83248637', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_2710784861d47c7f00a4d4_94857452 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_2710784861d47c7f00a4d4_94857452',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <style>
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #F7F9FC;
        }
    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_33996119961d47c7f00b8e4_30396983 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_33996119961d47c7f00b8e4_30396983',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">



        <div class="col-md-12">



            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Order'];?>
</h2>
                    <div class="panel-toolbar">
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/add/" class="btn btn-primary"><i class="fal fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Order'];?>
</a>
                    </div>

                </div>
                <div class="panel-container">
                    <div class="panel-content">
                        <form class="form-horizontal" method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
customers/list/">
                            <div class="mb-3">
                                <div class="col-md-12">
                                    <div class="table-responsive">
                                        <table id="clx_datatable" class="table-striped w-100 table sys_table footable">
                                            <thead style="background: #f0f2ff">
                                            <tr>
                                                <th>#</th>
                                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Order'];?>
 #</th>
                                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
</th>
                                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Customer'];?>
</th>
                                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Total'];?>
</th>
                                                <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
</th>
                                                <th class="text-end" data-sort-ignore="true"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
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

                                                    <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/"><?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
</a> </td>
                                                    <td>

                                                        <a  href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/"><strong><?php echo $_smarty_tpl->tpl_vars['ds']->value['ordernum'];?>
</strong></a>

                                                    </td>

                                                    <td>
                                                        <?php ob_start();
echo $_smarty_tpl->tpl_vars['ds']->value['date_added'];
$_prefixVariable1 = ob_get_clean();
echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_prefixVariable1));?>

                                                    </td>
                                                    <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['cid'];?>
/"><strong><?php echo $_smarty_tpl->tpl_vars['ds']->value['cname'];?>
</strong></a> </td>

                                                    <td class="amount">
                                                        <?php echo formatCurrency($_smarty_tpl->tpl_vars['ds']->value['amount'],$_smarty_tpl->tpl_vars['ds']->value['currency_iso_code']);?>



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
                                                    <td class="text-end">
                                                        <div class="btn-group">
                                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/view/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
/" class="btn btn-primary btn-sm"><i class="fal fa-search"></i> </a>

                                                            <a href="#" class="btn btn-danger btn-sm cdelete" id="uid<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
"><i class="fal fa-trash-alt"></i> </a>
                                                        </div>

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
                        </form>
                    </div>





                </div>
            </div>
        </div>






    </div>
<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_150613458561d47c7f01ebb7_83248637 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_150613458561d47c7f01ebb7_83248637',
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

            $(".cdelete").click(function (e) {
                e.preventDefault();
                var oid = this.id;
                bootbox.confirm('<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
', function(result) {
                    if(result){
                        window.location.href = base_url + "delete/order/" + oid + '/';
                    }
                });
            });

        })
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
