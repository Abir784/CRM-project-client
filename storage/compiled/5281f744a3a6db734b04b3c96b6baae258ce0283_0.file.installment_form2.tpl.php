<?php
/* Smarty version 3.1.39, created on 2022-08-06 15:44:54
  from 'C:\xampp\htdocs\well-known\ui\theme\default\installment_form2.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62ee7e66b40bc8_92721856',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '5281f744a3a6db734b04b3c96b6baae258ce0283' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\installment_form2.tpl',
      1 => 1659796755,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62ee7e66b40bc8_92721856 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_159289050262ee7e66b19a25_30862637', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_16368682262ee7e66b24122_44655453', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_208586013162ee7e66b3b287_16705043', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_159289050262ee7e66b19a25_30862637 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_159289050262ee7e66b19a25_30862637',
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
class Block_16368682262ee7e66b24122_44655453 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_16368682262ee7e66b24122_44655453',
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

                                    <?php
$_smarty_tpl->tpl_vars['i'] = new Smarty_Variable(null, $_smarty_tpl->isRenderingCache);
$_smarty_tpl->tpl_vars['i']->value = 0;
if ($_smarty_tpl->tpl_vars['i']->value <= $_smarty_tpl->tpl_vars['col']->value) {
for ($_foo=true;$_smarty_tpl->tpl_vars['i']->value <= $_smarty_tpl->tpl_vars['col']->value; $_smarty_tpl->tpl_vars['i']->value++) {
?>
                                        <div class="mb-3 row">
                                        <label for="name" class="col-sm-3"><span class="h6"><?php echo 'Installment No.';?>
</span><span class="text-danger">*</span></label>
                                            <div class="col-sm-9">
                                            <input type="text" id="installment_no." name="installment_no" class="form-control" autofocus>
                                            <input type="hidden" id="id" name="id" class="form-control" autofocus value="<?php echo $_smarty_tpl->tpl_vars['id']->value;?>
">
                                            </div>
                                            </div>
                                            
                                            
                                                                                        
                                                                                        
                                                                                        
                                                                                        
                                            <div class="mb-3 row">
                                            <label for="code" class="col-sm-3"><span class="h6"><?php echo 'Amount:';?>
</span></label>
                                            <div class="col-sm-9">
                                            <input type="text" id="amount" name="amount" class="form-control" value="">
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                        <label for="code" class="col-sm-3"><span class="h6"><?php echo 'Due Date:';?>
</span></label>
                                        <div class="col-sm-9">
                                            <input type="date" id="due_date" name="due_date" class="form-control" value="">
                                        </div>
                                    </div>
                              
                                    
                                    <?php }
}
?>
                                    <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">
                                        
                                        
                                        <button class="btn btn-primary mt-3 me-3" type="submit" id="submit"><?php echo 'Add Installment';?>
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



    
<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_208586013162ee7e66b3b287_16705043 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_208586013162ee7e66b3b287_16705043',
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

                         window.location = base_url + 'student/list/' + data;
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
