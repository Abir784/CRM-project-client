<?php
/* Smarty version 3.1.39, created on 2021-11-28 14:13:45
  from '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/add_training.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a3d4e95693c4_25618240',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'b0694846a01f007930804f59525b4f1e892cbb17' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/add_training.tpl',
      1 => 1637779230,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a3d4e95693c4_25618240 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_162773650261a3d4e95585a0_70903207', "head");
?>




<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_212629065061a3d4e955a340_75290736', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_154514953561a3d4e9568648_23714400', "script");
?>



<?php }
/* {block "head"} */
class Block_162773650261a3d4e95585a0_70903207 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_162773650261a3d4e95585a0_70903207',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/flatpickr/dist/flatpickr.min.css">

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
class Block_212629065061a3d4e955a340_75290736 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_212629065061a3d4e955a340_75290736',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row mb-3">




        <div class="col-md-12">
            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/training" class="btn btn-primary add_event waves-effect waves-light">Trainings</a>
            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/add-trainer" class="btn btn-primary add_event waves-effect waves-light">Add Trainer</a>

        </div>



    </div>

    <div class="row">



        <div class="col-md-9">



            <div class="card">

                <div class="card-body">
                    <h2 class="h2">New Training</h2>
                    <hr>


                    <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/add-training-save">
                        <?php if ($_smarty_tpl->tpl_vars['selected_training']->value) {?>
                            <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['selected_training']->value->id;?>
">
                        <?php }?>

                        <div class="row">


                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="Related"><span class="h5"><span class="h6">Employee</span></span></label>
                                    <select name="employee_id" id="related"  class="form-control">



                                        <option value="0">None</option>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['employees']->value, 'employee');
$_smarty_tpl->tpl_vars['employee']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['employee']->value) {
$_smarty_tpl->tpl_vars['employee']->do_else = false;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['employee']->value->id;?>
"

                                                    <?php if ($_smarty_tpl->tpl_vars['selected_training']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_training']->value->employee_id === $_smarty_tpl->tpl_vars['employee']->value->id) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                            ><?php echo $_smarty_tpl->tpl_vars['employee']->value->name;?>
</option>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                    </select>


                                </div>


                            </div>

                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="title"><span class="h5">Trainer</span></label>
                                    <select name="trainer_id" id="trainer"  class="form-control">



                                        <option value="0">None</option>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['trainers']->value, 'trainer');
$_smarty_tpl->tpl_vars['trainer']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['trainer']->value) {
$_smarty_tpl->tpl_vars['trainer']->do_else = false;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['trainer']->value->id;?>
"

                                                    <?php if ($_smarty_tpl->tpl_vars['selected_training']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_training']->value->trainer_id === $_smarty_tpl->tpl_vars['trainer']->value->id) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                            ><?php echo $_smarty_tpl->tpl_vars['trainer']->value->name;?>
</option>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                    </select>
                                </div>

                            </div>

                        </div>


                        <div class="row mt-3">
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="title"><span class="h5">Training Type</span></label>
                                    <input class="form-control" name="type" id="title"
                                            <?php if ($_smarty_tpl->tpl_vars['selected_training']->value) {?>
                                                value="<?php echo $_smarty_tpl->tpl_vars['selected_training']->value->type;?>
"
                                            <?php }?>
                                    >
                                </div>

                            </div>
                            <div class="col-md-6">
                                <div class="mb-3">
                                    <label for="title"><span class="h5">Training Cost</span></label>
                                    <input class="form-control" name="cost" id="title"
                                            <?php if ($_smarty_tpl->tpl_vars['selected_training']->value) {?>
                                                value="<?php echo $_smarty_tpl->tpl_vars['selected_training']->value->cost;?>
"
                                            <?php }?>
                                    >
                                </div>


                            </div>
                        </div>







                        <div class="row mt-3 " id="start_time_container">
                            <div class="col-md-6">
                                <label for="startdate"> <span class="h5">Start</span></label>
                                <input class="form-control" name="start_time"
                                        <?php if ($_smarty_tpl->tpl_vars['selected_training']->value) {?>
                                            value="<?php echo $_smarty_tpl->tpl_vars['selected_training']->value->start_time;?>
"
                                        <?php } else { ?>
                                            value="<?php echo date('Y-m-d 12:00:00',strtotime('+1 day'));?>
"
                                        <?php }?>
                                       value="<?php echo date('Y-m-d');?>
"  id="start_time" data-date-format="yyyy-mm-dd" data-auto-close="true">


                            </div>
                            <div class="col-md-6">
                                <label for="enddate"><span class="h5">End</span></label>
                                <input class="form-control" name="end_time" id="end_time"
                                        <?php if ($_smarty_tpl->tpl_vars['selected_training']->value) {?>
                                            value="<?php echo $_smarty_tpl->tpl_vars['selected_training']->value->end_time;?>
"
                                        <?php } else { ?>
                                            value="<?php echo date('Y-m-d 13:00:00',strtotime('+1 day'));?>
"
                                        <?php }?>

                                       data-date-format="yyyy-mm-dd" data-auto-close="true">

                            </div>
                        </div>




                        <div class="mb-3 mt-3">
                            <label for="contents"><span class="h6">Description</span></label>
                            <textarea class="form-control" rows="5" id="contents" name="description"><?php if ($_smarty_tpl->tpl_vars['selected_training']->value) {
echo $_smarty_tpl->tpl_vars['selected_training']->value->description;
}?></textarea>

                        </div>

                        <button class="btn btn-primary" type="submit">Save</button>

                    </form>


                </div>
            </div>
        </div>



    </div>



<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_154514953561a3d4e9568648_23714400 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_154514953561a3d4e9568648_23714400',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
 src="https://cdn.jsdelivr.net/npm/flatpickr"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
>
        $(function () {
            let $start_time = $("#start_time");
            $start_time.flatpickr({

                enableTime: true,
                dateFormat: "Y-m-d H:i",
            });
            let $end_time = $("#end_time");
            $end_time.flatpickr({

                enableTime: true,
                dateFormat: "Y-m-d H:i",
            });

            $("#event-type").select2();
            $("#owner").select2();
            $("#related").select2();
            $("#trainer").select2();
        });

        $('#contents').redactor(
            {
                minHeight: 200, // pixels
                plugins: ['fontcolor']
            }
        );
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
