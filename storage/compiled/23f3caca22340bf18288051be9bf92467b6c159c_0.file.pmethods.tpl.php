<?php
/* Smarty version 3.1.39, created on 2022-01-05 06:46:58
  from '/home/worlsxzo/public_html/ui/theme/default/pmethods.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d53ee2b12bc9_12237170',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '23f3caca22340bf18288051be9bf92467b6c159c' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/pmethods.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d53ee2b12bc9_12237170 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_55469973961d53ee2b001b5_51473837', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_89567448561d53ee2b11a51_93284200', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_55469973961d53ee2b001b5_51473837 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_55469973961d53ee2b001b5_51473837',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="widget-1 col-md-6 col-sm-12">
            <div class="panel">
                <div class="panel-hdr">

                    <h2 class="panel-title"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add'];?>
</h2>
                </div>
                <div class="panel-container">
                    <div class="panel-content">
                        <form role="form" name="accadd" method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/pmethods-post">
                            <div class="mb-3">
                                <label for="name"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
</label>
                                <input type="text" class="form-control" id="name" name="name">
                            </div>




                            <button type="submit" class="btn btn-primary"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
                        </form>
                    </div>

                </div>
            </div>
        </div> <!-- Widget-1 end-->
        <div class="widget-1 col-md-6 col-sm-12">
            <div class="panel">
                <div class="panel-hdr">
                    <h2 class="panel-title"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage Payment Methods'];?>
</h2>
                </div>
                <div class="panel-container">
                    <div class="panel-content">
                        <span id="resp"><?php echo $_smarty_tpl->tpl_vars['_L']->value['drag_n_drop_help'];?>
</span>
                        <ol class="rounded-list" id="sorder">


                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['d']->value, 'ds');
$_smarty_tpl->tpl_vars['ds']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['ds']->value) {
$_smarty_tpl->tpl_vars['ds']->do_else = false;
?>
                                <li id='recordsArray_<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
'><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/pmethods-manage/<?php echo $_smarty_tpl->tpl_vars['ds']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['ds']->value['name'];?>
</a></li>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                        </ol>
                    </div>


                </div>
            </div>
        </div>
        <!-- Widget-2 end-->
    </div>
<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_89567448561d53ee2b11a51_93284200 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_89567448561d53ee2b11a51_93284200',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {
            $(function() {
                $("#sorder").sortable({ opacity: 0.6, cursor: 'move', update: function() {
                        var order = $(this).sortable("serialize") + '&action=sys_pmethods';
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
