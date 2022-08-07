<?php
/* Smarty version 3.1.39, created on 2021-11-24 13:42:32
  from '/Users/razib/Documents/valet/business-suite/apps/appointment/views/list.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_619e8798f3f256_19443980',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '0b5c17f78bdf9c07fe073f1faae0f57203b3e829' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/appointment/views/list.tpl',
      1 => 1637779260,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_619e8798f3f256_19443980 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_84304750619e8798f32595_22074382', "content");
?>






































































































<?php }
/* {block "content"} */
class Block_84304750619e8798f32595_22074382 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_84304750619e8798f32595_22074382',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row mb-3">

        <div class="col-md-12">


            <div class="card">
                <div class="card-body">

                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/add" class="btn btn-primary add_event waves-effect waves-light">New Appointment</a>

                </div>

            </div>
        </div>



    </div>

    <div class="row">



        <div class="col-md-12">



            <div class="card">

                <div class="card-body">


                    <ul class="nav nav-tabs nav-tabs-clean">
                        <li class="nav-item"><a class="nav-link <?php if ($_smarty_tpl->tpl_vars['for']->value === 'upcoming') {?>active<?php }?> " href="<?php ob_start();
echo $_smarty_tpl->tpl_vars['base_url']->value;
$_prefixVariable1 = ob_get_clean();
echo $_prefixVariable1;?>
appointment/app/list/">Upcoming</a></li>
                        <li class="nav-item"><a class="nav-link" href="<?php ob_start();
echo $_smarty_tpl->tpl_vars['base_url']->value;
$_prefixVariable2 = ob_get_clean();
echo $_prefixVariable2;?>
appointment/app/list/past/">Past</a></li>
                    </ul>

                    <?php if (count($_smarty_tpl->tpl_vars['appointments']->value)) {?>

                        <div class="table-responsive">
                            <table class="table table-striped">
                                <thead>
                                <tr>
                                    <th class=" h4 bold">Appointment</th>
                                    <th class=" h4 bold">Start Time</th>
                                    <th class=" h4 bold">End Time</th>

                                    <th class="text-end h4 bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                                </tr>
                                </thead>
                                <tbody>


                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['appointments']->value, 'appointment');
$_smarty_tpl->tpl_vars['appointment']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['appointment']->value) {
$_smarty_tpl->tpl_vars['appointment']->do_else = false;
?>
                                    <tr>
                                        <td>

                                            <a  class="h5" href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/edit/<?php echo $_smarty_tpl->tpl_vars['appointment']->value->id;?>
"><?php echo $_smarty_tpl->tpl_vars['appointment']->value->title;?>
</a>

                                        </td>

                                        <td>
                                            <?php echo date('D, M d Y, h:i A',strtotime($_smarty_tpl->tpl_vars['appointment']->value->start_time));?>

                                        </td>

                                        <td>
                                            <?php echo date('D, M d Y, h:i A',strtotime($_smarty_tpl->tpl_vars['appointment']->value->end_time));?>

                                        </td>

                                        <td class="float-right btn-group">
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/edit/<?php echo $_smarty_tpl->tpl_vars['appointment']->value->id;?>
" class="btn btn-info">Edit</a>
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
appointment/app/delete/<?php echo $_smarty_tpl->tpl_vars['appointment']->value->id;?>
" class="btn btn-danger">Delete</a>
                                        </td>

                                    </tr>
                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>






                                </tbody>
                            </table>
                        </div>

                        <?php } else { ?>
                        <p class="my-3">No data to display.</p>
                    <?php }?>



                </div>
            </div>
        </div>



    </div>




<?php
}
}
/* {/block "content"} */
}
