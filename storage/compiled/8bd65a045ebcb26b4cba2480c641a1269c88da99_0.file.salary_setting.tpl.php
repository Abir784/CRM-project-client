<?php
/* Smarty version 3.1.39, created on 2021-11-28 14:09:40
  from '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/salary_setting.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a3d3f4730b55_04543824',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8bd65a045ebcb26b4cba2480c641a1269c88da99' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/a-hrm/views/salary_setting.tpl',
      1 => 1638126576,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a3d3f4730b55_04543824 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, false);
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_168130431261a3d3f471a607_50224026', "head");
?>




<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_113844812661a3d3f471d6e1_88570418', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_8179401561a3d3f472f5a8_36642351', "script");
?>



<?php }
/* {block "head"} */
class Block_168130431261a3d3f471a607_50224026 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_168130431261a3d3f471a607_50224026',
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
        .alert bg-success{
            color: #2CCE89!important;}

        }
    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_113844812661a3d3f471d6e1_88570418 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_113844812661a3d3f471d6e1_88570418',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <div class="row">



        <div class="col-md-9">



            <div class="card">

                <div class="card-body">
                    <h2 class="h2">Set Salary</h2>
                    <hr>


                    <form method="post" action="">
                        <div class="row mt-5">
                            <div class="col-md-12">
                                <div class="alert bg-success-400 text-white" role="alert" style=" background-color:#857BF3 ">
                                    <strong>Base Salary</strong>
                                </div>

                            </div>


                        </div>

                        <div class="row mt-3">


                            <div class="col-md-7">
                                <div class="mb-3">
                                    <label for="title"><span class="h6">Base Salary</span></label>
                                    <input class="form-control" name="allowance_amount" id="base_salary" value="<?php echo numberFormatUsingCurrency($_smarty_tpl->tpl_vars['employee']->value->salary,$_smarty_tpl->tpl_vars['config']->value['home_currency']);?>
">
                                </div>


                            </div>


                        </div>
                        <div class="row mt-5">
                            <div class="col-md-12">
                                <div class="alert bg-success-400 text-white" role="alert" style=" background-color:#2CCE89 ">
                                   <strong>Allowance</strong>
                                </div>

                            </div>


                        </div>


                        <div class="row" id="div_allowance">



                                <div class="col-md-5">
                                    <div class="mb-3 mb-3">
                                        <label for="Related"><span class="h6">Allowance Type</span></label>
                                        <select name="employee_id" id="related"  class="form-control">



                                            <option value="0">None</option>
                                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['allowances']->value, 'allowance');
$_smarty_tpl->tpl_vars['allowance']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['allowance']->value) {
$_smarty_tpl->tpl_vars['allowance']->do_else = false;
?>
                                                <option value="<?php echo $_smarty_tpl->tpl_vars['allowance']->value->id;?>
"

                                                        <?php if ($_smarty_tpl->tpl_vars['allowance']->value) {?>

                                                            <?php if ($_smarty_tpl->tpl_vars['allowance']->value->employee_id === $_smarty_tpl->tpl_vars['allowance']->value->id) {?>
                                                                selected
                                                            <?php }?>

                                                        <?php }?>

                                                ><?php echo $_smarty_tpl->tpl_vars['allowance']->value->title;?>
</option>
                                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                        </select>


                                    </div>


                                </div>

                                <div class="col-md-7">
                                    <div class="mb-3 mb-3">
                                        <label for="title"><span class="h6">Amount</span></label>
                                        <input class="form-control" name="allowance_amount"

                                        >
                                    </div>


                                </div>










                        </div>
                        <div class="row mt-3 ms-1">
                            <a href="javascript:void(0);" class="btn btn-primary btn-sm btn-icon rounded-circle" id="allowance_add">
                                <i class="fal fa-plus"></i>
                            </a>

                        </div>
                        <div class="row mt-6">
                            <div class="col-md-12">
                                <div class="alert bg-danger-400 text-white" role="alert" style=" background-color:#EA5455 ">
                                    <strong>Deduction</strong>
                                </div>

                            </div>


                        </div>


                        <div class="row  mt-3" id="div_deduction">
                            <div class="col-md-5">
                                <div class="mb-3 mb-3">
                                    <label for="title"><span class="h6">Deduction Type</span></label>
                                    <select name="trainer_id" id="trainer"  class="form-control">



                                        <option value="0">None</option>
                                        <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['deductions']->value, 'deductioon');
