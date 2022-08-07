<?php
/* Smarty version 3.1.39, created on 2021-11-28 06:54:10
  from '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/add_allowance.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a36de24ac833_11796097',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '9ada5374b5c6038266b02390f43c55ab90e568e5' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/add_allowance.tpl',
      1 => 1637779230,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a36de24ac833_11796097 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_53111997861a36de2453101_62050395', "content");
?>

<?php }
/* {block "content"} */
class Block_53111997861a36de2453101_62050395 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_53111997861a36de2453101_62050395',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <div class="row">



        <div class="col-md-12">



            <div class="card">

                <div class="card-body">

                    <h3>Add Allowance Type</h3>

                    <hr>

                    <form method="post" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/save-allowance-type">

                        <?php if ($_smarty_tpl->tpl_vars['selected_allowance']->value) {?>
                            <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['selected_allowance']->value->id;?>
">
                        <?php }?>


                        <div class="mb-3">
                            <label for="title">Title</label>
                            <input class="form-control" name="title" id="title"
                                    <?php if ($_smarty_tpl->tpl_vars['selected_allowance']->value) {?>
                                value="<?php echo $_smarty_tpl->tpl_vars['selected_allowance']->value->title;?>
"

                                    <?php }?>>
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
}
