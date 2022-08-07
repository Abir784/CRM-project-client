{extends file="$layouts_admin"}
{block name="head"}




{/block}

{block name="content"}

    <div class="row">

        <div class="col-md-12">



            <div class="panel">
                <div class="panel-hdr">
                    <h2><span></span>{$_L['Add Student']}</h2>
                    <div class="panel-toolbar">
                        <a href="{$_url}student/import_csv/" class="btn btn-primary"><i class="fal fa-upload"></i> {$_L['Import Students']}</a>
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
                                            <label for="name" class="col-sm-3"><span class="h6">{$_L['Full Name']}</span><span class="text-danger">*</span></label>
                                            <div class="col-sm-9">
                                                <input type="text" id="name" name="name" class="form-control" autofocus>
                                            </div>
                                        </div>



                                   
                                            <div class="mb-3 row">
                                                <label for="whatsappnumber" class="col-sm-3"><span class="h6">{'Whatsapp Number'}</span> </label>
                                                <div class="col-sm-9">
                                                    <input type="text" id="number" name="number" class="form-control">
                                                </div>
                                            </div>



                                        <div class="mb-3 row">
                                            <label for="email" class="col-sm-3"><span class="h6">{$_L['Organization Email']}</span> </label>
                                            <div class="col-sm-9">

                                                <input type="email" id="email" name="email" class="form-control">
                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="desg" class="col-sm-3"><span class="h6">{$_L['desg']}</span> </label>
                                            <div class="col-sm-9">

                                                <input type="text" id="desg" name="desg" class="form-control">


                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                            <label for="course" class="col-sm-3"><span class="h6">{$_L['Course Name']}</span> </label>
                                            <div class="col-sm-9">
                                            <select name="course" class="form-control" id="course">
                                                <option class="form-control">___Select Course___</option>
                                                {foreach $courses as $course}
                                                <option value="{$course['id']}" class="form-control">{$course['name']}</option>
                                                {/foreach}
                                            
                                            
                                            
                                            </select>

                                                

                                            </div>
                                        </div>
                                        <div class="mb-3 row">
                                        <label for="batch" class="col-sm-3"><span class="h6">{$_L['Batch No.']}</span> </label>
                                        <div class="col-sm-9">

                                            <input type="text" id="batch" name="batch" class="form-control">

                                        </div>

                                      
                                     </div>
                                     <div class="mb-3 row">
                                     <label for="fee" class="col-sm-3"><span class="h6">{$_L['Total fee']}</span> </label>
                                     <div class="col-sm-9">

                                         <input type="text" id="fee" name="fee" class="form-control">

                                     </div>
                                      </div>
                                      <div class="mb-3 row">
                                      <label for="payment_type" class="col-sm-3"><span class="h6">{$_L['payment_type']}</span> </label>
                                      <div class="col-sm-9">
 
                                          <input type="text" id="payment_type" name="payment_type" class="form-control">
 
                                      </div>
                                      </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <div class="mb-3">


                                            <button class="btn btn-primary mt-3 me-3" type="submit" id="submit">{$_L['Save']}</button>


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




{/block}

{block name="script"}
    <script>
        $(document).ready(function () {
            $(".progress").hide();
            $("#emsg").hide();
            var _url = '{$_url}';





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
                $.post(base_url + 'student/post/', $( "#rform" ).serialize())
                    .done(function (data) {
                        var sbutton = $("#submit");
                        if ($.isNumeric(data)) {

                            //window.location = base_url + 'contacts/view/' + data;
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





            {if $config['show_business_number'] eq '1'}


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


            {/if}






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
    </script>
{/block}


