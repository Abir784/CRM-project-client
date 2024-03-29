{extends file="$layouts_admin"}

{block name="content"}
    <div class="wrapper wrapper-content">
        <div class="row">

            <div class="col-md-7">



                <div class="panel">
                    <div class="panel-hdr">
                        <h2>{$_L['Add New Order']}</h2>



                    </div>
                    <div class="panel-container" id="ibox_form">
                        <div class="panel-content">
                            <form class="form-horizontal" id="ib_form">

                                <div class="row">
                                    <div class="col-md-12 col-sm-12">

                                        <div class="mb-3"><label class="col-md-4 control-label" for="cid">{$_L['Customer']} </label>

                                            <select id="cid" name="cid" class="form-control">
                                                {foreach $c as $cs}
                                                    <option value="{$cs['id']}"
                                                            {if $p_cid eq ($cs['id'])}selected="selected" {/if}>{$cs['account']} {if $cs['email'] neq ''}- {$cs['email']}{/if}</option>
                                                {/foreach}


                                            </select>
                                        </div>


                                        <div class="hr-line-dashed"></div>

                                        <div id="item_block">
                                            <div class="mb-3"><label class="col-md-4 control-label" for="pid">{$_L['Product_Service']}</label>

                                                <select id="pid" name="pid" class="form-control">
                                                    <option value="">{$_L['Select']}...</option>
                                                    {foreach $p as $ps}
                                                        <option value="{$ps['id']}">{$ps['name']}</option>
                                                    {/foreach}

                                                </select>

                                            </div>


                                            <div class="mb-3"><label class="col-md-4 control-label" for="price">{$_L['Price']}</label>

                                                <input type="text" id="price" name="price" class="form-control amount">
                                            </div>


                                            <div class="mb-3"><label class="col-md-4 control-label" for="qty">{$_L['Qty']}</label>

                                                <input type="text" id="qty" name="qty" class="form-control" value="1">
                                            </div>


                                        </div>





                                        <div class="mb-3">
                                            <label class="col-md-4 control-label" for="qty">&nbsp;</label>

                                            <div>

                                                <button type="button" id="add_item" class="btn btn-primary"> Add another item</button>

                                            </div>
                                        </div>




                                        <div class="hr-line-dashed"></div>



                                        <div class="mb-3"><label class="col-md-4 control-label" for="status">{$_L['Status']}</label>

                                            <select id="status" name="status" class="form-control">

                                                <option value="Pending">{$_L['Pending']}</option>
                                                <option value="Active">{$_L['Active']}</option>


                                            </select>
                                        </div>





                                        <div class="mb-3"><label class="col-md-4 control-label" for="payterm">{$_L['Billing Cycle']}</label>

                                            <select id="billing_cycle" name="billing_cycle" class="form-control">

                                                <option value="Free Account">{$_L['Free']}</option>
                                                <option value="One Time" selected>{$_L['One Time']}</option>
                                                <option value="Monthly">{$_L['Monthly']}</option>
                                                <option value="Quarterly">{$_L['Quarterly']}</option>
                                                <option value="Semi-Annually">{$_L['Semi-Annually']}</option>
                                                <option value="Annually">{$_L['Annually']}</option>
                                                <option value="Biennially">{$_L['Biennially']}</option>
                                                <option value="Triennially">{$_L['Triennially']}</option>

                                            </select>
                                        </div>




                                        <div class="mb-3"><label class="col-md-4 control-label" for="generate_invoice">{$_L['Generate Invoice']}</label>

                                            <div class="col-lg-8">


                                                <input type="checkbox" checked data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="generate_invoice" name="generate_invoice" value="Yes">


                                            </div>
                                        </div>

                                        <div class="mb-3"><label class="col-md-4 control-label" for="send_email">{$_L['Send Email']}</label>

                                            <div class="col-lg-8">


                                                <input type="checkbox" checked data-toggle="toggle" data-size="small" data-on="{$_L['Yes']}" data-off="{$_L['No']}" id="send_email" name="send_email" value="Yes">


                                            </div>
                                        </div>


                                    </div>

                                </div>


                                <div class="row">
                                    <div class="col-md-12">
                                        <hr>
                                        <div class="mb-3">
                                            <div>

                                                <button class="btn btn-primary" type="submit" id="submit"> {$_L['Submit']}</button> | <a href="{$_url}orders/list/">{$_L['Or Cancel']}</a>


                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </form>
                        </div>



                    </div>
                </div>
            </div>

            <div class="col-md-5">
                <div class="panel">
                    <div class="panel-hdr">
                        <h2>{$_L['Order Summary']}</h2>
                        <div class="hr-line-dashed"></div>
                        {*<table class="table table-striped table-bordered">*}
                            {*<th>Item</th>*}
                            {*<th>Qty</th>*}
                            {*<th class="text-end">Price</th>*}
                            {*<tr>*}
                                {*<td>Golf hat</td>*}
                                {*<td>1</td>*}
                                {*<td class="text-end amount">149.00</td>*}
                            {*</tr>*}


                        {*</table>*}
                        <div class="panel-container">
                            <div class="panel-content">
                                {$_L['No items to display']}
                            </div>
                        </div>

                    </div>
                </div>
            </div>

        </div>


    </div>


    <input type="hidden" id="_lan_btn_save" value="{$_L['Save']}">

    <input type="hidden" id="_lan_no_results_found" value="{$_L['No results found']}">
{/block}

