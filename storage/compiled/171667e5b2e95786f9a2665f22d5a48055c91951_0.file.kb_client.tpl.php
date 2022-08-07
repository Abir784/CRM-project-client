<?php
/* Smarty version 3.1.39, created on 2022-01-04 04:17:14
  from '/home/worlsxzo/public_html/ui/theme/default/kb_client.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d3ca4a949099_94643647',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '171667e5b2e95786f9a2665f22d5a48055c91951' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/kb_client.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d3ca4a949099_94643647 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_34656583661d3ca4a92f245_87107662', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_212414577361d3ca4a9308e9_71859673', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_176784438961d3ca4a945cf2_31725215', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_client']->value));
}
/* {block "head"} */
class Block_34656583661d3ca4a92f245_87107662 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_34656583661d3ca4a92f245_87107662',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <style>
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #F7F9FC;
        }

        .h2, h2 {
            font-size: 1.25rem;
        }
        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            font-family: inherit;
            font-weight: 600;
            line-height: 1.5;
            margin-bottom: .5rem;
            color: #32325d;
        }

    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_212414577361d3ca4a9308e9_71859673 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_212414577361d3ca4a9308e9_71859673',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <div class="col-md-12">



            <div class="panel">
                <div class="panel-container">
                    <div class="panel-content">
                        <div class="table-responsive">
                            <table class="table table-striped filter-table" id="tbl_articles">
                                <thead>
                                <tr>
                                    <th><?php echo $_smarty_tpl->tpl_vars['_L']->value['Title'];?>
</th>

                                </tr>
                                </thead>
                                <tbody>

                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['articles']->value, 'article');
$_smarty_tpl->tpl_vars['article']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['article']->value) {
$_smarty_tpl->tpl_vars['article']->do_else = false;
?>

                                    <tr>

                                        <td class="h5"><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
kb/<?php echo $_smarty_tpl->tpl_vars['article']->value->slug;?>
" id="k<?php echo $_smarty_tpl->tpl_vars['article']->value->id;?>
" class="kb_view"><?php echo $_smarty_tpl->tpl_vars['article']->value->title;?>
</a> </td>



                                    </tr>

                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                </tbody>
                            </table>

                        </div>

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
class Block_176784438961d3ca4a945cf2_31725215 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_176784438961d3ca4a945cf2_31725215',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
 src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
ui/lib/js/filtertable.js"><?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
>
        $(function() {



            $('#tbl_articles').dataTable(
                {
                    responsive: true,
                    "language": {
                        "emptyTable": "<?php echo $_smarty_tpl->tpl_vars['_L']->value['No items to display'];?>
",
                        "info":      "<?php echo $_smarty_tpl->tpl_vars['_L']->value['Showing _START_ to _END_ of _TOTAL_ entries'];?>
",
                        "infoEmpty":      "<?php echo $_smarty_tpl->tpl_vars['_L']->value['Showing 0 to 0 of 0 entries'];?>
",
                        buttons: {
                            pageLength: '<?php echo $_smarty_tpl->tpl_vars['_L']->value['Show all'];?>
'
                        },
                        searchPlaceholder: "<?php echo __('Search');?>
"
                    },
                }
            );


        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
