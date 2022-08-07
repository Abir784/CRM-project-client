<?php
/* Smarty version 3.1.39, created on 2021-11-29 13:11:22
  from '/Users/razib/Documents/valet/business-suite/apps/shopify/views/customers.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a517ca43fe03_91949816',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3f243d85e346ab60150ffcd3a7f1da61be57c21c' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/shopify/views/customers.tpl',
      1 => 1637779260,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a517ca43fe03_91949816 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_20724435561a517ca438f63_01949451', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_181239791061a517ca43e676_86397328', "script");
?>

<?php }
/* {block "content"} */
class Block_20724435561a517ca438f63_01949451 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_20724435561a517ca438f63_01949451',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['app_view_path']->value)."/includes/top.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>



    <div class="row">

        <div class="col-md-12">


            <div class="card">
                <div class="card-body">

                    <div class="row">
                        <div class="col-sm-6">
                            <h3 class="mb-4">Customers</h3>
                        </div>
                        <div class="col-sm-6 text-end">
                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
shopify/app/sync-customers" class="btn btn-primary">Sync customers</a>
                        </div>
                    </div>

                    <div class="text-center" id="clxLoader">
                        <div class="md-preloader"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="32" width="32" viewbox="0 0 75 75"><circle cx="37.5" cy="37.5" r="33.5" stroke-width="6"/></svg></div>
                    </div>

                    <div id="clxContent">

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
class Block_181239791061a517ca43e676_86397328 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_181239791061a517ca43e676_86397328',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>




    <?php echo '<script'; ?>
>
        $(function () {

            var $clxLoader = $('#clxLoader');
            var $clxContent = $('#clxContent');

            axios.get('<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
shopify/app/x_customers').then(function (response) {
                $clxLoader.hide();
                $clxContent.html(response.data);

                $('#clx_datatable').dataTable(
                    {
                        responsive: true,
                        lengthChange: false,
                    }
                );

            }).catch(function (reason) {
                console.log(reason);
            })

        })
    <?php echo '</script'; ?>
>

<?php
}
}
/* {/block "script"} */
}