{block name="script"}

    <script>

        function calculateTotal()
        {
            var pid,price,qty;
            $('.clx_pid').each(function(i, obj) {
                pid = $(this).val();
                console.log(pid);
            });
        }

        $(document).ready(function () {

            var _url = $("#_url").val();

            var append_html = '<div class="hr-line-dashed"></div> <div class="mb-3"><label class="col-md-4 control-label" for="pid">{$_L['Product_Service']}</label>\n'+
                    '\n'+
                    '                                            <div class="col-lg-8">\n'+
                    '\n'+
                    '                                                <select name="pid[]" class="clx_pid form-control">\n'+
                    '                                                    <option value="">{$_L['Select']}...</option>\n'+
                    '                                                    {foreach $p as $ps}\n'+
                    '                                                        <option value="{$ps['id']}">{$ps['name']}</option>\n'+
                    '                                                    {/foreach}\n'+
                    '\n'+
                    '                                                </select>\n'+
                    '\n'+
                    '                                            </div>\n'+
                    '                                        </div>\n'+
                    '\n'+
                    '\n'+
                    '                                        <div class="mb-3"><label class="col-md-4 control-label" for="price">{$_L['Price']}</label>\n'+
                    '\n'+
                    '                                            <div class="col-lg-4 col-md-4 col-sm-8"><input type="text" name="price[]" class="form-control amount clx_price">\n'+
                    '\n'+
                    '                                            </div>\n'+
                    '                                        </div>\n'+
                    '\n'+
                    '\n'+
                    '                                        <div class="mb-3"><label class="col-md-4 control-label" for="qty">{$_L['Qty']}</label>\n'+
                    '\n'+
                    '                                            <div class="col-lg-4 col-md-4 col-sm-8"><input type="text" name="qty[]" class="form-control clx_quantity" value="1">\n'+
                    '\n'+
                    '                                            </div>\n'+
                    '                                        </div>';


                    var $add_item = $('#add_item');

                    var $item_block = $('#item_block');



                    calculateTotal();
            $add_item.on('click',function () {
                $item_block.append(append_html);
                calculateTotal();
            });


            $('#cid').select2({

                language: {
                    noResults: function () {
                        return $("#_lan_no_results_found").val();
                    }
                }
            })
                .on("change", function(e) {

                });

            var $pid = $("#pid");

            var $price = $("#price");

            function update_ps(pid) {

                $.get( _url + "ps/json_get/"+pid, function( data ) {
                    if(data){



                        $price.autoNumeric('set', data.sales_price);


                    }
                });

            }


            // $pid.select2({
            //     theme: "bootstrap",
            //     language: {
            //         noResults: function () {
            //             return $("#_lan_no_results_found").val();
            //         }
            //     }
            // })
            //     .on("change", function(e) {
            //
            //
            //         update_ps($pid.val());
            //
            //
            //
            //     });



            var $submit = $("#submit");
            var $ibox_form = $('#ibox_form');

            $submit.on('click', function(e) {
                e.preventDefault();

                $ibox_form.block({ message:block_msg });

                $.post( _url + "orders/post/", $("#ib_form").serialize())
                    .done(function( data ) {

                        if ($.isNumeric(data)) {


                            window.location = _url + 'orders/view/' + data;

                        }

                        else {
                            $ibox_form.unblock();
                            toastr.error(data);
                        }

                    });

            });




        });
    </script>
{/block}


