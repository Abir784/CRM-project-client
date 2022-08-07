<?php
/* Smarty version 3.1.39, created on 2022-01-04 05:06:18
  from '/home/worlsxzo/public_html/ui/theme/default/client_uploads.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d3d5ca395a15_38413702',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '75c94b0e30f77dc231f76c305cd3ab0aeda9a576' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/client_uploads.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d3d5ca395a15_38413702 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_185413169861d3d5ca37d5d8_07542042', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_146934098461d3d5ca3944c9_12055607', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "content"} */
class Block_185413169861d3d5ca37d5d8_07542042 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_185413169861d3d5ca37d5d8_07542042',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <div class="row">
        <div class="col-md-12">

            <div class="card border" id="t_options">

                <div class="card-header">
                    <ul class="nav nav-tabs card-header-tabs">
                        <li class="nav-item"><a class="nav-link" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/downloads"><i class="fal fa-th"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Downloads'];?>
</a></li>
                        <li class="nav-item"><a class="nav-link active" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/uploads"><i class="fal fa-tasks"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Uploads'];?>
</a></li>
                    </ul>
                </div>




                <div class="card-body">




                    <div class="tab-content">
                        <div id="details" class="tab-pane fade show active ib-tab-box">



                            <a data-bs-toggle="modal" href="#modal_add_item" class="btn btn-primary add_document waves-effect waves-light" id="add_document"><i class="fal fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['New Document'];?>
</a>

                            <hr>

                            <div class="row">
                                <div class="col-lg-12">

                                    <?php if (count($_smarty_tpl->tpl_vars['files']->value) > 0) {?>

                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['files']->value, 'file');
$_smarty_tpl->tpl_vars['file']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['file']->value) {
$_smarty_tpl->tpl_vars['file']->do_else = false;
?>

                                            <div class="file-box">
                                                <div class="file">
                                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/dl/<?php echo $_smarty_tpl->tpl_vars['file']->value->id;?>
_<?php echo $_smarty_tpl->tpl_vars['file']->value->file_dl_token;?>
/">
                                                        <span class="corner"></span>

                                                        <div class="icon">
                                                            <?php if ($_smarty_tpl->tpl_vars['file']->value->file_mime_type == 'jpg' || $_smarty_tpl->tpl_vars['file']->value->file_mime_type == 'png' || $_smarty_tpl->tpl_vars['file']->value->file_mime_type == 'gif') {?>
                                                                <i class="fal fa-file-image-o"></i>
                                                            <?php } elseif ($_smarty_tpl->tpl_vars['file']->value->file_mime_type == 'pdf') {?>
                                                                <i class="fal fa-file-pdf-o"></i>
                                                            <?php } elseif ($_smarty_tpl->tpl_vars['file']->value->file_mime_type == 'zip') {?>
                                                                <i class="fal fa-file-archive-o"></i>
                                                            <?php } else { ?>
                                                                <i class="fal fa-file"></i>
                                                            <?php }?>
                                                        </div>
                                                        <div class="file-name">
                                                            <?php echo $_smarty_tpl->tpl_vars['file']->value->title;?>

                                                            <br/>
                                                            <small>
                                                                <?php if (((isset($_smarty_tpl->tpl_vars['file']->value->updated_at)) && $_smarty_tpl->tpl_vars['file']->value->updated_at != '')) {?>
                                                                    <?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['file']->value->updated_at));?>

                                                                <?php } else { ?>
                                                                    <?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['file']->value->created_at));?>

                                                                <?php }?>

                                                            </small>
                                                        </div>
                                                    </a>
                                                </div>

                                            </div>

                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                    <?php } else { ?>
                                        <?php echo $_smarty_tpl->tpl_vars['_L']->value['No Data Available'];?>

                                    <?php }?>






                                </div>
                            </div>

                        </div>



                    </div>





                </div>

            </div>



        </div>
    </div>


    <div class="modal fade" id="modal_add_item" tabindex="-1" role="dialog" aria-hidden="true">
        <div class="modal-dialog modal-md modal-dialog-centered" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title"><?php echo $_smarty_tpl->tpl_vars['_L']->value['New Document'];?>
</h5>
                    <button type="button" class="close btn btn-danger" data-bs-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true"><i class="fal fa-times"></i></span>
                    </button>
                </div>
                <div class="modal-body">
                    <form>
                        <div class="mb-3">
                            <label for="doc_title"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Title'];?>
</label>
                            <input type="text" class="form-control" id="doc_title" name="doc_title">

                        </div>

                    </form>

                    <hr>

                    <form action="" class="dropzone" id="upload_container">

                        <div class="dz-message">
                            <h3> <i class="fal fa-cloud-upload"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Drop File Here'];?>
</h3>
                            <br />
                            <span class="note"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Click to Upload'];?>
</span>
                        </div>

                    </form>
                    <hr>

                    <p><?php echo $_smarty_tpl->tpl_vars['_L']->value['Upload Maximum Size'];?>
: <?php echo $_smarty_tpl->tpl_vars['upload_max_size']->value;?>
</p>
                    <p><?php echo $_smarty_tpl->tpl_vars['_L']->value['POST Maximum Size'];?>
: <?php echo $_smarty_tpl->tpl_vars['post_max_size']->value;?>
</p>

                </div>
                <div class="modal-footer">
                    <input type="hidden" name="file_link" id="file_link" value="">
                    <button type="button" data-bs-dismiss="modal" class="btn btn-danger"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Close'];?>
</button>
                    <button type="button" id="btn_add_file" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Submit'];?>
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
class Block_146934098461d3d5ca3944c9_12055607 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_146934098461d3d5ca3944c9_12055607',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        Dropzone.autoDiscover = false;
        $(function() {

            var _url = base_url;



            var $modal = $('#cloudonex_body');

            $('[data-bs-toggle="tooltip"]').tooltip();

            var $btn_add_file = $("#btn_add_file");

            var $file_link = $("#file_link");

            var upload_resp;




            var ib_file = new Dropzone("#upload_container",
                {
                    url: _url + "client/document_upload/",
                    maxFiles: 1
                }
            );


            ib_file.on("sending", function() {

                $btn_add_file.prop('disabled', true);

            });

            ib_file.on("success", function(file,response) {

                $btn_add_file.prop('disabled', false);

                upload_resp = response;

                if(upload_resp.success == 'Yes'){

                    toastr.success(upload_resp.msg);
                    $file_link.val(upload_resp.file);


                }
                else{
                    toastr.error(upload_resp.msg);
                }


            });




            var $doc_title = $("#doc_title");

            var is_global = '0';


            $btn_add_file.on('click', function(e) {
                e.preventDefault();



                $.post( _url + "client/save_upload/", { title: $doc_title.val(), file_link: $file_link.val() })
                    .done(function( data ) {

                        if ($.isNumeric(data)) {

                            location.reload();

                        }

                        else {
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
