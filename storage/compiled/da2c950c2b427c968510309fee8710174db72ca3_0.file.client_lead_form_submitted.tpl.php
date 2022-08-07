<?php
/* Smarty version 3.1.39, created on 2022-01-21 09:12:57
  from '/home/worlsxzo/public_html/ui/theme/default/client_lead_form_submitted.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61ea791933cf31_49181554',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'da2c950c2b427c968510309fee8710174db72ca3' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/client_lead_form_submitted.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61ea791933cf31_49181554 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_28495593261ea791933b6e8_71466525', "content");
?>





<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/".((string)$_smarty_tpl->tpl_vars['extend']->value).".tpl");
}
/* {block "content"} */
class Block_28495593261ea791933b6e8_71466525 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_28495593261ea791933b6e8_71466525',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="flex-1">
        <div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0">



            <div class="mx-auto" style="max-width: 800px;">
                <div class="card">
                    <div class="card-body">


                        <?php echo $_smarty_tpl->tpl_vars['success_message']->value;?>


                    </div>
                </div>
            </div>

        </div>
    </div>
<?php
}
}
/* {/block "content"} */
}
