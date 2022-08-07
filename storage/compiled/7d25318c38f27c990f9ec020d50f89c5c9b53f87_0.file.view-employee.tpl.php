<?php
/* Smarty version 3.1.39, created on 2021-11-28 13:01:26
  from '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/view-employee.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a3c3f61fe075_39349464',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7d25318c38f27c990f9ec020d50f89c5c9b53f87' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/view-employee.tpl',
      1 => 1638122474,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a3c3f61fe075_39349464 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_153370253461a3c3f61ea6e8_81425482', "head");
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_118846500961a3c3f61ec721_78157200', "content");
?>

<?php }
/* {block "head"} */
class Block_153370253461a3c3f61ea6e8_81425482 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_153370253461a3c3f61ea6e8_81425482',
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
            color: #2CCE89!important;
        }

        .icon-shape {
            padding: 12px;
            text-align: center;
            display: inline-flex;
            align-items: center;
            justify-content: center;
            border-radius: 50%;
        }
        .icon {
            width: 3rem;
            height: 3rem;
        }
        .text-white {
            color: #fff !important;
        }
        .text-white {
            color: #fff !important;
        }
        .shadow {
            box-shadow: 0 0 2rem 0 rgba(136, 152, 170, 0.15) !important;
        }
        .rounded-circle, .avatar.rounded-circle img {
            border-radius: 50% !important;
        }
        .bg-gradient-red {
            background: linear-gradient(
                    87deg
                    , #f5365c 0, #f56036 100%) !important;
        }

        .bg-gradient-success {
            background: #E9F9EE !important;
            color: #27C76F;
        }
        .bg-gradient-blue {
            background: linear-gradient(90deg, rgba(10,6,68,1) 0%, rgba(7,13,46,1) 0%, rgba(41,20,110,1) 44%, rgba(35,10,112,1) 50%, rgba(69,28,144,1) 100%, rgba(215,246,247,1) 100%); !important;

        }
        .bg-gradient-pink {
            background: linear-gradient(90deg, rgba(10,6,68,1) 0%, rgba(204,147,5,1) 0%, rgba(189,123,10,1) 100%, rgba(237,227,200,1) 100%, rgba(240,133,219,1) 100%, rgba(215,246,247,1) 100%);

        }
        .bg-gradient-primary {
            background: linear-gradient(
                    87deg
                    , #5e72e4 0, #825ee4 100%) !important;
        }
        .bg-info {
            background: #EFEDFD !important;
        }
        .clx-avatar {
            display: inline-block;
            font-size: 1.3em;
            width: 42px;
            height: 42px;
            line-height: 2;
            text-align: center;
             border-radius: 0%;
            background: #eee5ff;
            vertical-align: middle;
            color: #a47dfd;
        }
        .text-light {
            color: #ced4da !important;
        }




         .user-info-title {
            width: 11.785rem;
        }

    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_118846500961a3c3f61ec721_78157200 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_118846500961a3c3f61ec721_78157200',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">
        <!-- User Card starts-->
        <div class="col-xl-9 col-lg-8 col-md-7">
            <div class="card user-card">
                <div class="card-body">
                    <div class="row">
                        <div class="col-xl-6 col-lg-12 d-flex flex-column justify-content-between border-container-lg">
                            <div class="user-avatar-section ">
                                <div class="d-flex justify-content-start">
                                    <div class="me-3 mb-3">
                                        <?php if ($_smarty_tpl->tpl_vars['employee']->value->image) {?>
                                            <img alt="image" class="img-thumbnail  img-fluid"  style="max-width: 120px;" src="<?php echo $_smarty_tpl->tpl_vars['app_url']->value;?>
storage/employees/<?php echo $_smarty_tpl->tpl_vars['employee']->value->image;?>
">
                                        <?php } else { ?>

                                            <span class=" clx-avatar img-thumbnail  img-fluid " style="min-width: 115px; min-height: 115px;"><span class="mt-3" style="font-size: 50px;"><?php echo $_smarty_tpl->tpl_vars['employee']->value['name'][0];
echo $_smarty_tpl->tpl_vars['employee']->value['name'][1];?>
</span> </span>

                                        <?php }?>
                                    </div>


                                    <div class="d-flex flex-column ml-1 ">
                                        <div class="user-info mb-1">
                                            <h4 class="mb-0"><?php echo $_smarty_tpl->tpl_vars['employee']->value->name;?>
</h4>
                                            <span class="card-text"><?php echo $_smarty_tpl->tpl_vars['employee']->value->email;?>
</span>
                                        </div>
                                        <div>

                                            <?php if ($_smarty_tpl->tpl_vars['employee']->value->facebook) {?>
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['employee']->value->facebook;?>
" target="_blank" class="fs-xl" >
                                                    <svg height="24px" id="Layer_1" style="enable-background:new 0 0 67 67;" version="1.1" viewBox="0 0 67 67" width="30px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M29.765,50.32h6.744V33.998h4.499l0.596-5.624h-5.095  l0.007-2.816c0-1.466,0.14-2.253,2.244-2.253h2.812V17.68h-4.5c-5.405,0-7.307,2.729-7.307,7.317v3.377h-3.369v5.625h3.369V50.32z   M34,64C17.432,64,4,50.568,4,34C4,17.431,17.432,4,34,4s30,13.431,30,30C64,50.568,50.568,64,34,64z" style="fill-rule:evenodd;clip-rule:evenodd;fill:#3A589B;"/></svg>
                                                </a>
                                            <?php }?>

                                            <?php if ($_smarty_tpl->tpl_vars['employee']->value->twitter) {?>
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['employee']->value->twitter;?>
" target="_blank" class="fs-xl" style="color:#38A1F3">
                                                    <svg height="24px" id="Layer_1" style="enable-background:new 0 0 67 67;" version="1.1" viewBox="0 0 67 67" width="30px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M38.167,22.283c-2.619,0.953-4.274,3.411-4.086,6.101  l0.063,1.038l-1.048-0.127c-3.813-0.487-7.145-2.139-9.974-4.915l-1.383-1.377l-0.356,1.017c-0.754,2.267-0.272,4.661,1.299,6.271  c0.838,0.89,0.649,1.017-0.796,0.487c-0.503-0.169-0.943-0.296-0.985-0.233c-0.146,0.149,0.356,2.076,0.754,2.839  c0.545,1.06,1.655,2.097,2.871,2.712l1.027,0.487l-1.215,0.021c-1.173,0-1.215,0.021-1.089,0.467  c0.419,1.377,2.074,2.839,3.918,3.475l1.299,0.444l-1.131,0.678c-1.676,0.976-3.646,1.526-5.616,1.567  C20.775,43.256,20,43.341,20,43.405c0,0.211,2.557,1.397,4.044,1.864c4.463,1.377,9.765,0.783,13.746-1.568  c2.829-1.674,5.657-5,6.978-8.221c0.713-1.715,1.425-4.851,1.425-6.354c0-0.975,0.063-1.102,1.236-2.267  c0.692-0.678,1.341-1.419,1.467-1.631c0.21-0.403,0.188-0.403-0.88-0.043c-1.781,0.636-2.033,0.551-1.152-0.402  c0.649-0.678,1.425-1.907,1.425-2.267c0-0.063-0.314,0.042-0.671,0.233c-0.377,0.212-1.215,0.53-1.844,0.72l-1.131,0.361l-1.027-0.7  c-0.566-0.381-1.361-0.805-1.781-0.932C40.766,21.902,39.131,21.944,38.167,22.283z M34,64C17.432,64,4,50.568,4,34  C4,17.431,17.432,4,34,4s30,13.431,30,30C64,50.568,50.568,64,34,64z" style="fill-rule:evenodd;clip-rule:evenodd;fill:#598DCA;"/></svg>
                                                </a>
                                            <?php }?>

                                            <?php if ($_smarty_tpl->tpl_vars['employee']->value->linkedin) {?>
                                                <a href="<?php echo $_smarty_tpl->tpl_vars['employee']->value->linkedin;?>
" target="_blank" class="fs-xl" style="color:#0077B5">
                                                    <svg height="24px" id="Layer_1" style="enable-background:new 0 0 67 67;" version="1.1" viewBox="0 0 67 67" width="30px" xml:space="preserve" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink"><path d="M49.837,48.137V36.425c0-6.275-3.35-9.195-7.816-9.195  c-3.604,0-5.219,1.983-6.119,3.374V27.71h-6.79c0.09,1.917,0,20.427,0,20.427h6.79V36.729c0-0.609,0.044-1.219,0.224-1.655  c0.49-1.22,1.607-2.483,3.482-2.483c2.458,0,3.44,1.873,3.44,4.618v10.929H49.837z M21.959,24.922c2.367,0,3.842-1.57,3.842-3.531  c-0.044-2.003-1.475-3.528-3.797-3.528s-3.841,1.524-3.841,3.528c0,1.961,1.474,3.531,3.753,3.531H21.959z M33,64  C16.432,64,3,50.568,3,34C3,17.431,16.432,4,33,4s30,13.431,30,30C63,50.568,49.568,64,33,64z M25.354,48.137V27.71h-6.789v20.427  H25.354z" style="fill-rule:evenodd;clip-rule:evenodd;fill:#D8D9D8;"/></svg>
                                                </a>

                                            <?php }?>

                                        </div>
                                        <div class="d-flex flex-wrap mt-3">
                                            <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/edit-employee/<?php echo $_smarty_tpl->tpl_vars['employee']->value->id;?>
" class="btn btn-primary mr-2">Edit</a>
                                            <button class="btn btn-danger  ml-1">Delete</button>
                                        </div>
                                    </div>
                                </div>
                            </div>

                        </div>
                        <div class="col-xl-6 col-lg-12 mt-2 mt-xl-0">
                            <div class="user-info-wrapper">
                                <div class="d-flex flex-wrap mb-2">
                                    <div class="user-info-title text-muted">

                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-user"><path d="M20 21v-2a4 4 0 0 0-4-4H8a4 4 0 0 0-4 4v2"></path><circle cx="12" cy="7" r="4"></circle></svg>
                                        <span class="card-text user-info-title text-muted font-weight-bold mb-0 ms-3">Username</span>
                                    </div>
                                    <p class="card-text mb-0"><?php echo $_smarty_tpl->tpl_vars['employee']->value->email;?>
</p>
                                </div>
                                <div class="d-flex flex-wrap my-50 mb-2">
                                    <div class="user-info-title text-muted">

                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-home"><path d="M3 9l9-7 9 7v11a2 2 0 0 1-2 2H5a2 2 0 0 1-2-2z"></path><polyline points="9 22 9 12 15 12 15 22"></polyline></svg>
                                        <span class="card-text user-info-title text-muted font-weight-bold mb-0 ms-3">Department</span>
                                    </div>
                                    <p class="card-text mb-0">
                                        <?php if ((isset($_smarty_tpl->tpl_vars['departments']->value[$_smarty_tpl->tpl_vars['employee']->value->department]))) {?>
                                            <?php echo $_smarty_tpl->tpl_vars['departments']->value[$_smarty_tpl->tpl_vars['employee']->value->department]->title;?>

                                        <?php }?>

                                    </p>
                                </div>
                                <div class="d-flex flex-wrap my-50 mb-2">
                                    <div class="user-info-title text-muted">

                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-bookmark"><path d="M19 21l-7-5-7 5V5a2 2 0 0 1 2-2h10a2 2 0 0 1 2 2z"></path></svg>
                                        <span class="card-text user-info-title text-muted  font-weight-bold mb-0 ms-3">Designation</span>
                                    </div>
                                    <p class="card-text mb-0">
                                        <?php if ((isset($_smarty_tpl->tpl_vars['designations']->value[$_smarty_tpl->tpl_vars['employee']->value->designation]))) {?>
                                            <?php echo $_smarty_tpl->tpl_vars['designations']->value[$_smarty_tpl->tpl_vars['employee']->value->designation]->title;?>

                                        <?php }?>
                                    </p>
                                </div>
                                <div class="d-flex flex-wrap my-50 mb-2">
                                    <div class="user-info-title text-muted">

                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-map-pin"><path d="M21 10c0 7-9 13-9 13s-9-6-9-13a9 9 0 0 1 18 0z"></path><circle cx="12" cy="10" r="3"></circle></svg>
                                        <span class="card-text user-info-title text-muted font-weight-bold mb-0 ms-3">Country</span>
                                    </div>
                                    <p class="card-text mb-0"><?php echo $_smarty_tpl->tpl_vars['employee']->value->country;?>
</p>
                                </div>
                                <div class="d-flex flex-wrap mb-2">
                                    <div class="user-info-title text-muted">

                                        <svg xmlns="http://www.w3.org/2000/svg" width="14" height="14" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="feather feather-phone"><path d="M22 16.92v3a2 2 0 0 1-2.18 2 19.79 19.79 0 0 1-8.63-3.07 19.5 19.5 0 0 1-6-6 19.79 19.79 0 0 1-3.07-8.67A2 2 0 0 1 4.11 2h3a2 2 0 0 1 2 1.72 12.84 12.84 0 0 0 .7 2.81 2 2 0 0 1-.45 2.11L8.09 9.91a16 16 0 0 0 6 6l1.27-1.27a2 2 0 0 1 2.11-.45 12.84 12.84 0 0 0 2.81.7A2 2 0 0 1 22 16.92z"></path></svg>
                                        <span class="card-text user-info-title  text-muted font-weight-bold mb-0 ms-3">Phone</span>
                                    </div>
                                    <p class="card-text mb-0"><?php echo $_smarty_tpl->tpl_vars['employee']->value->phone;?>
</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="card mt-3">


                <div class="card-body">
                    <div class="h4">

                        Leaves

                    </div>




                    <table class="table table-striped w-100"  id="clx_datatable">
                    <thead>
                    <tr class="heading">

                        <th class="text-muted h6">Leave Type</th>
                        <th class="text-muted h6">Date</th>
                        <th class="text-muted h6">Status</th>
                        <th class="text-muted h6 text-end">Manage</th>

                    </tr>
                    </thead>
                    <tbody>

                    <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['leaves']->value, 'leave');
$_smarty_tpl->tpl_vars['leave']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['leave']->value) {
$_smarty_tpl->tpl_vars['leave']->do_else = false;
?>
                        <tr>


                            <td class="h6"  <?php echo $_smarty_tpl->tpl_vars['leave']->value->id;?>
>
                                <div class="col">
                                    <div class="row h6">
                                        <?php if ((isset($_smarty_tpl->tpl_vars['leave_types']->value[$_smarty_tpl->tpl_vars['leave']->value->type_id]))) {?>
                                            <?php echo $_smarty_tpl->tpl_vars['leave_types']->value[$_smarty_tpl->tpl_vars['leave']->value->type_id]->title;?>

                                        <?php }?>
                                    </div>



                                </div>


                            </td>

                            <td>
                                <div class="col"  <?php echo $_smarty_tpl->tpl_vars['leave']->value->id;?>
>
                                    <div class="row h6">
                                        <?php echo $_smarty_tpl->tpl_vars['leave']->value->date;?>

                                    </div>


                                </div>

                            </td>
                            <td class="text-info h6">
                                <?php if ($_smarty_tpl->tpl_vars['leave']->value->status === 'Approved') {?>
                                    <h6>
                               <span class="badge badge-success">
                                <?php echo $_smarty_tpl->tpl_vars['leave']->value->status;?>

                            </span>
                                    </h6>
                                <?php } elseif ($_smarty_tpl->tpl_vars['leave']->value->status === 'Declined') {?>

                                    <h6>
                                <span class="badge badge-danger">
                                <?php echo $_smarty_tpl->tpl_vars['leave']->value->status;?>

                            </span>

                                    </h6>

                                <?php }?>
                            </td>
                            <td>

                                    <a href="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
a-hrm/app/view-leave/<?php echo $_smarty_tpl->tpl_vars['leave']->value->id;?>
" class="btn btn-primary btn-icon btn-sm waves-effect waves-themed has-tooltip" data-title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['View'];?>
" data-placement="top"><i class="fal fa-user-alt"></i> </a>
                                    <a href="#" class="btn btn-info btn-icon btn-sm waves-effect waves-themed has-tooltip" data-title="<?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>
" data-placement="top"><i class="fal fa-pencil"></i> </a>


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
        <!-- /User Card Ends-->

        <!-- Plan Card starts-->
        <div class="col-xl-3 col-lg-4 col-md-5 ">
            <div class="card plan-card">
                <div class="card-header d-flex justify-content-between align-items-center pt-75 pb-1">
                    <h5 class="mb-0">Current Salary</h5>
                    <span class="badge badge-light-secondary" data-toggle="tooltip" data-placement="top" title="Expiry Date"
                    > <span class="nextYear"></span>
          </span>
                </div>
                <div class="card-body">
                    <div class="badge badge-success mb-2">Monthly</div>
                    <ul class="list-unstyled my-1 mb-4">
                        <li>
                            <span class="align-middle">$5987</span>
                        </li>

                    </ul>
                    <button class="btn btn-primary text-center btn-block">Set Salary</button>
                </div>
            </div>
            <div class="card bg-gradient-primary text-white  p-3 mt-3" style="min-height: 200px">

                <ul class="list-unstyled my-1 mb-4">
                    <li>
                        <span class="text-light">Account Name:</span>
                        <span><strong><?php echo $_smarty_tpl->tpl_vars['employee']->value->account_name;?>
</strong></span>
                    </li>
                    <li class="mt-3">
                        <span class="text-light">Account Number:</span>
                        <span class="h4 text-success"><?php echo $_smarty_tpl->tpl_vars['employee']->value->account_number;?>
</span>
                    </li>
                    <li class="mt-3">
                        <span class="text-light">Branch Name:</span>
                        <span><strong><?php echo $_smarty_tpl->tpl_vars['employee']->value->branch_name;?>
</strong></span>
                    </li>
                    <li class="mt-3">
                        <span class="text-light">Tax ID:</span>
                        <span class="text-warning">
                            <strong>
                                 <?php echo $_smarty_tpl->tpl_vars['employee']->value->tax_number;?>

                            </strong>

                        </span>
                    </li>

                </ul>

            </div>

        </div>

        <!-- /Plan CardEnds -->
    </div>

<div class="row">
    <div class="col-md-6">



    </div>
    <div class="col-md-4">




    </div>
</div>

    <div class="row mt-3">




        <div class="col-md-4">





        <div class="col-md-8">




        </div>




    </div>





<?php
}
}
/* {/block "content"} */
}
