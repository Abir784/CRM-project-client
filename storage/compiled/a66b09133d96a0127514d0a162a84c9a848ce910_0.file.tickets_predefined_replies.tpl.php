<?php
/* Smarty version 3.1.39, created on 2022-08-05 14:44:39
  from 'C:\xampp\htdocs\well-known\ui\theme\default\tickets_predefined_replies.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62ed1ec7154474_27238063',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'a66b09133d96a0127514d0a162a84c9a848ce910' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\tickets_predefined_replies.tpl',
      1 => 1640880070,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62ed1ec7154474_27238063 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_19934672262ed1ec7140574_32949114', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_154478631862ed1ec71429f1_25608454', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_132965817562ed1ec7151814_02316352', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_19934672262ed1ec7140574_32949114 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_19934672262ed1ec7140574_32949114',
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
class Block_154478631862ed1ec71429f1_25608454 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_154478631862ed1ec71429f1_25608454',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2>Predefined Replies</h2>
                    <div class="panel-toolbar">
                        <div class="btn-group">
                            <a data-bs-toggle="modal" href="#modal_add_item" class="btn btn-success mb-md"><i class="fal fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Predefined Reply'];?>
</a>

                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
tickets/admin/predefined_replies_reorder/" class="btn btn-primary mb-md"><i class="fal fa-arrows"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Reorder Predefined Replies'];?>
</a>
                        </div>
                    </div>
                </div>

                <div class="panel-container">
                    <div class="panel-content">

                        <table class="table table-striped " id="clx_datatable">
                            <thead style="background: #f0f2ff">
                            <tr>

                                <th>Title</th>
                                <th class="text-end"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                            </tr>
                            </thead>
                            <tbody>

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['replies']->value, 'reply');
$_smarty_tpl->tpl_vars['reply']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['reply']->value) {
$_smarty_tpl->tpl_vars['reply']->do_else = false;
?>

                                <tr>

                                    <td><?php echo $_smarty_tpl->tpl_vars['reply']->value['title'];?>
</td>


                                    <td class="text-end">
                                        <div class="btn-group">
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
tickets/admin/predefined_reply_edit/<?php echo $_smarty_tpl->tpl_vars['reply']->value['id'];?>
" class="btn btn-info btn-sm item_edit"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>
                                            <a href="#" class="btn btn-danger btn-sm cdelete" id="d<?php echo $_smarty_tpl->tpl_vars['reply']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
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
                    <div class="row">



                        <div class="col-md-12">

                            <form id="ib_modal_form">
                                <div class="mb-3">
                                    <label for="title"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Title'];?>
</label>
                                    <input type="text" name="title" class="form-control" id="title">
                                </div>


                                <div class="mb-3">
                                    <label for="message"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Message'];?>
</label>
                                    <textarea id="message" name="message" class="form-control" rows="5"></textarea>
                                </div>



                            </form>
                        </div>




                    </div>
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
class Block_132965817562ed1ec7151814_02316352 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_132965817562ed1ec7151814_02316352',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function() {

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

            var _url = base_url;

            var $modal_add_item = $("#modal_add_item");

            var $message = $("#message");

            $modal_add_item.on('shown.bs.modal', function() {
                $message.redactor({
                    minHeight: 200,
                    paragraphize: false,
                    replaceDivs: false,
                    linebreaks: true
                });
            });

            var $btn_modal_action = $("#btn_modal_action");


            $btn_modal_action.on('click', function(e) {
                e.preventDefault();

                $modal_add_item.block({ message: block_msg });
                $.post( _url + "tickets/admin/predefined_replies_post/", $("#ib_modal_form").serialize())
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


            $(".cdelete").click(function (e) {
                e.preventDefault();
                var id = this.id;
                bootbox.confirm('Are you sure?', function(result) {
                    if(result){

                        window.location.href = _url + "tickets/admin/predefined_replies_delete/" + id + "/";
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
