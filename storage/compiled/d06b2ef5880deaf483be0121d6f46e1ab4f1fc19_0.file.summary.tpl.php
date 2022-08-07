<?php
/* Smarty version 3.1.39, created on 2021-11-29 13:12:44
  from '/Users/razib/Documents/valet/business-suite/apps/wcsuite/views/summary.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a5181c748bc4_35326343',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd06b2ef5880deaf483be0121d6f46e1ab4f1fc19' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/wcsuite/views/summary.tpl',
      1 => 1609779550,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a5181c748bc4_35326343 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16733320861a5181c73e527_15892440', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_164948722361a5181c7451f4_77261667', "script");
?>

<?php }
/* {block "content"} */
class Block_16733320861a5181c73e527_15892440 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_16733320861a5181c73e527_15892440',
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
                    <div class="text-center" id="clxLoader">
                        <div class="md-preloader"><svg xmlns="http://www.w3.org/2000/svg" version="1.1" height="32" width="32" viewbox="0 0 75 75"><circle cx="37.5" cy="37.5" r="33.5" stroke-width="6"/></svg></div>
                    </div>

                    <div id="clxContent">

                    </div>

                    <h5 class="my-3">Sales</h5>

                    <div id="chart_sales">

                    </div>

                    <h5 class="my-3">Orders</h5>

                    <div id="chart_orders">

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
class Block_164948722361a5181c7451f4_77261667 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_164948722361a5181c7451f4_77261667',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php $_smarty_tpl->_subTemplateRender(((string)$_smarty_tpl->tpl_vars['app_view_path']->value)."/includes/base_js.tpl", $_smarty_tpl->cache_id, $_smarty_tpl->compile_id, 0, $_smarty_tpl->cache_lifetime, array(), 0, true);
?>

    <?php echo '<script'; ?>
>
        $(function () {

            var $clxLoader = $('#clxLoader');
            var $clxContent = $('#clxContent');

            axios.get('<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
wcsuite/app/x_dashboard').then(function (response) {
                $clxLoader.hide();
                $clxContent.html(response.data.html);

                var chart_sales = new ApexCharts(document.querySelector("#chart_sales"), {
                    chart: {
                        type: 'area',
                        fontFamily: 'Roboto, sans-serif',
                        height: 340,
                    },
                    series: [{
                        name: 'sales',
                        data: response.data.chart_data_sales,
                    }],
                    xaxis: {
                        type: 'category'
                    },
                });

                chart_sales.render();

                var chart_orders = new ApexCharts(document.querySelector("#chart_orders"), {
                    chart: {
                        type: 'bar',
                        fontFamily: 'Roboto, sans-serif',
                        height: 340,
                    },
                    series: [{
                        name: 'sales',
                        data: response.data.chart_data_orders,
                    }],
                    xaxis: {
                        type: 'category'
                    },
                });

                chart_orders.render();

            }).catch(function (reason) {
                console.log(reason);
            });



        })
    <?php echo '</script'; ?>
>

<?php
}
}
/* {/block "script"} */
}
