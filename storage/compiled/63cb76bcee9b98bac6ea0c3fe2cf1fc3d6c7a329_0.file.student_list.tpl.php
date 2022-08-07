<?php
/* Smarty version 3.1.39, created on 2022-08-06 09:21:58
  from 'C:\xampp\htdocs\well-known\ui\theme\default\student_list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62ee24a67161b1_40276002',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '63cb76bcee9b98bac6ea0c3fe2cf1fc3d6c7a329' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\student_list.tpl',
      1 => 1659774115,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62ee24a67161b1_40276002 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_118522328662ee24a6709073_07487586', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_13672576562ee24a670cc08_66877166', "content");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_118522328662ee24a6709073_07487586 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_118522328662ee24a6709073_07487586',
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
class Block_13672576562ee24a670cc08_66877166 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_13672576562ee24a670cc08_66877166',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

<div class="container">

    <table class="table table-striped">
    <thead class="table-warning">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Full name</th>
        <th scope="col">Email</th>
        <th scope="col">Phone</th>
        <th scope="col">Course Name</th>
        <th scope="col">Batch Number</th>
        <th scope="col">Payment</th>
        <th scope="col">Action</th>
        <th scope="col">Status</th>

    </tr>
    </thead>
    <tbody>
    <?php if (count($_smarty_tpl->tpl_vars['students']->value) == 0) {?>
        <td colspan="7" class="text-center"><b><?php echo 'No students to show';?>
</b></td>

    <?php }?>
    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['students']->value, 'student');
$_smarty_tpl->tpl_vars['student']->iteration = 0;
$_smarty_tpl->tpl_vars['student']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['student']->value) {
$_smarty_tpl->tpl_vars['student']->do_else = false;
$_smarty_tpl->tpl_vars['student']->iteration++;
$__foreach_student_0_saved = $_smarty_tpl->tpl_vars['student'];
?>
    <tr>
        <th scope="row"><?php echo $_smarty_tpl->tpl_vars['student']->iteration;?>
</th>
        <td><?php echo $_smarty_tpl->tpl_vars['student']->value['name'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['student']->value['org_email'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['student']->value['w_number'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['student']->value['course_name'];?>
</td>
        <td><?php echo $_smarty_tpl->tpl_vars['student']->value['batch_name'];?>
</td>
        <td><?php if ($_smarty_tpl->tpl_vars['student']->value['payment_type'] == 0) {?>
            <?php echo 'Installment Payment';?>

        <?php }?>
        <?php if ($_smarty_tpl->tpl_vars['student']->value['payment_type'] == 1) {?>
            <?php echo 'Full Payment';?>


        <?php }?>
            
            
            </td>
        <td><a href="#" class="btn btn-primary"><?php echo 'Delete';?>
</a></td>
        <?php if ($_smarty_tpl->tpl_vars['student']->value['status'] == 0) {?>
        <td><a href="#" class="block block-primary"><?php echo 'Unaccepted Yet';?>
</a></td>
        <?php }?>
        <?php if ($_smarty_tpl->tpl_vars['student']->value['status'] != 0 && $_smarty_tpl->tpl_vars['student']->value['payment_type'] == 0) {?>
        <td><a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
student/payment_update/<?php echo $_smarty_tpl->tpl_vars['student']->value['id'];?>
" class="btn btn-primary"><?php echo 'Update Payment';?>
</a></td>
        <?php }?>
        <?php if ($_smarty_tpl->tpl_vars['student']->value['status'] != 0 && $_smarty_tpl->tpl_vars['student']->value['payment_type'] != 0) {?>
            <td><a href="#" class="btn btn-primary"><?php echo 'Full Paid';?>
</a></td>
        <?php }?>
            
    </tr>
    <?php
$_smarty_tpl->tpl_vars['student'] = $__foreach_student_0_saved;
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
