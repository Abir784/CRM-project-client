<?php
/* Smarty version 3.1.39, created on 2021-11-29 13:00:47
  from '/Users/razib/Documents/valet/business-suite/apps/twofactor/views/init.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a5154f8da553_30585745',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'cfeedb76133205ca5fd77cd7d30ba0ea37c452eb' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/twofactor/views/init.tpl',
      1 => 1638208845,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a5154f8da553_30585745 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_165656439061a5154f8cf963_86056737', "content");
?>

<?php }
/* {block "content"} */
class Block_165656439061a5154f8cf963_86056737 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_165656439061a5154f8cf963_86056737',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-6">

            <div class="card">

                <div class="card-body">


                    <?php if ($_smarty_tpl->tpl_vars['user']->value->otp == 'Yes') {?>
                        <h2>Two-Factor Authentication is Enabled.</h2>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
twofactor/setup/disable/" class="btn btn-danger">Click Here to Disable</a>

                    <?php } else { ?>
                        <h2>Two-Factor Authentication</h2>
                        <div class="alert alert-warning">
                            We strongly encourage you to enable Two-Factor Authentication for added security.
                        </div>
                        <p>
                            Two-Step Verification adds an extra layer of security to your account. After you log in with your username and password, you enter an extra security code before proceeding to your account.
                        </p>
                        <p>
                            The security code is automatically generated by the Google Authenticator smartphone app, and is only valid for 30 seconds before a new code is generated.

                        </p>

                        <p>

                            What it boils down to is that no one can access your account unless they have your username, your password, and access to your phone.
                        </p>
                        <hr>
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
twofactor/setup/enable/" class="btn btn-primary">Click Here to Enable</a>
                    <?php }?>




                </div>

            </div>

        </div>
    </div>

<?php
}
}
/* {/block "content"} */
}