<?php
/* Smarty version 3.1.39, created on 2022-01-09 06:01:04
  from '/home/worlsxzo/public_html/ui/theme/default/tickets_departments.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61da7a2055aa32_61166397',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3cf76da22c37a63c416b108cbff6aedc022b13f7' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/tickets_departments.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61da7a2055aa32_61166397 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_189296153861da7a20549009_39101171', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_33079932061da7a2054ab67_88395633', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_97841304561da7a20558dd7_97859883', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_189296153861da7a20549009_39101171 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_189296153861da7a20549009_39101171',
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
class Block_33079932061da7a2054ab67_88395633 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_33079932061da7a2054ab67_88395633',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Support Ticket Departments'];?>
</h2>

                    <div class="panel-toolbar">
                        <div class="btn-group">
                            <a data-bs-toggle="modal" href="#modal_add_item" class="btn btn-success mb-md"><i class="fal fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Department'];?>
</a>

                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
tickets/admin/departments_reorder/" class="btn btn-primary mb-md"><i class="fal fa-arrows"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Reorder'];?>
</a>
                        </div>
                    </div>

                </div>

                <div class="panel-container">
                    <div class="panel-content">

                        <table class="table table-striped sys_table">
                            <thead style="background: #f0f2ff">
                            <tr>

                                <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Department Name'];?>
</th>

                                <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Email'];?>
</th>
                                <th class="h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
</th>
                                <th class="text-end h6"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['ds']->value, 'd');
$_smarty_tpl->tpl_vars['d']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['d']->value) {
$_smarty_tpl->tpl_vars['d']->do_else = false;
?>
                                <tr>

                                    <td class="h6"><?php echo $_smarty_tpl->tpl_vars['d']->value['dname'];?>
</td>

                                    <td class="h6 text-info"><?php echo $_smarty_tpl->tpl_vars['d']->value['email'];?>
</td>

                                    <td>
                                        <?php if ($_smarty_tpl->tpl_vars['d']->value['hidden'] == 'Yes') {?>
                                            <span class="badge badge-danger"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Inactive'];?>
</span>
                                        <?php } else { ?>
                                            <span class="badge badge-success"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Active'];?>
</span>
                                        <?php }?>

                                    </td>

                                    <td class="text-end">

                                        <div class="btn-group">
                                            <a href="#" class="btn btn-info btn-sm item_edit" id="e<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>
                                            <a href="#" class="btn btn-danger btn-sm cdelete" onclick="confirmThenGoToUrl(event,'tickets/admin/delete_department/<?php echo $_smarty_tpl->tpl_vars['d']->value['id'];?>
')"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</a>
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



        </div>



    </div>


    <div class="modal fade" id="modal_add_item" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-lg modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add New Department'];?>
</h5>
                    <button type="button" class="close btn btn-danger" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fal fa-times"></i></span>
                    </button>
                </div>
                <div class="modal-body">
                    <form id="ib_modal_form">


                        <div class="mb-3">
                            <label for="department_name"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
                            <input type="text" name="department_name" class="form-control" id="department_name">
                        </div>



                        <div class="mb-3">
                            <label for="email"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Email'];?>
</label>
                            <input type="email" class="form-control" id="email" name="email">
                        </div>














                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Close'];?>
</button>
                    <button type="button" id="btn_modal_action" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
                </div>
            </div>
        </div>
    </div>




<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_97841304561da7a20558dd7_97859883 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_97841304561da7a20558dd7_97859883',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


<?php echo '<script'; ?>
>
    $(function() {

        var _url = base_url;

        $btn_modal_action = $("#btn_modal_action");

        $modal_add_item = $("#modal_add_item");

        $btn_modal_action.on('click', function(e) {
            e.preventDefault();
            $modal_add_item.block({ message: block_msg });
            $.post( _url + "tickets/admin/departments_post/", $("#ib_modal_form").serialize())
                .done(function( data ) {

                    if ($.isNumeric(data)) {

                        location.reload();

                    }

                    else {
                        $modal_add_item.unblock();
                        toastr.error(data);
                    }

                });

        });










        var $modal = $('#cloudonex_body');

        $('.item_edit').on('click', function(e){
            e.preventDefault();
            var id = this.id;
            $.fancybox.open({
                src  : base_url + 'tickets/admin/edit_department/'+ id + '/',
                type : 'ajax',
                opts : {
                    afterShow : function( instance, current ) {
                        $('#edit_content').redactor();
                    },
                    touch: false,
                    autoFocus: false,
                }
            });

        });




        $modal.on('click', '.test_imap', function(e){
            e.preventDefault();
            $.post( base_url + "tickets/admin/imap_test/", $("#edit_form").serialize())
                .done(function( data ) {

                    if ($.isNumeric(data)) {
                        $.fancybox.close()
                        toastr.success("Connected Successfully");

                    }

                    else {
                        $.fancybox.close()
                        toastr.error(data);
                    }

                });


        });


        $modal.on('click', '.edit_submit', function(e){
            e.preventDefault();

            $.post( _url + "tickets/admin/departments_edit/", $("#edit_form").serialize())
                .done(function( data ) {

                    if ($.isNumeric(data)) {

                        location.reload();

                    }

                    else {
                        $.fancybox.close();
                        toastr.error(data);
                    }

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
