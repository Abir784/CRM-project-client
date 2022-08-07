<?php
/* Smarty version 3.1.39, created on 2022-08-04 17:40:38
  from 'C:\xampp\htdocs\well-known\ui\theme\default\partner_list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62ebf6868538f2_87372490',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '1ee1625daf8601ae2d89288946b80be86d1e894f' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\partner_list.tpl',
      1 => 1659631229,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62ebf6868538f2_87372490 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_101702401762ebf68684a5f1_90452823', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_13021376862ebf68684db59_54824278', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_101702401762ebf68684a5f1_90452823 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_101702401762ebf68684a5f1_90452823',
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
class Block_13021376862ebf68684db59_54824278 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_13021376862ebf68684db59_54824278',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="container">
    <table class="table table-striped">
    <thead class="table-warning">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Fullname</th>
        <th scope="col">Email</th>
        <th scope="col">Phone</th>
        <th scope="col">Action</th>

    </tr>
    </thead>
    <tbody>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['partners']->value, 'partner');
$_smarty_tpl->tpl_vars['partner']->iteration = 0;
$_smarty_tpl->tpl_vars['partner']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['partner']->value) {
$_smarty_tpl->tpl_vars['partner']->do_else = false;
$_smarty_tpl->tpl_vars['partner']->iteration++;
$__foreach_partner_0_saved = $_smarty_tpl->tpl_vars['partner'];
?>
    <tr>
        <th scope="row"><?php echo $_smarty_tpl->tpl_vars['partner']->iteration;?>
</th>
        <td><?php echo $_smarty_tpl->tpl_vars['partner']->value['fullname'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['partner']->value['username'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['partner']->value['phonenumber'];?>
</td>
        <td><a href="#" class="btn btn-danger"><?php echo 'Delete';?>
</a></td>
    </tr>
    <?php
$_smarty_tpl->tpl_vars['partner'] = $__foreach_partner_0_saved;
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
