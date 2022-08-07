<?php
/* Smarty version 3.1.39, created on 2022-08-05 15:59:10
  from 'C:\xampp\htdocs\well-known\ui\theme\default\course_add.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_62ed303ed0cda7_20846200',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '84ac0faec75c47e4256f4e55ae252a076023c95a' => 
    array (
      0 => 'C:\\xampp\\htdocs\\well-known\\ui\\theme\\default\\course_add.tpl',
      1 => 1659711109,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_62ed303ed0cda7_20846200 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_71240850562ed303ed04d34_57896713', "head");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_120413239662ed303ed059a5_53775771', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_40966960562ed303ed09364_98904442', "script");
?>



<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "head"} */
class Block_71240850562ed303ed04d34_57896713 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'head' => 
  array (
    0 => 'Block_71240850562ed303ed04d34_57896713',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>





<?php
}
}
/* {/block "head"} */
/* {block "content"} */
class Block_120413239662ed303ed059a5_53775771 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_120413239662ed303ed059a5_53775771',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="row">

        <div class="col-md-12">



            <div class="panel">
                <div class="panel-hdr">
                    <h2><span></span><?php echo $_smarty_tpl->tpl_vars['_L']->value['Add Course'];?>
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
                                            <label for="name" class="col-sm-3"><span class="h6"><?php echo 'Name of the Course:';?>
</span><span class="text-danger">*</span></label>
                                            <div class="col-sm-9">
                                                <input type="text" id="name" name="name" class="form-control" autofocus>
                                            </div>
                                        </div>


                                        
                                        
                                        
                                        
                                        <div class="mb-3 row">
                                            <label for="code" class="col-sm-3"><span class="h6"><?php echo 'Abbreviation:';?>
</span></label>
                                            <div class="col-sm-9">
                                                <input type="text" id="abbr" name="abbr" class="form-control" value="">
                                            </div>
                                        </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">


                                            <button class="btn btn-primary mt-3 me-3" type="submit" id="submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
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
class Block_40966960562ed303ed09364_98904442 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_40966960562ed303ed09364_98904442',
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


            //
            $("#submit").click(function (e) {
                e.preventDefault();
                $('#ibox_form').block({ message:block_msg });
                $.post(base_url + 'course/post/', $( "#rform" ).serialize())
                    .done(function (data) {
                        var sbutton = $("#submit");
                        if ($.isNumeric(data)) {

                        // window.location = base_url + 'partner/add/' + data;
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
