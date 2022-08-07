<?php
/* Smarty version 3.1.39, created on 2021-11-29 12:28:39
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/reorder.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a50dc7a2b9a8_47103619',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7fdb8ea2cec2726bb5803a1fd2ec6ab70fdcfc53' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/reorder.tpl',
      1 => 1591350431,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a50dc7a2b9a8_47103619 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_11155536061a50dc7a1fd22_61080714', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_167085832661a50dc7a2a412_67872749', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_11155536061a50dc7a1fd22_61080714 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_11155536061a50dc7a1fd22_61080714',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2><?php echo $_smarty_tpl->tpl_vars['_L']->value['Reorder'];?>
 <?php echo $_smarty_tpl->tpl_vars['ritem']->value;?>
 <?php echo $_smarty_tpl->tpl_vars['_L']->value['Positions'];?>
</h2>

                </div>

                <div class="panel-container">
                    <div class="panel-content">


                        <h3 id="resp"><?php echo $_smarty_tpl->tpl_vars['_L']->value['drag_n_drop_help'];?>
</h3>
                        <div class="hr-line-dashed"></div>
                        <ol class="rounded-list" id="sorder">


                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
$_smarty_tpl->tpl_vars['ds']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
$_smarty_tpl->tpl_vars['ds']->do_else = false;
?>
                                <li id='recordsArray_<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
'><a href="javascript:void(0)"><?php echo $_smarty_tpl->tpl_vars['ds']->value[$_smarty_tpl->tpl_vars['display_name']->value];?>
</a></li>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                        </ol>

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
class Block_167085832661a50dc7a2a412_67872749 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_167085832661a50dc7a2a412_67872749',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {
            $(function() {
                $("#sorder").sortable({ opacity: 0.6, cursor: 'move', update: function() {
                        var order = $(this).sortable("serialize") + '&action=<?php echo $_smarty_tpl->tpl_vars['action']->value;?>
';
                        $("#resp").html('Saving...');
                        $.post("<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
reorder/reorder-post", order, function(theResponse){
                            $("#resp").html(theResponse);
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
