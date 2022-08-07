<?php
/* Smarty version 3.1.39, created on 2022-04-17 07:21:50
  from '/home/worlsxzo/public_html/ui/theme/default/change-password.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_625bb1fe360e32_94759059',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8caf299c0fc9bfd19ffd78b00a4c12d670bd712c' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/change-password.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_625bb1fe360e32_94759059 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_659049004625bb1fe3584c8_39391472', "content");
?>


<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_659049004625bb1fe3584c8_39391472 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_659049004625bb1fe3584c8_39391472',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">
        <div class="col-md-6">
            <div class="card">

                <div class="card-body">
                    <h5 class="mb-3"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Change Password'];?>
</h5>
                    <form role="form" name="accadd" method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
settings/change-password-post">
                        <div class="mb-3">
                            <label for="password"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Current Password'];?>
</label>
                            <input type="password" class="form-control" id="password" name="password">
                        </div>
                        <div class="mb-3">
                            <label for="npass"><?php echo $_smarty_tpl->tpl_vars['_L']->value['New Password'];?>
</label>
                            <input type="password" class="form-control" id="npass" name="npass">
                        </div>
                        <div class="mb-3">
                            <label for="cnpass"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Confirm New Password'];?>
</label>
                            <input type="password" class="form-control" id="cnpass" name="cnpass">
                        </div>




                        <button type="submit" class="btn btn-primary"><i class="fal fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Submit'];?>
</button>
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
