<?php
/* Smarty version 3.1.39, created on 2022-08-05 18:11:11
  from 'C:\xampp\htdocs\well-known\ui\theme\default\course_list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62ed4f2fa7b834_25308270',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '95a25785f8b726c179a4bd9e5d68f8f8976ba7d0' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\course_list.tpl',
      1 => 1659719463,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62ed4f2fa7b834_25308270 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_109248060962ed4f2fa63de3_67848091', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_164616219762ed4f2fa6af77_18406422', "content");
?>


<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_109248060962ed4f2fa63de3_67848091 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_109248060962ed4f2fa63de3_67848091',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css" />
    <style>

        <?php if (!empty($_smarty_tpl->tpl_vars['config']->value['admin_dark_theme'])) {?>

        <?php } else { ?>
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


        .text-info{
            color: #6772E5!important;
        }
        .text-success{
            color: #2CCE89!important;}

        .text-danger{
            color: #F6365B!important;
        }
        .text-warning{
            color: #FB6340!important;
        }
        .text-primary{
            color: #10CDEF!important;
        }

        <?php }?>

    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_164616219762ed4f2fa6af77_18406422 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_164616219762ed4f2fa6af77_18406422',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="container">
    <table class="table table-striped">
    <thead class="table-warning">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Course Name</th>
        <th scope="col">Abbreviation</th>
        <th scope="col">Total Batches</th>
        <th scope="col">Created At</th>
        <th scope="col">Action</th>

    </tr>
    </thead>
    <tbody>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['courses']->value, 'course');
$_smarty_tpl->tpl_vars['course']->iteration = 0;
$_smarty_tpl->tpl_vars['course']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['course']->value) {
$_smarty_tpl->tpl_vars['course']->do_else = false;
$_smarty_tpl->tpl_vars['course']->iteration++;
$__foreach_course_0_saved = $_smarty_tpl->tpl_vars['course'];
?>
    <tr>
        <th scope="row"><?php echo $_smarty_tpl->tpl_vars['course']->iteration;?>
</th>
        <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
course/batch_show/<?php echo $_smarty_tpl->tpl_vars['course']->value['id'];?>
"><?php echo $_smarty_tpl->tpl_vars['course']->value['name'];?>
</a></td>
        <td><?php echo $_smarty_tpl->tpl_vars['course']->value['abbr'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['course']->value['total_batches'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['course']->value['created_at'];?>
</td>
        <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
course/add_batch/<?php echo $_smarty_tpl->tpl_vars['course']->value['id'];?>
" class="btn btn-primary"><?php echo 'Add Batch';?>
</a></td>
    </tr>
    <?php
$_smarty_tpl->tpl_vars['course'] = $__foreach_course_0_saved;
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

    </tbody>
    </table>

</div>

    
<?php
}
}
/* {/block "content"} */
}
