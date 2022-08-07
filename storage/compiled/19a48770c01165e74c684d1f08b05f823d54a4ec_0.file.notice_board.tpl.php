<?php
/* Smarty version 3.1.39, created on 2021-11-28 14:14:13
  from '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/notice_board.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a3d50557fbc8_27373881',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '19a48770c01165e74c684d1f08b05f823d54a4ec' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/notice_board.tpl',
      1 => 1637779260,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a3d50557fbc8_27373881 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_181243123061a3d5055794d5_61208900', "content");
?>







<?php }
/* {block "content"} */
class Block_181243123061a3d5055794d5_61208900 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_181243123061a3d5055794d5_61208900',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row mb-3">



        <div class="col-md-12">



            <div class="card">
                <div class="card-body">

                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/add-notice-board" class="btn btn-primary add_event waves-effect waves-light">Add Notice Board</a>

                </div>

            </div>
        </div>



    </div>

    <div class="row">



        <div class="col-md-12">



            <div class="card">

                <div class="card-body">



                    <div class="table-responsive">
                        <table class="table table-striped ">
                            <thead>
                            <tr>
                                <th class="bold">Title</th>
                                <th class="bold">Date</th>

                                <th class="text-end bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                            </tr>
                            </thead>
                            <tbody>


                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['notice_boards']->value, 'notice_board');
$_smarty_tpl->tpl_vars['notice_board']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['notice_board']->value) {
$_smarty_tpl->tpl_vars['notice_board']->do_else = false;
?>
                                <tr>
                                    <td>

                                        <?php echo $_smarty_tpl->tpl_vars['notice_board']->value->title;?>


                                    </td>
                                    <td>

                                        <?php echo $_smarty_tpl->tpl_vars['notice_board']->value->date;?>


                                    </td>

                                    <td class="text-end">
                                                                                <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/edit-notice-board/<?php echo $_smarty_tpl->tpl_vars['notice_board']->value->id;?>
" class="btn btn-info">Edit</a>

                                        <a href="" onclick="confirmThenGoToUrl(event,'a-hrm/app/delete-company-policy/<?php echo $_smarty_tpl->tpl_vars['notice_board']->value->id;?>
')" class="btn btn-danger">Delete</a>
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
