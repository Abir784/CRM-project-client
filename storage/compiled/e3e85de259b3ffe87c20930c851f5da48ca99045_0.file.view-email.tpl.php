<?php
/* Smarty version 3.1.39, created on 2021-11-24 06:24:46
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/view-email.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_619e20fe46afd6_56731416',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e3e85de259b3ffe87c20930c851f5da48ca99045' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/view-email.tpl',
      1 => 1593549340,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_619e20fe46afd6_56731416 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1539008712619e20fe466497_93786900', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_1539008712619e20fe466497_93786900 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1539008712619e20fe466497_93786900',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row animated fadeInDown">
        <div class="col-lg-12"  id="application_ajaxrender">
            <div class="panel">
                <div class="panel-hdr">
                    <h2> <?php echo $_smarty_tpl->tpl_vars['d']->value['subject'];?>
 </h2>

                    <div class="panel-toolbar">
                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
util/sent-emails" class="btn btn-primary btn-sm"><i class="fal fa-mail-reply-all"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Back To Emails'];?>
</a>
                    </div>

                </div>
                <div class="panel-container">
                    <div class="panel-content">
                        <?php echo $_smarty_tpl->tpl_vars['d']->value['message'];?>

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
