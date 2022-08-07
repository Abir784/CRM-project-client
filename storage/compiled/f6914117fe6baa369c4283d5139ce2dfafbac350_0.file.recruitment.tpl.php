<?php
/* Smarty version 3.1.39, created on 2021-11-28 06:54:24
  from '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/recruitment.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a36df0d0d1c4_97352541',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'f6914117fe6baa369c4283d5139ce2dfafbac350' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/recruitment.tpl',
      1 => 1637779260,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a36df0d0d1c4_97352541 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_154438430061a36df0d01e35_13975090', "head_extras_from_layout");
?>






<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_203030265061a36df0d04389_66252481', "content");
?>







<?php }
/* {block "head_extras_from_layout"} */
class Block_154438430061a36df0d01e35_13975090 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head_extras_from_layout' => 
  array (
    0 => 'Block_154438430061a36df0d01e35_13975090',
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
    </style>
<?php
}
}
/* {/block "head_extras_from_layout"} */
/* {block "content"} */
class Block_203030265061a36df0d04389_66252481 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_203030265061a36df0d04389_66252481',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row mb-3">



        <div class="col-md-12">



            <div class="card">
                <div class="card-body">

                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/add-recruitment" class="btn btn-primary add_event waves-effect waves-light">Create Job Announcement</a>

                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/job-candidates" class="btn btn-primary add_event waves-effect waves-light">Job Candidates</a>
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

                                <th class="h6 text-muted">Title</th>
                                <th class="h6 text-muted">Publish Date</th>
                                <th class="h6 text-muted">End</th>



                                <th class="text-end bold"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Manage'];?>
</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['recruitments']->value, 'recruitment');
$_smarty_tpl->tpl_vars['recruitment']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['recruitment']->value) {
$_smarty_tpl->tpl_vars['recruitment']->do_else = false;
?>
                                <tr>
                                    <td>

                                     <?php echo $_smarty_tpl->tpl_vars['recruitment']->value->title;?>


                                    </td>
                                    <td>
                                        <?php echo $_smarty_tpl->tpl_vars['recruitment']->value->publish_date;?>



                                    </td>
                                    <td>
                                        <?php echo $_smarty_tpl->tpl_vars['recruitment']->value->end_date;?>


                                    </td>


                                    <td class="text-end">
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/view-recruitment/<?php echo $_smarty_tpl->tpl_vars['recruitment']->value->id;?>
" class="btn btn-success">view job Announcement</a>
                                        <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/edit-recruitment/<?php echo $_smarty_tpl->tpl_vars['recruitment']->value->id;?>
" class="btn btn-info">Edit</a>
                                        <a href=""  onclick="confirmThenGoToUrl(event,'a-hrm/app/delete-recruitment/<?php echo $_smarty_tpl->tpl_vars['recruitment']->value->id;?>
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
