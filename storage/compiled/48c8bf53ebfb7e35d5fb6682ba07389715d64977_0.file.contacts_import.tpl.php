<?php
/* Smarty version 3.1.39, created on 2021-12-31 11:30:27
  from '/home/worlsxzo/public_html/ui/theme/default/contacts_import.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61cee9d3d88d79_73786829',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '48c8bf53ebfb7e35d5fb6682ba07389715d64977' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/contacts_import.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61cee9d3d88d79_73786829 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_102451795561cee9d3d82733_45721712', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_167799941561cee9d3d87a84_83150929', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_102451795561cee9d3d82733_45721712 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_102451795561cee9d3d82733_45721712',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="panel">
        <div class="row">
            <div class="col-md-12 m-b-sm">

                <div class="panel-hdr">
                    <div class="btn-group">
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/list/" class="btn btn-sm btn-danger"> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Cancel'];?>
</a>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
storage/system/contacts.csv" class="btn btn-sm btn-primary"><i class="fal fa-download"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Download Sample File'];?>
</a>
                    </div>

                </div>

            </div>

        </div>
    </div>


    <div class="row">
        <div class="col-md-12">

            <div class="panel panel-default" id="uploading_inside">
                <div class="panel-body">
                    <form action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
contacts/csv_upload/" class="dropzone" id="upload_container">

                        <div class="dz-message">
                            <h3> <i class="fal fa-cloud-upload"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Drop CSV File Here'];?>
</h3>
                            <br />
                            <span class="note"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Or Click to Upload'];?>
</span>
                        </div>

                    </form>

                </div>
            </div>

        </div>

    </div>


    <input type="hidden" id="_msg_importing" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Importing'];?>
 ...">
    <input type="hidden" id="_msg_are_you_sure" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
">

<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_167799941561cee9d3d87a84_83150929 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_167799941561cee9d3d87a84_83150929',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        Dropzone.autoDiscover = false;
        $(function() {
            var _url = $("#_url").val();
            var ib_file = new Dropzone("#upload_container",
                {
                    url: _url + "contacts/csv_upload/",
                    maxFiles: 1,
                    acceptedFiles: ".csv"
                }
            );

            //ib_file.on("addedfile", function(file) {
            //
            //});

            ib_file.on("success", function(file) {

                var _msg_importing = $('#_msg_importing').val();
                $('#uploading_inside').block({
                    message: "<h3>" + _msg_importing +"</h3>" ,
                    css: {
                        padding:        0,
                        margin:         0,
                        width:          '30%',
                        top:            '40%',
                        left:           '35%',
                        textAlign:      'center',
                        color:          '#FFFFFF',
                        border:         '0',
                        backgroundColor:'transparent',
                        cursor:         'wait'
                    }
                });
                //   $('#uploading_inside').block({ message: null });

                var _url = $("#_url").val();

                $.post(_url + 'contacts/csv_uploaded/', {

                    name: file.name

                })
                    .done(function (data) {
                        //location.reload();

                        window.location.replace(_url + "contacts/list/");


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
