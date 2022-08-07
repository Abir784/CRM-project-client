<?php
/* Smarty version 3.1.39, created on 2021-11-24 13:42:34
  from '/Users/razib/Documents/valet/business-suite/apps/appointment/views/appointment.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_619e879aa44da6_69513446',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'd77c7ad2d4936df85f08460c3d5f02d575ed9b6b' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/appointment/views/appointment.tpl',
      1 => 1637779230,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_619e879aa44da6_69513446 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1706656797619e879aa319e8_58871509', "head");
?>




<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1140857527619e879aa334c8_74710511', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_1934441912619e879aa44461_54186356', "script");
?>



<?php }
/* {block "head"} */
class Block_1706656797619e879aa319e8_58871509 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_1706656797619e879aa319e8_58871509',
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
class Block_1140857527619e879aa334c8_74710511 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_1140857527619e879aa334c8_74710511',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <div class="row">



        <div class="col-md-12">



            <div class="card">

                <div class="card-body">

                    <h2 class="h2">New Appointment</h2>

                    <hr>

                    <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/save">
                        <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value) {?>
                            <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['selected_appointment']->value->id;?>
">
                        <?php }?>


                        <div class="mb-3">
                            <label for="title"><span class="h5">Title</span></label>
                            <input class="form-control" name="title" id="title"
                            <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value) {?>
                                value="<?php echo $_smarty_tpl->tpl_vars['selected_appointment']->value->title;?>
"
                            <?php }?>
                            >
                        </div>

                        <div class="row " id="start_time_container">
                            <div class="col-md-4">
                                <label for="startdate"> <span class="h5">Start</span></label>
                                <input class="form-control" name="start_time"
                                        <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value) {?>
                                       value="<?php echo $_smarty_tpl->tpl_vars['selected_appointment']->value->start_time;?>
"
                                        <?php } else { ?>
                                            value="<?php echo date('Y-m-d 12:00:00',strtotime('+1 day'));?>
"
                                        <?php }?>
                                      value="<?php echo date('Y-m-d');?>
"  id="start_time" data-date-format="yyyy-mm-dd" data-auto-close="true">


                            </div>
                            <div class="col-md-4">
                                <label for="enddate"><span class="h5">End</span></label>
                                <input class="form-control" name="end_time" id="end_time"
                                        <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value) {?>
                                       value="<?php echo $_smarty_tpl->tpl_vars['selected_appointment']->value->end_time;?>
"
                                        <?php } else { ?>
                                       value="<?php echo date('Y-m-d 13:00:00',strtotime('+1 day'));?>
"
                                        <?php }?>

                                       data-date-format="yyyy-mm-dd" data-auto-close="true">

                            </div>
                        </div>

                        <div class="row mt-4">
                            <div class="col-md-4">


                                <div class="mb-3">
                                    <label for="Related"><span class="h5"><span class="h6">Related</span></span></label>
                                    <select name="client_id" id="related"  class="form-control">



                                        <option value="0">None</option>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['clients']->value, 'client');
$_smarty_tpl->tpl_vars['client']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['client']->value) {
$_smarty_tpl->tpl_vars['client']->do_else = false;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['client']->value->id;?>
"

                                                    <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value->client_id === $_smarty_tpl->tpl_vars['client']->value->id) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                            ><?php echo $_smarty_tpl->tpl_vars['client']->value->account;?>
</option>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                    </select>


                                </div>




                            </div>
                            <div class="col-md-4">

                                <div class="mb-3">
                                    <label for="Owner"><span class="h6"><span class="h6">Owner</span></span></label>

                                    <select class="form-control" name="admin_id" id="owner">
                                        <option value="0">None</option>

                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['owners']->value, 'owner');
$_smarty_tpl->tpl_vars['owner']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['owner']->value) {
$_smarty_tpl->tpl_vars['owner']->do_else = false;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['owner']->value->id;?>
"
                                                    <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value->admin_id === $_smarty_tpl->tpl_vars['owner']->value->id) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php } else { ?>
                                                        <?php if ($_smarty_tpl->tpl_vars['user']->value->id === $_smarty_tpl->tpl_vars['owner']->value->id) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                            ><?php echo $_smarty_tpl->tpl_vars['owner']->value->fullname;?>
</option>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </select>
                                </div>

                            </div>
                            <div class="col-md-4">

                                <div class="mb-3">
                                    <label for="Related"><span class="h6"><span class="h6">Event Type</span></span></label>

                                    <select name="type_id" id="event-type"  class="form-control">

                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['event_types']->value, 'event_type');
$_smarty_tpl->tpl_vars['event_type']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['event_type']->value) {
$_smarty_tpl->tpl_vars['event_type']->do_else = false;
?>

                                            <option value="<?php echo $_smarty_tpl->tpl_vars['event_type']->value->id;?>
"
                                                    <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value->type_id === $_smarty_tpl->tpl_vars['event_type']->value->id) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                            ><?php echo $_smarty_tpl->tpl_vars['event_type']->value->title;?>
</option>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </select>
                                </div>

                            </div>
                        </div>
                        <div class="mb-3 mt-3">
                            <label for="contents"><span class="h6">Notes/Description</span></label>


                            <textarea class="form-control" rows="5" id="contents" name="description"><?php if ($_smarty_tpl->tpl_vars['selected_appointment']->value) {
echo $_smarty_tpl->tpl_vars['selected_appointment']->value->description;
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
class Block_1934441912619e879aa44461_54186356 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_1934441912619e879aa44461_54186356',
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
                inline: true,
                enableTime: true,
                dateFormat: "Y-m-d H:i",
            });
            let $end_time = $("#end_time");
            $end_time.flatpickr({
                inline: true,
                enableTime: true,
                dateFormat: "Y-m-d H:i",
            });

            $("#event-type").select2();
            $("#owner").select2();
            $("#related").select2();
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
