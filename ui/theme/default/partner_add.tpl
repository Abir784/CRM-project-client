{extends file="$layouts_admin"}
{block name="head"}




{/block}

{block name="content"}

    <div class="row">

        <div class="col-md-12">



            <div class="panel">
                <div class="panel-hdr">
                    <h2><span></span>{$_L['Add Partner']}</h2>
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
                                            <label for="name" class="col-sm-3"><span class="h6">{$_L['Full Name']}</span><span class="text-danger">*</span></label>
                                            <div class="col-sm-9">
                                                <input type="text" id="name" name="name" class="form-control" autofocus>
                                            </div>
                                        </div>


                                        {*                                    <div class="mb-3 ">*}

                                        {*                                        <label class="form-label" for="account">{$_L['Full Name']}<small class="red">*</small> </label>*}

                                        {*                                        <input type="text" id="account" name="account" class="form-control" autofocus>*}

                                        {*                                    </div>*}

                                        <div class="mb-3 row">
                                            <label for="code" class="col-sm-3"><span class="h6">{'Email'}</span></label>
                                            <div class="col-sm-9">
                                                <input type="gmail" id="gmail" name="gmail" class="form-control" value="">
                                            </div>
                                        </div>




                                        {*                                    <div class="mb-3"><label class="form-label" for="account">{$_L['Code']}</label>*}

                                        {*                                        <input type="text" id="code" name="code" class="form-control" value="{$predict_customer_number}">*}

                                        {*                                    </div>*}

                                    


                                        {*                                    <div class="mb-3"><label class="form-label" for="display_name">{$config['contact_extra_field']} </label>*}



                                        {*                                            <input type="text" id="display_name" name="display_name" class="form-control">*}


                                        {*                                    </div>*}

                              



                                        {*                                    <div class="mb-3"><label class="form-label" for="cid">{$_L['Company']}</label>*}



                                        {*                                            <select id="cid" name="cid" class="form-control">*}
                                        {*                                                <option value="0">{$_L['None']}</option>*}
                                        {*                                                {foreach $companies as $company}*}
                                        {*                                                    <option value="{$company['id']}" {if $c_selected_id eq ($company['id'])}selected{/if}>{$company['company_name']}</option>*}
                                        {*                                                {/foreach}*}
                                        {*                                            </select>*}



                                        {*                                    </div>*}




                 

                                     




                                        {*                                    <div class="mb-3 row"><label class="form-label" for="cid">{$_L['Type']}</label>*}

                                        {*                                        <div class="custom-control my-2 custom-checkbox">*}
                                        {*                                            <input type="checkbox" class="custom-control-input" id="defaultChecked" name="customer" value="Customer" {if $contact_type eq 'customer'}checked{/if}>*}
                                        {*                                            <label class="custom-control-label" for="defaultChecked">{$_L['Customer']}</label>*}
                                        {*                                        </div>*}

                                        {*                                        <div class="custom-control my-2 custom-checkbox">*}
                                        {*                                            <input type="checkbox" class="custom-control-input" id="input_supplier" name="supplier" value="Supplier" {if $contact_type eq 'supplier'}checked{/if}>*}
                                        {*                                            <label class="custom-control-label" for="input_supplier">{$_L['Supplier']}</label>*}
                                        {*                                        </div>*}


                                        {*                                    </div>*}




                                        {*                                    <div class="mb-3"><label class="form-label" for="email">{$_L['Email']}</label>*}

                                        {*                                        <input type="text" id="email" name="email" class="form-control">*}

                                        {*                                    </div>*}




                                        {*                                    <div class="mb-3"><label class="form-label" for="secondary_email">{$_L['Secondary Email']}</label>*}

                                        {*                                        <input type="text" id="secondary_email" name="secondary_email" class="form-control">*}

                                        {*                                    </div>*}




                                        {*                                    <div class="mb-3"><label class="form-label" for="phone">{$_L['Phone']}</label>*}

                                        {*                                        <input type="text" id="phone" name="phone" class="form-control">*}

                                        {*                                    </div>*}



                         


                                            {*                                        <div class="mb-3"><label class="form-label" for="fax">{$_L['Fax']}</label>*}

                                            {*                                            <input type="text" id="fax" name="fax" class="form-control">*}

                                            {*                                        </div>*}



                                        <div class="mb-3 row">
                                            <label for="address" class="col-sm-3"><span class="h6">{$_L['Address']}</span> </label>
                                            <div class="col-sm-9">

                                                <input type="text" id="address" name="address" class="form-control">


                                            </div>
                                        </div>

                                        <div class="mb-3 row">
                                            <label for="city" class="col-sm-3"><span class="h6">{$_L['City']}</span> </label>
                                            <div class="col-sm-9">

                                                <input type="text" id="city" name="city" class="form-control">


                                            </div>
                                        </div>




                                        {*                                    <div class="mb-3"><label class="form-label" for="city">{$_L['City']}</label>*}

                                        {*                                       <input type="text" id="city" name="city" class="form-control">*}

                                        {*                                    </div>*}

                                        <div class="mb-3 row">
                                            <label for="state" class="col-sm-3"><span class="h6">{$_L['State Region']}</span> </label>
                                            <div class="col-sm-9">

                                                <input type="text" id="state" name="state" class="form-control">


                                            </div>
                                        </div>


                                        {*                                    <div class="mb-3"><label class="form-label" for="state">{$_L['State Region']}</label>*}

                                        {*                                        <input type="text" id="state" name="state" class="form-control">*}

                                        {*                                    </div>*}

                                        <div class="mb-3 row">
                                            <label for="zip" class="col-sm-3"><span class="h6">{$_L['ZIP Postal Code']}</span> </label>
                                            <div class="col-sm-9">

                                                <input type="text" id="zip" name="zip" class="form-control">
                                            </div>
                                        </div>



                                        {*                                    <div class="mb-3"><label class="form-label" for="zip">{$_L['ZIP Postal Code']} </label>*}

                                        {*                                        <input type="text" id="zip" name="zip" class="form-control">*}

                                        {*                                    </div>*}
                                        <div class="mb-3 row">
                                            <label for="country" class="col-sm-3"><span class="h6">{$_L['Country']}</span> </label>
                                            <div class="col-sm-9">

                                                <select name="country" id="country" class="form-control">
                                                    <option value=""><span></span>{$_L['Select Country']}</option>
                                                    {$countries}
                                                </select>
                                            </div>
                                        </div>



                                        {*                                    <div class="mb-3"><label class="form-label" for="country">{$_L['Country']}</label>*}



                                        {*                                            <select name="country" id="country" class="form-control">*}
                                        {*                                                <option value="">{$_L['Select Country']}</option>*}
                                        {*                                                {$countries}*}
                                        {*                                            </select>*}


                                        {*                                    </div>*}

                                        {*run foreach*}



                                        {*                                <div class="mb-3"><label class="form-label" for="tags">{$_L['Tags']}</label>*}

                                        {*                                    <div class="col-lg-8">*}
                                        {*                                        *}{*<input type="text" id="tags" name="tags" style="width:100%">*}
                                        {*                                        <select name="tags[]" id="tags" class="form-control" multiple="multiple">*}
                                        {*                                            {foreach $tags as $tag}*}
                                        {*                                                <option value="{$tag['text']}">{$tag['text']}</option>*}
                                        {*                                            {/foreach}*}

                                        {*                                        </select>*}
                                        {*                                    </div>*}
                                 
                           
                             
                                        <div class="mb-3 row">
                                            <label for="phone" class="col-sm-3"><span class="h6">{$_L['Phone']}</span> </label>
                                            <div class="col-sm-9">

                                                <input type="text" id="phone" name="phone" class="form-control">


                                            </div>
                                        </div>

                              


                         



                                        {*                                    <div class="mb-3"><label class="form-label" for="owner_id">{$_L['Owner']}</label>*}


                                        {*                                            <select class="form-control" name="owner_id" id="owner_id">*}
                                        {*                                                {foreach $owners as $owner}*}
                                        {*                                                    <option value="{$owner->id}" {if $owner->id == $user->id}selected{/if} >{$owner->fullname}</option>*}
                                        {*                                                {/foreach}*}
                                        {*                                            </select>*}

                                        {*                                    </div>*}





                                            {*                                        <div class="mb-3"><label class="form-label" for="username">{$_L['Username']}</label>*}

                                            {*                                            <input type="text" id="username" name="username" class="form-control">*}


                                            {*                                        </div>*}
                                     

                                        <div class="mb-3 row">
                                            <label for="password"class="col-sm-3"><span class="h6">{$_L['Password']}</span> </label>
                                            <div class="col-sm-9">

                                                <input type="password" id="password" name="password" class="form-control">
                                            </div>
                                        </div>

                                        {*                                    <div class="mb-3"><label class="form-label" for="password">{$_L['Password']}</label>*}

                                        {*                                        <input type="password" id="password" name="password" class="form-control">*}


                                        {*                                    </div>*}
                                        <div class="mb-3 row">
                                            <label for="cpassword"class="col-sm-3"><span class="h6">{$_L['Confirm Password']}</span></label>
                                            <div class="col-sm-9">

                                                <input type="password" id="cpassword" name="cpassword" class="form-control">
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
                $.post(base_url + 'partner/post/', $( "#rform" ).serialize())
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


