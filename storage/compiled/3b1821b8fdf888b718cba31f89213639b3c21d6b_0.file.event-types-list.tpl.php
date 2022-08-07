<?php
/* Smarty version 3.1.39, created on 2021-11-24 13:42:37
  from '/Users/razib/Documents/valet/business-suite/apps/appointment/views/event-types-list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_619e879d8f5853_54833782',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '3b1821b8fdf888b718cba31f89213639b3c21d6b' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/appointment/views/event-types-list.tpl',
      1 => 1608312835,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_619e879d8f5853_54833782 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_132516083619e879d8ecea0_90014403', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1100195905619e879d8eee56_01158153', "content");
?>







<?php }
/* {block "head"} */
class Block_132516083619e879d8ecea0_90014403 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_132516083619e879d8ecea0_90014403',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css" />
    <style>
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #F7F9FC;

        }
        .h2, h2 {
            font-size: 1.25rem;
        }
        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, {
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
    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_1100195905619e879d8eee56_01158153 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1100195905619e879d8eee56_01158153',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row mb-3">

        <div class="col-md-12">


            <div class="card">
                <div class="card-body">

                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/event-types" class="btn btn-primary add_event waves-effect waves-light">Create Appointment Type</a>

                </div>

            </div>
        </div>



    </div>

    <div class="row">



        <div class="col-md-12">



            <div class="card">

                <div class="card-body">



                    <div class="table-responsive">
                        <table class="table table-striped">
                            <thead>
                            <tr>
                                <th class="h4">Event Title</th>

                                <th class="float-right h4 bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                            </tr>
                            </thead>
                            <tbody>


                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['event_types']->value, 'event_type');
$_smarty_tpl->tpl_vars['event_type']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['event_type']->value) {
$_smarty_tpl->tpl_vars['event_type']->do_else = false;
?>
                                <tr>
                                    <td>

                                        <a  class="h5" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/event-type-edit/<?php echo $_smarty_tpl->tpl_vars['event_type']->value->id;?>
"><?php echo $_smarty_tpl->tpl_vars['event_type']->value->title;?>
</a>

                                    </td>

                                    <td class="float-right btn-group">
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/event-type-edit/<?php echo $_smarty_tpl->tpl_vars['event_type']->value->id;?>
" class="btn btn-info">Edit</a>
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/event-type-delete/<?php echo $_smarty_tpl->tpl_vars['event_type']->value->id;?>
" class="btn btn-danger">Delete</a>
                                    </td>

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




<?php
}
}
/* {/block "content"} */
}
