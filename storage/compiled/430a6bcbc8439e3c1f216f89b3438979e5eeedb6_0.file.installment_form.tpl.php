<?php
/* Smarty version 3.1.39, created on 2022-08-07 15:57:01
  from 'C:\xampp\htdocs\well-known\ui\theme\default\installment_form.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62efd2bd69af14_32523344',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '430a6bcbc8439e3c1f216f89b3438979e5eeedb6' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\installment_form.tpl',
      1 => 1659884218,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62efd2bd69af14_32523344 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_57548618762efd2bd691a94_88776661', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_96043106562efd2bd694f23_60060624', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_86331187062efd2bd6995d0_52292669', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_57548618762efd2bd691a94_88776661 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_57548618762efd2bd691a94_88776661',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css" />
    <style>

        <?php if (!empty($_smarty_tpl->tpl_vars['config']->value['admin_dark_theme'])) {?>

        <?php } else { ?>
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

        <?php }?>

    </style>
<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_96043106562efd2bd694f23_60060624 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_96043106562efd2bd694f23_60060624',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">

        <div class="col-md-12">



            <div class="panel">
                <div class="panel-hdr">
                    <h2><span></span><?php echo 'Add Intsallment';?>
</h2>
                    <div class="panel-toolbar">
                    </div>

                </div>

                <div class="panel-container show" id="ibox_form">

                    <div class="panel-content">

                        <div class="px-2">
                            <div class="alert alert-danger" id="emsg">
                                <span id="emsgbody"></span>
                            </div>

                            <form id="rform">
                                <div class="row">
                                    <div class="col-md-6 col-sm-12">
                                        <div class="mb-3 row">
                                            <label for="name" class="col-sm-3"><span class="h6"><?php echo 'Number of Installments:';?>
</span><span class="text-danger">*</span></label>
                                            <div class="col-sm-9">
                                            <input type="text" id="installment_no." name="installment_no" class="form-control" autofocus>
                                            <input type="hidden" id="id" name="id" class="form-control" autofocus value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
">
                                            </div>
                                        </div>
                                        
                                    </div>


                                 <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">


                                            <button class="btn btn-primary mt-3 me-3" type="submit" id="submit"><?php echo 'Save';?>
</button>


                                        </div>
                                    </div>
                                </div>


                            </form>
                        </div>

                    </div>

                </div>



            
            </div>
        </div>
    </div>
    <div class="row">
     <div class="col-md-12">


    <table class="table table-striped">
    <tr class="table-dark">
       <th><?php echo 'Installment No.';?>
</th>
       <th><?php echo 'Amount';?>
</th>
       <th><?php echo 'Due Date';?>
</th>

    </tr>
    <form class="rform">
    <?php
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable(null, $_smarty_tpl->isRenderingCache);
$_smarty_tpl->tpl_vars['i']->value = 0;
if ($_smarty_tpl->tpl_vars['i']->value < $_smarty_tpl->tpl_vars['row']->value) {
for ($_foo=true;$_smarty_tpl->tpl_vars['i']->value < $_smarty_tpl->tpl_vars['row']->value; $_smarty_tpl->tpl_vars['i']->value++) {
?>
    <tr>
       <td><input class="form-control" name="installment_no"></td>
       <td><input class="form-control" name="amount"></td>
       <td><input class="form-control" name="due_date"></td>

       </tr>
    <?php }
}
?>
       </form>
    </table>
     </div>
    </div>




<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_86331187062efd2bd6995d0_52292669 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_86331187062efd2bd6995d0_52292669',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(document).ready(function () {
            $(".progress").hide();
            $("#emsg").hide();
            var _url = '<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
';





            $('#tags').select2({
                tags: true,
                tokenSeparators: [','],
                theme: "bootstrap"
            });

            var $cid = $('#cid');

            $cid.select2();

            $country = $("#country");

            $country.select2();


            $("#submit").click(function (e) {
                e.preventDefault();
                $('#ibox_form').block({ message:block_msg });
                $.post(base_url + 'student/installment_form2/', $( "#rform" ).serialize())
                    .done(function (data) {
                        var sbutton = $("#submit");
                        if ($.isNumeric(data)) {

                            //window.location.reload();
                            
                        }
                        else {
                            $('#ibox_form').unblock();
                            var body = $("html, body");
                            body.animate({ scrollTop:0 }, '1000', 'swing');
                            $("#emsgbody").html(data);
                            $("#emsg").show("slow");
                        }
                    });
            });





            <?php if ($_smarty_tpl->tpl_vars['config']->value['show_business_number'] == '1') {?>


            var $business_number = $("#business_number");

            var $address = $("#address");

            var $city = $("#city");

            var $state = $("#state");

            var $zip = $("#zip");



            function getBusinessDetails() {

                if($cid.val() === '0'){
                   // $business_number.val('');
                    return;
                }

                $.getJSON( base_url + "contacts/get_company_details/" +  $cid.val(), function( data ) {

                    console.log(data);

                    if(data.success === false){

                    }
                    else{

                        $business_number.val(data.business_number);

                        $address.val(data.address1);

                        $city.val(data.city);

                        $state.val(data.state);

                        $zip.val(data.zip);

                        $country.val(data.country).trigger('change');

                    }

                });
            }

            getBusinessDetails();


            $cid.change(function () {

                getBusinessDetails();


            });


            <?php }?>






            var ib_form_bootbox = "<form class=\"form-horizontal push-10\" method=\"post\" onsubmit=\"return false;\">\n    <div class=\"mb-3\">\n        <div class=\"col-xs-12\">\n            <div class=\"form-material floating\">\n                <input class=\"form-control\" type=\"text\" id=\"group_name\" name=\"group_name\">\n                \n                           </div>\n        </div>\n    </div>\n\n</form>";


            var box =   bootbox.dialog({
                    title: 'Add new group',
                    message: ib_form_bootbox,
                    buttons: {
                        success: {
                            label: "Save",
                            className: "btn-primary",
                            callback: function () {
                                // var name = $('#name').val();
                                // var answer = $("input[name='awesomeness']:checked").val();
                                // Example.show("Hello " + name + ". You've chosen <b>" + answer + "</b>");

                                var group_name_val = $('#group_name').val();

                                if(group_name_val != ''){


                                     $.post( _url + "contacts/add_group/", { group_name: group_name_val })
                                        .done(function( data ) {

                                            if ($.isNumeric(data)) {

                                                window.location = _url + 'contacts/add/customer/' + data + '/' + $cid.val();

                                            }

                                            else {
                                                bootbox.alert(data);
                                            }

                                        }); 


                                }


                            }
                        }
                    },
                    show: false
                }
            );





            $("#add_new_group").click(function(e){

                e.preventDefault();

                box.modal('show');


            });





        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
