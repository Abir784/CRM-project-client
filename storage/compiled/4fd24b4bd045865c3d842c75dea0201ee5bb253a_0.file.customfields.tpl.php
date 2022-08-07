<?php
/* Smarty version 3.1.39, created on 2022-01-09 06:00:01
  from '/home/worlsxzo/public_html/ui/theme/default/customfields.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61da79e1517b72_56765118',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '4fd24b4bd045865c3d842c75dea0201ee5bb253a' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/customfields.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61da79e1517b72_56765118 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_196978685061da79e1500311_28066988', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_57257689661da79e1515b75_05442899', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_196978685061da79e1500311_28066988 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_196978685061da79e1500311_28066988',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">


        <div class="col-md-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Custom Fields'];?>
</h2>

                </div>

                <div class="panel-container">
                    <div class="panel-content" id="application_ajaxrender">

                        <form id="rform">

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['cf']->value, 'c');
$_smarty_tpl->tpl_vars['c']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['c']->value) {
$_smarty_tpl->tpl_vars['c']->do_else = false;
?>
                                <div style="border-radius: 4px; padding: 20px;" class="bg-subtlelight-fade">
                                    <div class="mb-3">
                                        <label for="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['c']->value['fieldname'];?>
</label>
                                        <?php if (($_smarty_tpl->tpl_vars['c']->value['fieldtype']) == 'text') {?>

                                            <input type="text" id="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" class="form-control">
                                            <?php if (($_smarty_tpl->tpl_vars['c']->value['description']) != '') {?>
                                                <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['c']->value['description'];?>
</span>
                                            <?php }?>

                                        <?php } elseif (($_smarty_tpl->tpl_vars['c']->value['fieldtype']) == 'password') {?>

                                            <input type="password" id="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" class="form-control">
                                            <?php if (($_smarty_tpl->tpl_vars['c']->value['description']) != '') {?>
                                                <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['c']->value['description'];?>
</span>
                                            <?php }?>

                                        <?php } elseif (($_smarty_tpl->tpl_vars['c']->value['fieldtype']) == 'dropdown') {?>
                                            <select id="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" class="form-control">
                                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, explode(',',$_smarty_tpl->tpl_vars['c']->value['fieldoptions']), 'fo');
$_smarty_tpl->tpl_vars['fo']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['fo']->value) {
$_smarty_tpl->tpl_vars['fo']->do_else = false;
?>
                                                    <option><?php echo $_smarty_tpl->tpl_vars['fo']->value;?>
</option>
                                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                            </select>
                                            <?php if (($_smarty_tpl->tpl_vars['c']->value['description']) != '') {?>
                                                <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['c']->value['description'];?>
</span>
                                            <?php }?>


                                        <?php } elseif (($_smarty_tpl->tpl_vars['c']->value['fieldtype']) == 'textarea') {?>

                                            <textarea id="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" name="cf<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
" class="form-control" rows="3"></textarea>
                                            <?php if (($_smarty_tpl->tpl_vars['c']->value['description']) != '') {?>
                                                <span class="help-block"><?php echo $_smarty_tpl->tpl_vars['c']->value['description'];?>
</span>
                                            <?php }?>

                                        <?php } else { ?>

                                        <?php }?>
                                        <div class="btn-group my-3">
                                            <a href="#" class="btn btn-primary sys_edit" id="f<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
"><i class="fal fa-pencil"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
</a>

                                            <a href="#" class="btn btn-danger cdelete" id="d<?php echo $_smarty_tpl->tpl_vars['c']->value['id'];?>
"><i class="fal fa-trash-alt"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Delete'];?>
</a>
                                        </div>
                                    </div>
                                </div>
                                <?php
}
if ($_smarty_tpl->tpl_vars['c']->do_else) {
?>

                                <h4 class="muted text-center mb-3"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Custom Fields Not Available'];?>
</h4>

                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                            <p class=" text-center"><a href="" class="btn btn-outline btn-success sys_add"><i class="fal fa-plus"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Custom Field'];?>
</a></p>


                        </form>

                    </div>
                </div>

            </div>



        </div>


    </div>
    <input type="hidden" id="_lan_are_you_sure" value="<?php echo $_smarty_tpl->tpl_vars['_L']->value['are_you_sure'];?>
">

<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_57257689661da79e1515b75_05442899 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_57257689661da79e1515b75_05442899',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(document).ready(function () {

            var _url = $("#_url").val();
            var sysrender = $('#cloudonex_body');
            sysrender.on('click', '.cdelete', function(e){
                e.preventDefault();
                var id = this.id;
                var lan_msg = $("#_lan_are_you_sure").val();
                bootbox.confirm(lan_msg, function(result) {
                    if(result){
                        var _url = $("#_url").val();
                        window.location.href = _url + "delete/customfield/" + id + '/';
                    }
                });
            });



            sysrender.on('click', '.sys_add', function(e){
                e.preventDefault();

                $.fancybox.open({
                    src  : _url + 'settings/customfields-ajax-add/',
                    type : 'ajax',
                    opts : {
                        afterShow : function( instance, current ) {

                        }
                    }
                });

            });


            sysrender.on('click', '#add_submit', function(){

                $.post(base_url + 'settings/customfields-post/', $('#add_form').serialize(), function(data){

                    var _url = $("#_url").val();
                    if ($.isNumeric(data)) {

                        location.reload();
                    }
                    else {

                        sysrender.find('.modal-body')
                            .prepend('<div class="alert alert-danger fade in">' + data +

                                '</div>');

                    }
                });

            });


            sysrender.on('click', '.sys_edit', function(e){
                e.preventDefault();

                var vid = this.id;
                var id = vid.replace("f", "");
                id = vid.replace("d", "");

                $.fancybox.open({
                    src  : base_url + 'settings/customfields-ajax-edit/' + id,
                    type : 'ajax',
                    opts : {
                        afterShow : function( instance, current ) {

                        }
                    }
                });



            });


            sysrender.on('click', '#edit_submit', function(){


                var _url = $("#_url").val();
                $.post(_url + 'settings/customfield-edit-post/', $('#edit_form').serialize(), function(data){

                    var _url = $("#_url").val();
                    if ($.isNumeric(data)) {

                        location.reload();
                    }
                    else {

                        sysrender
                            .find('.modal-body')
                            .prepend('<div class="alert alert-danger fade in">' + data +

                                '</div>');

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