$_smarty_tpl->tpl_vars['deductioon']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['deductioon']->value) {
$_smarty_tpl->tpl_vars['deductioon']->do_else = false;
?>
                                            <option value="<?php echo $_smarty_tpl->tpl_vars['deductioon']->value->id;?>
"

                                                    <?php if ($_smarty_tpl->tpl_vars['selected_deduction']->value) {?>

                                                        <?php if ($_smarty_tpl->tpl_vars['selected_deductonn']->value->trainer_id === $_smarty_tpl->tpl_vars['deduction']->value->id) {?>
                                                            selected
                                                        <?php }?>

                                                    <?php }?>

                                            ><?php echo $_smarty_tpl->tpl_vars['deductioon']->value->title;?>
</option>
                                        <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>

                                    </select>
                                </div>

                            </div>
                            <div class="col-md-7">
                                <div class="mb-3 mb-3">
                                    <label for="title"><span class="h6">Amount</span></label>
                                    <input class="form-control" name="deduction_amount"

                                    >
                                </div>


                            </div>
                        </div>
                        <div class="row mt-3 ms-1">
                            <a href="javascript:void(0);" class="btn btn-primary btn-sm btn-icon rounded-circle" id="deduction_add">
                                <i class="fal fa-plus"></i>
                            </a>

                        </div>


                        <div class="hr-line-dashed"></div>

                        <div class="row">
                            <div class="col-sm-4 ms-sm-auto">
                                <table class="table table-clean">
                                    <tbody>
                                    <tr>
                                        <td class="text-left">
                                            <strong>Base Salary</strong>
                                        </td>
                                        <td class="text-end" id="gross_earnings"><?php echo numberFormatUsingCurrency($_smarty_tpl->tpl_vars['employee']->value->salary,$_smarty_tpl->tpl_vars['config']->value['home_currency']);?>
</td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">
                                            <strong>Gross Earnings</strong>
                                        </td>
                                        <td class="text-end" id="gross_earnings"><?php echo numberFormatUsingCurrency(0,$_smarty_tpl->tpl_vars['config']->value['home_currency']);?>
</td>
                                    </tr>
                                    <tr>
                                        <td class="text-left">
                                            <strong>Gross Deductions</strong>
                                        </td>
                                        <td class="text-end"><?php echo numberFormatUsingCurrency(0,$_smarty_tpl->tpl_vars['config']->value['home_currency']);?>
</td>
                                    </tr>

                                    <tr class="table-scale-border-top border-left-0 border-right-0 border-bottom-0">
                                        <td class="text-left keep-print-font">
                                            <h4 class="m-0 fw-700 h2 keep-print-font color-primary-700">Net Pay</h4>
                                        </td>
                                        <td class="text-end keep-print-font">
                                            <h4 class="m-0 fw-700 h2 keep-print-font"><?php echo numberFormatUsingCurrency(0,$_smarty_tpl->tpl_vars['config']->value['home_currency']);?>
</h4>
                                        </td>
                                    </tr>

                                    </tbody>
                                </table>
                            </div>
                        </div>



                        <button class="btn btn-primary mt-6" type="submit">Save</button>
                        <button class="btn btn-success mt-6" type="submit">Generate Payslip</button>

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
class Block_8179401561a3d3f472f5a8_36642351 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_8179401561a3d3f472f5a8_36642351',
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




            // $("#pay").select2();
            $("#currency").select2();

            $('#contents').redactor(
                {
                    minHeight: 200, // pixels
                    plugins: ['fontcolor']
                }
            );

            let $div_allowance = $('#div_allowance');
            let $div_allowance_html = $div_allowance.html();

            $('#allowance_add').on('click',function (event) {
             event.preventDefault();
             $div_allowance.append($div_allowance_html);

            });
            let $div_deduction = $('#div_deduction');
            let $div_deduction_html = $div_deduction.html();

            $('#deduction_add').on('click',function (event) {
                event.preventDefault();
                $div_deduction.append($div_deduction_html);

            });


            let $gross_earnings = $('#gross_earnings');
            let $base_salary = $('#base_salary');
            let gross_earning = 0;
            let base_salary = 0;

            function calculate_salary() {

                base_salary = $base_salary.val();
                base_salary = parseFloat(base_salary);

                if(base_salary){
                    gross_earning = base_salary;
                }



                $gross_earnings.html(gross_earning);

            }

            calculate_salary();

            $base_salary.on('keyup',function () {
                calculate_salary();
            });





        });


    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
