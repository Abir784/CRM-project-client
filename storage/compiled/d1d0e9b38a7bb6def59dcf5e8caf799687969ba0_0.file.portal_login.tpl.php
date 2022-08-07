<?php
/* Smarty version 3.1.39, created on 2021-11-28 14:14:55
  from '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/portal_login.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a3d52fe4fba1_06325244',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd1d0e9b38a7bb6def59dcf5e8caf799687969ba0' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/portal_login.tpl',
      1 => 1637779230,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a3d52fe4fba1_06325244 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_90344057361a3d52fe3de36_31284393', "head");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_151537251361a3d52fe45709_34307780', "content_body");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_117160969361a3d52fe4d592_81783731', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, "layouts/base.tpl");
}
/* {block "head"} */
class Block_90344057361a3d52fe3de36_31284393 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_90344057361a3d52fe3de36_31284393',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <style>
        @media (min-width: 992px){
            .nav-function-fixed:not(.nav-function-top):not(.nav-function-hidden):not(.nav-function-minify) .page-content-wrapper {
                padding-left: 0;
            }
        }
    </style>


    <?php if ($_smarty_tpl->tpl_vars['config']->value['recaptcha'] == '1' && !empty($_smarty_tpl->tpl_vars['config']->value['recaptcha_sitekey'])) {?>
        <?php echo '<script'; ?>
 src="https://www.google.com/recaptcha/api.js?render=<?php echo $_smarty_tpl->tpl_vars['config']->value['recaptcha_sitekey'];?>
"><?php echo '</script'; ?>
>
    <?php }?>

<?php
}
}
/* {/block "head"} */
/* {block "content_body"} */
class Block_151537251361a3d52fe45709_34307780 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content_body' => 
  array (
    0 => 'Block_151537251361a3d52fe45709_34307780',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="page-content-wrapper bg-transparent m-0">
        <div class="height-10 w-100 shadow-sm px-4 bg-brand-gradient">
            <div class="d-flex align-items-center container p-0">
                <div class="page-logo width-mobile-auto m-0 align-items-center justify-content-center p-0 bg-transparent bg-img-none shadow-0 height-9 border-0">
                    <a href="<?php echo APP_URL;?>
" class="page-logo-link press-scale-down d-flex align-items-center">
                        <?php if ((isset($_smarty_tpl->tpl_vars['config']->value['logo_square']))) {?>
                            <img src="<?php ob_start();
echo APP_URL;
$_prefixVariable1 = ob_get_clean();
echo $_prefixVariable1;?>
/storage/system/<?php ob_start();
echo $_smarty_tpl->tpl_vars['config']->value['logo_square'];
$_prefixVariable2 = ob_get_clean();
echo $_prefixVariable2;?>
" alt="<?php ob_start();
echo $_smarty_tpl->tpl_vars['config']->value['CompanyName'];
$_prefixVariable3 = ob_get_clean();
echo $_prefixVariable3;?>
" aria-roledescription="logo">
                        <?php } else { ?>
                            <img src="<?php ob_start();
echo APP_URL;
$_prefixVariable4 = ob_get_clean();
echo $_prefixVariable4;?>
/storage/system/logo-512x512.png?v=2" alt="<?php ob_start();
echo $_smarty_tpl->tpl_vars['config']->value['CompanyName'];
$_prefixVariable5 = ob_get_clean();
echo $_prefixVariable5;?>
" aria-roledescription="logo">
                        <?php }?>
                        <?php if ((isset($_smarty_tpl->tpl_vars['config']->value['logo_text']))) {?>
                            <span class="page-logo-text mr-1"><?php echo $_smarty_tpl->tpl_vars['config']->value['logo_text'];?>
</span>
                        <?php } else { ?>
                            <span class="page-logo-text mr-1">CloudOnex</span>
                        <?php }?>
                    </a>
                </div>




            </div>
        </div>
        <div class="flex-1" >
            <div class="container py-4 py-lg-5 my-lg-5 px-4 px-sm-0" >

                <div class="mx-auto" style="max-width: 500px;">
                    <div class="row">

                        <div class="col-sm-12">
                            <div class="card p-4" style="box-shadow: 1px 0 20px rgba(0, 0, 0, .08);">

                                <h1 class="fw-300 mb-3 text-center">
                                    <?php echo $_smarty_tpl->tpl_vars['_L']->value['Login'];?>

                                </h1>

                                <?php if ((isset($_smarty_tpl->tpl_vars['notify']->value))) {?>
                                    <?php echo $_smarty_tpl->tpl_vars['notify']->value;?>

                                <?php }?>

                                <form method="post" class="mt-3" id="form_client_auth" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/auth/">
                                    <div class="mb-3">
                                        <label class="form-label" for="username"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Email Address'];?>
</label>
                                        <input id="username" name="username" class="form-control form-control-lg" required>
                                    </div>
                                    <div class="mb-3">
                                        <label class="form-label" for="password"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Password'];?>
</label>
                                        <input type="password" id="password" name="password" class="form-control form-control-lg" required>
                                    </div>


                                    <div class="mb-3">
                                        <button type="submit" id="btn_client_auth" class="btn btn-primary btn-block btn-lg"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Login'];?>
</button>
                                    </div>



                                    <div class="text-center">
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
client/forgot_pw/" id="to-recover" class="text-info"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Forgot password'];?>
</a>
                                    </div>



                                </form>




                            </div>
                        </div>
                    </div>
                </div>


                <div class="position-absolute pos-bottom pos-left pos-right p-3 text-center">
                    &copy; <?php echo date('Y');?>
 <?php echo $_smarty_tpl->tpl_vars['config']->value['CompanyName'];?>

                </div>
            </div>
        </div>
    </div>
<?php
}
}
/* {/block "content_body"} */
/* {block "script"} */
class Block_117160969361a3d52fe4d592_81783731 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_117160969361a3d52fe4d592_81783731',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {

            var $modal = $('#cloudonex_body');


            let $form_client_auth = $('#form_client_auth');
            let $btn_client_auth = $('#btn_client_auth');

            $form_client_auth.on('submit',function (e) {
                e.preventDefault();

                $btn_client_auth.disabled = true;

                <?php if ($_smarty_tpl->tpl_vars['config']->value['recaptcha'] == '1' && !empty($_smarty_tpl->tpl_vars['config']->value['recaptcha_sitekey'])) {?>

                grecaptcha.ready(function() {
                    grecaptcha.execute('<?php echo $_smarty_tpl->tpl_vars['config']->value['recaptcha_sitekey'];?>
', { action: 'submit' }).then(function(token) {
                        $.post( "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/portal/auth-post", {
                            username: $('#username').val(),
                            password: $('#password').val(),
                            token: token,
                        })
                            .done(function( data ) {
                                window.location = data.redirect_url;
                            }).fail(function(data) {
                            $btn_client_auth.disabled = false;
                            toastr.error(data.responseText);
                        });
                    });
                });

                <?php } else { ?>

                $.post( "<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/portal/auth-post", {
                    username: $('#username').val(),
                    password: $('#password').val(),
                })
                    .done(function( data ) {
                        window.location = data.redirect_url;
                    }).fail(function(data) {
                    $btn_client_auth.disabled = false;
                    toastr.error(data.responseText);
                });

                <?php }?>


            });


        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
