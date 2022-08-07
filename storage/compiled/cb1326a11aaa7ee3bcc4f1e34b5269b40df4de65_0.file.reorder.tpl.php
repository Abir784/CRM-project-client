<?php
/* Smarty version 3.1.39, created on 2022-01-04 07:05:29
  from '/home/worlsxzo/public_html/ui/theme/default/reorder.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d3f1b9aed358_19071335',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cb1326a11aaa7ee3bcc4f1e34b5269b40df4de65' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/reorder.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d3f1b9aed358_19071335 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_95947411361d3f1b9adb648_93653088', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_135657651361d3f1b9aec0c8_09593837', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_95947411361d3f1b9adb648_93653088 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_95947411361d3f1b9adb648_93653088',
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
class Block_135657651361d3f1b9aec0c8_09593837 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_135657651361d3f1b9aec0c8_09593837',
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
