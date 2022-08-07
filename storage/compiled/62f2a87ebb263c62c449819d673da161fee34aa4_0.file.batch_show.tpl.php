<?php
/* Smarty version 3.1.39, created on 2022-08-05 17:57:35
  from 'C:\xampp\htdocs\well-known\ui\theme\default\batch_show.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62ed4bffa11413_31182461',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '62f2a87ebb263c62c449819d673da161fee34aa4' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\batch_show.tpl',
      1 => 1659718653,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62ed4bffa11413_31182461 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_46491100762ed4bffa08af0_38087965', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_192042080462ed4bffa0b995_10541908', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_46491100762ed4bffa08af0_38087965 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_46491100762ed4bffa08af0_38087965',
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
class Block_192042080462ed4bffa0b995_10541908 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_192042080462ed4bffa0b995_10541908',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="container">
    <table class="table table-striped">
    <thead class="table-warning">
    <tr>
        <th scope="col">Batch No.</th>
        <th scope="col">Fee</th>
        <th scope="col">Start Date</th>
        <th scope="col">Action</th>

    </tr>
    </thead>
    <tbody>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['batches']->value, 'batch');
$_smarty_tpl->tpl_vars['batch']->iteration = 0;
$_smarty_tpl->tpl_vars['batch']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['batch']->value) {
$_smarty_tpl->tpl_vars['batch']->do_else = false;
$_smarty_tpl->tpl_vars['batch']->iteration++;
$__foreach_batch_0_saved = $_smarty_tpl->tpl_vars['batch'];
?>
    <tr>
        <th scope="row"><?php echo $_smarty_tpl->tpl_vars['batch']->iteration;?>
</th>
        <td><?php echo $_smarty_tpl->tpl_vars['batch']->value['fee'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['batch']->value['start_date'];?>
</td>
        <td><a href="#" class="btn btn-danger"><?php echo 'Delete';?>
</a></td>
    </tr>
    <?php
$_smarty_tpl->tpl_vars['batch'] = $__foreach_batch_0_saved;
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
