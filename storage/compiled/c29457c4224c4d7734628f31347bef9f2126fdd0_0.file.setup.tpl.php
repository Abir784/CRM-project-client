<?php
/* Smarty version 3.1.39, created on 2021-12-11 15:12:48
  from '/Users/razib/Documents/valet/business-suite/apps/zatca_e_invoicing/views/setup.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61b506408af4a4_92999320',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c29457c4224c4d7734628f31347bef9f2126fdd0' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/zatca_e_invoicing/views/setup.tpl',
      1 => 1639253563,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61b506408af4a4_92999320 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_49704276761b506408ad997_71508589', "content");
?>

<?php }
/* {block "content"} */
class Block_49704276761b506408ad997_71508589 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_49704276761b506408ad997_71508589',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <div class="card-body">
                    <form>
                        <div class="mb-3">
                            <label class="h6">Seller Name</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="mb-3">
                            <label class="h6">TAX Number</label>
                            <input type="text" class="form-control">
                        </div>
                        <div class="mb-3">
                            <button type="submit" class="btn btn-primary">Save</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

<?php
}
}
/* {/block "content"} */
}
