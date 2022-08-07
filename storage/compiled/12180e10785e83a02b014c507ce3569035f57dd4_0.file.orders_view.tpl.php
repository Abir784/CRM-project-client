<?php
/* Smarty version 3.1.39, created on 2021-12-02 17:28:09
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/orders_view.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a94879aa0de5_59045462',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '12180e10785e83a02b014c507ce3569035f57dd4' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/orders_view.tpl',
      1 => 1635678024,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a94879aa0de5_59045462 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_76512674461a94879a8a4e9_81254167', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_192261598861a94879a9ef75_54606661', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_76512674461a94879a8a4e9_81254167 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_76512674461a94879a8a4e9_81254167',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-12">
            <div class="panel">

                <div class="panel-container">
                    <div class="panel-content">
                        <h3 style="color: #2f96f3;"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Order'];?>
 # <?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
</h3>
                        <hr>
                        <?php if (has_access($_smarty_tpl->tpl_vars['user']->value->roleid,'orders','edit')) {?>
                            <a href="javascript:;" onclick="confirmThenGoToUrl(event,'orders/set/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/Active/');" class="btn btn-primary">  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Accept'];?>
 </a>
                            <a href="javascript:;" onclick="confirmThenGoToUrl(event,'orders/set/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/Pending/');"  class="btn btn-warning">  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Pending'];?>
 </a>
                            <a href="javascript:;" onclick="confirmThenGoToUrl(event,'orders/set/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/Cancelled/');" class="btn btn-info"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancel'];?>
 </a>
                        <?php }?>


                        <?php if (has_access($_smarty_tpl->tpl_vars['user']->value->roleid,'orders','delete')) {?>
                            <a href="javascript:;" onclick="confirmThenGoToUrl(event,'delete/order/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/');" class="btn btn-danger">  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
 </a>
                        <?php }?>
                        <hr>
                        <h4><?php echo $_smarty_tpl->tpl_vars['_L']->value['Available Module for this Order'];?>
</h4>

                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
orders/module/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/" onclick="confirmThenGoToUrl(event,'orders/set/<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
/Active/');" class="btn btn-info">  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Default'];?>
 </a>

                        <hr>




                        <div class="row">
                            <div class="col-md-4">
                                <div class="well">
                                    <h4><?php echo $_smarty_tpl->tpl_vars['_L']->value['Order Number'];?>
 - <?php echo $_smarty_tpl->tpl_vars['order']->value->ordernum;?>
</h4>
                                    <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Customer'];?>
: </strong> <?php echo $_smarty_tpl->tpl_vars['order']->value->cname;?>
</p>
                                    <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Product_Service'];?>
: </strong> <?php echo $_smarty_tpl->tpl_vars['order']->value->stitle;?>
</p>
                                    <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Amount'];?>
: </strong> <span class="amount"><?php echo $_smarty_tpl->tpl_vars['order']->value->amount;?>
</span> </p>
                                    <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Date'];?>
: </strong><?php echo date($_smarty_tpl->tpl_vars['config']->value['df'],strtotime($_smarty_tpl->tpl_vars['order']->value->date_added));?>
</p>
                                    <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Status'];?>
: </strong>

                                        <?php if ($_smarty_tpl->tpl_vars['order']->value->status == 'Active') {?>
                                            <span class="label label-success"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['_L']->value[$_smarty_tpl->tpl_vars['order']->value->status]);?>
</span>
                                        <?php } else { ?>
                                            <span class="label label-danger"><?php echo ib_lan_get_line($_smarty_tpl->tpl_vars['_L']->value[$_smarty_tpl->tpl_vars['order']->value->status]);?>
</span>
                                        <?php }?>
                                    </p>
                                    <?php if ($_smarty_tpl->tpl_vars['order']->value->iid != '0') {?>
                                        <p><strong><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice'];?>
: </strong> <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
invoices/view/<?php echo $_smarty_tpl->tpl_vars['order']->value->iid;?>
/"><?php echo Invoice::getInvoiceNumberById($_smarty_tpl->tpl_vars['order']->value->iid);?>
</a> </p>
                                    <?php }?>



                                </div>
                            </div>
                            <div class="col-md-8">

                                <h4><?php echo $_smarty_tpl->tpl_vars['_L']->value['Activation Message'];?>
</h4>
                                <hr>
                                <form method="post" id="ib_form">
                                    <div class="mb-3">
                                        <label for="activation_subject"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Subject'];?>
</label>
                                        <input type="text" class="form-control" id="activation_subject" name="activation_subject" value="<?php echo $_smarty_tpl->tpl_vars['order']->value->activation_subject;?>
">
                                    </div>
                                    <div class="mb-3">
                                        <label for="activation_message"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Message'];?>
</label>
                                        <textarea class="form-control" id="activation_message" name="activation_message" rows="3"><?php echo $_smarty_tpl->tpl_vars['order']->value->activation_message;?>
</textarea>
                                    </div>

                                    <input type="hidden" name="oid" id="oid" value="<?php echo $_smarty_tpl->tpl_vars['order']->value->id;?>
">

                                    <button type="submit" id="btn_activation_message_save" class="btn btn-primary"><i class="fal fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
                                    <button type="submit" id="btn_activation_message_send" class="btn btn-danger"><i class="fal fa-send"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Send'];?>
</button>

                                </form>


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
/* {block "script"} */
class Block_192261598861a94879a9ef75_54606661 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_192261598861a94879a9ef75_54606661',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        var _url = base_url;


        tinymce.init({
            selector: '#activation_message',
            // language: ib_lang,
            relative_urls: false,
            remove_script_host: false,
            removed_menuitems: 'newdocument',
            forced_root_block : false,
            fontsize_formats: '8pt 10pt 12pt 14pt 18pt 24pt 36pt',
            setup: function(ed) {
                ed.on('init', function() {
                    this.getDoc().body.style.fontSize = '14px';
                });
            },
            table_default_styles: {
                width: '100%'
            },
            plugins: [
                'advlist autoresize autolink lists link image charmap print preview hr anchor pagebreak codesample',
                'searchreplace wordcount visualblocks visualchars code',
                'media nonbreaking save table contextmenu directionality',
                'paste textcolor colorpicker textpattern imagetools responsivefilemanager'
            ],
            toolbar1: 'fontselect fontsizeselect  insertfile | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent',
            toolbar2: '| responsivefilemanager | undo redo rtl print preview media image | forecolor backcolor link | codesample',
            //  image_advtab: true ,
            // external_filemanager_path: app_url+ "system/lib/filemanager/",
            //  filemanager_title:"File Manager" ,
            // external_plugins: { "filemanager" : app_url + "system/lib/filemanager/plugin.min.js"}
        });

        var $btn_activation_message_save = $("#btn_activation_message_save");
        var $btn_activation_message_send = $("#btn_activation_message_send");
        var $ib_form = $("#ib_form");

        $btn_activation_message_save.on('click', function(e) {
            e.preventDefault();

            $ib_form.block({ message: block_msg });
            $.post( _url + "orders/save_activation/", {

                oid: $('#oid').val(),
                activation_subject: $('#activation_subject').val(),
                activation_message: tinyMCE.activeEditor.getContent(),
                send_email: 'no'

            })
                .done(function( data ) {

                    $ib_form.unblock();

                    if ($.isNumeric(data)) {

                        toastr.success(_L['data_updated']);

                    }

                    else {
                        toastr.error(data);
                    }

                });

        });



        $btn_activation_message_send.on('click', function(e) {
            e.preventDefault();

            $ib_form.block({ message: block_msg });
            $.post( _url + "orders/save_activation/", {

                oid: $('#oid').val(),
                activation_subject: $('#activation_subject').val(),
                activation_message: tinyMCE.activeEditor.getContent(),
                send_email: 'yes'

            })
                .done(function( data ) {

                    $ib_form.unblock();

                    if ($.isNumeric(data)) {

                        toastr.success(_L['email_sent']);

                    }

                    else {
                        toastr.error(data);
                    }

                });

        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
