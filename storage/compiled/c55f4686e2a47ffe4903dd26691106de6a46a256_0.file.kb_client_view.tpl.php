<?php
/* Smarty version 3.1.39, created on 2022-01-04 05:32:14
  from '/home/worlsxzo/public_html/ui/theme/default/kb_client_view.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d3dbdeb26c38_95691788',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'c55f4686e2a47ffe4903dd26691106de6a46a256' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/kb_client_view.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d3dbdeb26c38_95691788 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_110108355661d3dbdeb1b9c9_31892655', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_77625773861d3dbdeb1dd29_13111211', "content");
$_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "head"} */
class Block_110108355661d3dbdeb1b9c9_31892655 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_110108355661d3dbdeb1b9c9_31892655',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <style>
        .h2, h2 {
            font-size: 1.25rem;
        }
        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            font-family: inherit;
            font-weight: 600;
            line-height: 1.5;
            margin-bottom: .5rem;
            color: #32325d;}
        .text-info{
            color: #6772E5!important;
        }
        .text-success{
            color: #2CCE89!important;}
    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_77625773861d3dbdeb1dd29_13111211 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_77625773861d3dbdeb1dd29_13111211',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">


            <div class="panel">
                <div class="panel-container">
                    <div class="panel-content ">
                        <h3 class="h2"><?php echo $_smarty_tpl->tpl_vars['article']->value->title;?>
</h3>
                        <em class="text-info"><?php echo $_smarty_tpl->tpl_vars['adm']->value->fullname;?>
</em> <?php if ($_smarty_tpl->tpl_vars['article']->value->updated_at != '') {?> | <em>Last update: <?php echo $_smarty_tpl->tpl_vars['article']->value->updated_at->diffForHumans();?>
</em> <?php }?>
                        <hr>

                        <?php echo $_smarty_tpl->tpl_vars['article']->value->description;?>

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
