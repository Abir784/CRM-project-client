<?php
/* Smarty version 3.1.39, created on 2022-01-04 05:09:50
  from '/home/worlsxzo/public_html/ui/theme/default/documents_view.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d3d69ee72361_45670231',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8bc56bd041828cdf3c55ee3801b6e6c47e1e3b39' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/documents_view.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d3d69ee72361_45670231 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_61416315361d3d69ee634c2_75502936', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_214433812561d3d69ee6fd13_15614267', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_61416315361d3d69ee634c2_75502936 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_61416315361d3d69ee634c2_75502936',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-12">
            <div class="panel" id="ib_panel">


                <div class="panel-container">
                    <div class="panel-content">
                        <input type="hidden" name="did" id="did" value="<?php echo $_smarty_tpl->tpl_vars['doc']->value->id;?>
">
                        <h3 style="color: #2f96f3;"><?php echo $_smarty_tpl->tpl_vars['doc']->value->title;?>
</h3>
                        <hr>
                        <div class="checkbox">
                            <label>
                                <input type="checkbox" id="is_global" name="is_global" <?php if ($_smarty_tpl->tpl_vars['doc']->value->is_global == '1') {?>checked<?php }?>> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Available for all Customers'];?>

                            </label>
                        </div>

                        <hr>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/dl/<?php echo $_smarty_tpl->tpl_vars['doc']->value->id;?>
_<?php echo $_smarty_tpl->tpl_vars['doc']->value->file_dl_token;?>
" class="btn btn-primary "><i class="fal fa-download"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Download'];?>
 </a>

                        <?php if (has_access($_smarty_tpl->tpl_vars['user']->value->roleid,'documents','delete')) {?>
                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
delete/document/<?php echo $_smarty_tpl->tpl_vars['doc']->value->id;?>
/" class="btn btn-danger"><i class="fal fa-trash"></i>  <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
 </a>
                        <?php }?>


                        <hr>

                        <?php if ($_smarty_tpl->tpl_vars['ext']->value == 'jpg' || $_smarty_tpl->tpl_vars['ext']->value == 'png' || $_smarty_tpl->tpl_vars['ext']->value == 'gif') {?>
                            <img src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
storage/docs/<?php echo $_smarty_tpl->tpl_vars['doc']->value->file_path;?>
" class="img-responsive" alt="<?php echo $_smarty_tpl->tpl_vars['doc']->value->title;?>
">
                        <?php }?>



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
class Block_214433812561d3d69ee6fd13_15614267 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_214433812561d3d69ee6fd13_15614267',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {
            $(document).ready(function () {

                var _url = $("#_url").val();

                var ib_panel = $("#ib_panel");

                var did = $("#did").val();


                $('#is_global').change(function() {

                    ib_panel.block({ message: block_msg });


                    if($(this).prop('checked')){

                        $.post( _url+'documents/set_global/', { did: did, val: "1" })
                            .done(function( data ) {
                                ib_panel.unblock();
                                location.reload();
                            });

                    }
                    else{
                        $.post( _url+'documents/set_global/', { did: did, val: "0" })
                            .done(function( data ) {
                                ib_panel.unblock();
                                location.reload();
                            });
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
