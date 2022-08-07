<?php
/* Smarty version 3.1.39, created on 2021-10-18 16:34:33
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/settings_units.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_616dda591af8b4_58723892',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8e81a472ed5c673dc4797acf0179f92792e8f866' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/settings_units.tpl',
      1 => 1592853945,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_616dda591af8b4_58723892 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1792809904616dda59187ff3_71657641', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1847447591616dda591ae523_15637338', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_1792809904616dda59187ff3_71657641 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1792809904616dda59187ff3_71657641',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">



        <div class="col-md-12">



            <div class="panel">
                <div class="panel-hdr">
                    <h2>Units</h2>
                    <div class="panel-toolbar">

                        <a href="#" class="btn btn-success add_item" id="add_unit"><i class="fal fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Create New'];?>
</a>


                    </div>
                </div>
                <div class="panel-container">
                    <div class="panel-content">
                        <div class="table-responsive">
                            <table class="table table-bordered table-hover">
                                <thead>
                                <tr>
                                    <th class="bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Unit'];?>
</th>
                                    <th class="bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</th>
                                    <th class="text-center bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                                </tr>
                                </thead>
                                <tbody>


                                <?php if (count($_smarty_tpl->tpl_vars['units']->value) > 0) {?>

                                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['units']->value, 'unit');
$_smarty_tpl->tpl_vars['unit']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['unit']->value) {
$_smarty_tpl->tpl_vars['unit']->do_else = false;
?>
                                        <tr data-id="<?php echo $_smarty_tpl->tpl_vars['unit']->value['id'];?>
">
                                            <td> <a class="cedit" id="ae<?php echo $_smarty_tpl->tpl_vars['unit']->value['id'];?>
" href="#"><?php echo $_smarty_tpl->tpl_vars['unit']->value['name'];?>
</a>

                                            </td>
                                            <td><?php echo $_smarty_tpl->tpl_vars['unit']->value['type'];?>
</td>
                                            <td class="text-right">
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
" id="be<?php echo $_smarty_tpl->tpl_vars['unit']->value['id'];?>
" class="btn btn-dark cedit" data-toggle="tooltip" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
"><i class="fal fa-pencil"></i> </a>


                                                <a href="#" class="btn btn-danger cdelete" id="c<?php echo $_smarty_tpl->tpl_vars['unit']->value['id'];?>
" data-toggle="tooltip" title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
"><i class="fal fa-trash-alt"></i> </a>
                                            </td>

                                        </tr>
                                    <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                    <?php } else { ?>
                                    <tr>
                                        <td colspan="3">
                                            <?php echo $_smarty_tpl->tpl_vars['_L']->value['No Data Available'];?>

                                        </td>
                                    </tr>
                                <?php }?>







                                </tbody>
                            </table>
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
/* {block "script"} */
class Block_1847447591616dda591ae523_15637338 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_1847447591616dda591ae523_15637338',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function() {

            function modal_after_show() {
                $('#modal_submit').on('click', function(e){

                    e.preventDefault();

                    $('#modal_form').block();

                    $.post( base_url + "settings/add_unit/", $("#ib_modal_form").serialize())
                        .done(function( data ) {

                            if ($.isNumeric(data)) {

                                location.reload();

                            }

                            else {
                                $('#modal_form').unblock();
                                toastr.error(data);
                            }

                        });

                });
            }

            var _url = $("#_url").val();


            $('.add_item').on('click', function(e){

                e.preventDefault();

                $.fancybox.open({
                    src  :  base_url + 'settings/modal_unit/',
                    type : 'ajax',
                    opts : {
                        afterShow : function( instance, current ) {
                            modal_after_show();
                        }
                    }
                });

            });





            $(".cdelete").click(function (e) {
                e.preventDefault();
                var id = this.id;
                bootbox.confirm(_L['are_you_sure'], function(result) {
                    if(result){
                        var _url = $("#_url").val();
                        window.location.href = _url + "delete/unit/" + id + '/';
                    }
                });
            });


            $(".cedit").click(function (e) {
                e.preventDefault();
                var id = this.id;

                $.fancybox.open({
                    src  :  _url + 'settings/modal_unit/'+ id + '/',
                    type : 'ajax',
                    opts : {
                        afterShow : function( instance, current ) {
                            modal_after_show();
                        }
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
