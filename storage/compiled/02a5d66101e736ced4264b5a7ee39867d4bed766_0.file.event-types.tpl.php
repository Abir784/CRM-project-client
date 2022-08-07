<?php
/* Smarty version 3.1.39, created on 2021-11-24 13:42:38
  from '/Users/razib/Documents/valet/business-suite/apps/appointment/views/event-types.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_619e879ea862a6_60876593',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '02a5d66101e736ced4264b5a7ee39867d4bed766' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/appointment/views/event-types.tpl',
      1 => 1637779230,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_619e879ea862a6_60876593 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_685302236619e879ea72958_02443945', "head");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_982600145619e879ea74509_66258765', "content");
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_2032823609619e879ea85bf6_78066240', "script");
?>


<?php }
/* {block "head"} */
class Block_685302236619e879ea72958_02443945 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_685302236619e879ea72958_02443945',
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
class Block_982600145619e879ea74509_66258765 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_982600145619e879ea74509_66258765',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <div class="row">



        <div class="col-md-12">



            <div class="card">

                <div class="card-body">

                    <h2>Create Appointment Type</h2>

                    <hr>

                    <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/event-types-save">
                        <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>
                            <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['selected_event_type']->value->id;?>
">
                        <?php }?>

                        <div class="mb-3">
                            <label for="title"><span class="h5">Title</span></label>

                            <input class="form-control" name="title" id="title"
                                    <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>
                                value="<?php echo $_smarty_tpl->tpl_vars['selected_event_type']->value->title;?>
"
                                    <?php }?>>
                        </div>
                        <div class="mb-3 mt-3">
                            <label class="h5" for="contents">Description/Instruction</label>
                            <textarea class="form-control " rows="5" id="contents" name="description"><?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {
echo $_smarty_tpl->tpl_vars['selected_event_type']->value->description;
}?></textarea>
                        </div>



                        <div class="row mt-3">
                            <div class="col-md-6">


                                <div class="mb-3">
                                    <label for="Related"><span class="h5"> Event Duration</span></label>

                                    <select name="duration" id="duration"  class="form-control">

                                        <option value="15" <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>
                                                <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value->duration === 15) {?>
                                        selected<?php }?>
                                                <?php }?>>15 minutes</option>


                                        <option value="30" <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>
                                                <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value->duration === 30) {?>
                                        selected

                                                <?php }?>
                                                <?php }?>>30 minutes</option>


                                        <option value="45" <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>
                                            <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value->duration === 45) {?>
                                        selected<?php }?>
                                                <?php }?>>45 minutes</option>
                                        <option value="60" <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>
                                                <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value->duration === 60) {?>
                                        selected<?php }?>
                                                <?php }?>>60 minutes</option>


                                    </select>
                                </div>




                            </div>
                            <div class="col-md-6">

                                <div class="mb-3">
                                    <label for="Related"><span class="h5">Timezone</span></label>

                                    <select name="timezone" id="timezone"  class="form-control" >
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['timezonelist']->value, 'label', false, 'value');
$_smarty_tpl->tpl_vars['label']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['value']->value => $_smarty_tpl->tpl_vars['label']->value) {
$_smarty_tpl->tpl_vars['label']->do_else = false;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['value']->value;?>
"
                                                    <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value->timezone === $_smarty_tpl->tpl_vars['value']->value) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                                    <?php if ($_smarty_tpl->tpl_vars['config']->value['timezone'] == $_smarty_tpl->tpl_vars['value']->value) {?>selected="selected" <?php }?>>


                                                <?php echo $_smarty_tpl->tpl_vars['label']->value;?>



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
                                    <label for="Related"><span class="h5"> Availability hour start</span></label>

                                    <select name="hour_start" id="hour_start"  class="form-control">


                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['intervals']->value, 'interval');
$_smarty_tpl->tpl_vars['interval']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['interval']->value) {
$_smarty_tpl->tpl_vars['interval']->do_else = false;
?>
                                            <option value="<?php ob_start();
echo $_smarty_tpl->tpl_vars['interval']->value;
$_prefixVariable1 = ob_get_clean();
echo $_prefixVariable1;?>
"
                                                    <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value->hour_start === $_smarty_tpl->tpl_vars['interval']->value) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                            ><?php ob_start();
echo $_smarty_tpl->tpl_vars['interval']->value;
$_prefixVariable2 = ob_get_clean();
echo $_prefixVariable2;?>
 </option>

                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </select>
                                </div>




                            </div>
                            <div class="col-md-6">

                                <div class="mb-3">
                                    <label for="Related"><span class="h5">Availability hour end</span></label>

                                    <select name="hour_end" id="hour_end"  class="form-control">

                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['intervals']->value, 'interval');
$_smarty_tpl->tpl_vars['interval']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['interval']->value) {
$_smarty_tpl->tpl_vars['interval']->do_else = false;
?>
                                            <option value="<?php ob_start();
echo $_smarty_tpl->tpl_vars['interval']->value;
$_prefixVariable3 = ob_get_clean();
echo $_prefixVariable3;?>
"
                                                    <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_event_type']->value->hour_end === $_smarty_tpl->tpl_vars['interval']->value) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                            ><?php ob_start();
echo $_smarty_tpl->tpl_vars['interval']->value;
$_prefixVariable4 = ob_get_clean();
echo $_prefixVariable4;?>
 </option>

                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                                    </select>
                                </div>

                            </div>
                        </div>

                        <div class="mb-3 mt-3">
                            <label><span class="h5">Days</span></label>

                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['days']->value, 'value', false, 'key');
$_smarty_tpl->tpl_vars['value']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['key']->value => $_smarty_tpl->tpl_vars['value']->value) {
$_smarty_tpl->tpl_vars['value']->do_else = false;
?>
                                <div class="form-check " >
                                    <input class="form-check-input h5 " type="checkbox" <?php if (in_array($_smarty_tpl->tpl_vars['key']->value,$_smarty_tpl->tpl_vars['selected_event_type_days']->value)) {?>
                                        checked
                                    <?php }?> id="day_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
" name="available_days[]" value="<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
">
                                    <label class="form-check-label h5" for="day_<?php echo $_smarty_tpl->tpl_vars['key']->value;?>
">
                                      <?php echo $_smarty_tpl->tpl_vars['value']->value['name'];?>

                                    </label>
                                </div>


                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

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
class Block_2032823609619e879ea85bf6_78066240 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_2032823609619e879ea85bf6_78066240',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {



            $("#timezone").select2();
            $("#duration").select2();
            $("#hour_start").select2();
            $("#hour_end").select2();




            });




    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
