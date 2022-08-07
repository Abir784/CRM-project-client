<?php
/* Smarty version 3.1.39, created on 2022-01-04 16:16:00
  from '/home/worlsxzo/public_html/ui/theme/default/calendar.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d472c012a167_37021111',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'ed66a17ad3ce1580b540413deaca71957b5cd1c7' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/calendar.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d472c012a167_37021111 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>



<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_148401428561d472c0126768_35660679', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_20694978461d472c0127b68_93399534', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_148401428561d472c0126768_35660679 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_148401428561d472c0126768_35660679',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row">



        <div class="col-md-12">



            <div class="panel" style="min-height: 400px;" id="calendar_wrap">
                <div class="panel-container">
                    <div class="panel-content">


                        <div id="calendar"></div>


                    </div>
                </div>
            </div>
        </div>



    </div>



    <div class="md-fab-wrapper">
        <a class="md-fab md-fab-primary waves-effect waves-light add_event" href="#">
            <i class="fal fa-plus"></i>
        </a>
    </div>

<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_20694978461d472c0127b68_93399534 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_20694978461d472c0127b68_93399534',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>



    <?php echo '<script'; ?>
>

        function displayEvent(event_id=0,date=0)
        {
            $.fancybox.open({
                src  :  base_url + 'calendar/event/'+event_id+'/'+date,
                type : 'ajax',
                opts : {
                    afterShow : function( instance, current ) {

                        $('#start').datepicker();
                        $('#start_time').timepicker();
                        $('#end').datepicker();
                        $('#end_time').timepicker();

                        let eventForm = $('#eventForm');
                        eventForm.on('submit',function (e) {
                            e.preventDefault();
                            $.post( base_url + "calendar/save_event/", eventForm.serialize())
                                .done(function( data ) {



                                    if ($.isNumeric(data)) {

                                        location.reload();

                                    }

                                    else {
                                        toastr.error(data);
                                    }

                                });


                            return false;
                        });

                    }
                },
            });
        }

        $(function() {

            var _url = $("#_url").val();

            var $calendar_wrap = $("#calendar_wrap");

            // var ib_date_picker_options = {
            //     format: ib_date_format_picker
            // };


            var $modal = $("#modal_add_event");

            var $ib_modal_form = $("#ib_modal_form");

            var $start = $('#start');

            // var start_picker = $start.pickadate(ib_date_picker_options);
            // var picker = start_picker.pickadate('picker');

            var $ib_act = $("#ib_act");
            var $event_id = $("#event_id");

            var $end = $('#end');

            // var end_picker = $end.pickadate(ib_date_picker_options);
            // var picker2 = end_picker.pickadate('picker');

            var $description = $("#description");
            var $title = $("#title");

            var $all_day_event = $("#all_day_event");

            var $start_time_div = $("#start_time_div");
            var $end_time_div = $("#end_time_div");

            var $btn_del_event = $("#btn_del_event");

            var $start_time = $('#start_time');
            var $end_time = $('#end_time');

            $btn_del_event.hide();

            $btn_del_event.on('click', function(e) {

                e.preventDefault();

                bootbox.confirm(_L['are_you_sure'], function(result) {

                    if(result){

                        window.location.href = _url + "delete/event/" + $event_id.val();

                    }

                });

            });


            var todayDate = moment().startOf('day');
            var YM = todayDate.format('YYYY-MM');
            var YESTERDAY = todayDate.clone().subtract(1, 'day').format('YYYY-MM-DD');
            var TODAY = todayDate.format('YYYY-MM-DD');
            var TOMORROW = todayDate.clone().add(1, 'day').format('YYYY-MM-DD');


            var calendarEl = document.getElementById('calendar');

            var calendar = new FullCalendar.Calendar(calendarEl,
                {
                    plugins: ['dayGrid', 'list', 'timeGrid', 'interaction', 'bootstrap'],
                    themeSystem: 'bootstrap',
                    timeZone: 'UTC',
                    //dateAlignment: "month", //week, month
                    buttonText:
                        {
                            today: 'today',
                            month: 'month',
                            week: 'week',
                            day: 'day',
                            list: 'list'
                        },
                    eventTimeFormat:
                        {
                            hour: 'numeric',
                            minute: '2-digit',
                            meridiem: 'short'
                        },
                    navLinks: true,
                    header:
                        {
                            left: 'title',
                            center: 'dayGridMonth,timeGridWeek,timeGridDay,listWeek',
                            right: 'today prev,next'
                        },
                    footer:
                        {
                            left: '',
                            center: '',
                            right: ''
                        },
                    editable: true,
                    eventLimit: true, // allow "more" link when too many events
                    eventSources: [{
                        url: base_url + 'calendar/data/',
                        type: 'GET',
                        error: function() {
                            bootbox.alert("Unable to load data.");
                        }
                    } ],
                    viewSkeletonRender: function()
                    {
                        $('.fc-toolbar .btn-default').addClass('btn-sm');
                        $('.fc-header-toolbar h2').addClass('fs-md');
                        $('#calendar').addClass('fc-reset-order')
                    },

                    dateClick: function(info) {
                        displayEvent(0,info.dateStr);
                    },
                    eventClick: function(info) {
                        displayEvent(info.event.id);
                    }


                });

            calendar.render();


            $all_day_event.on('ifChecked', function(){

                $start_time_div.hide("slow");
                $end_time_div.hide("slow");

            });

            $all_day_event.on('ifUnchecked', function(){

                $start_time_div.show("slow");
                $end_time_div.show("slow");

            });



            $(".add_event").on('click', function(e) {
                e.preventDefault();

                displayEvent();

            });





        });



    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
