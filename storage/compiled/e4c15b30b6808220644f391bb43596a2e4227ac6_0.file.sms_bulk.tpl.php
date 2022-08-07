<?php
/* Smarty version 3.1.39, created on 2022-01-03 16:12:07
  from '/home/worlsxzo/public_html/ui/theme/default/sms_bulk.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d320575fe314_82798591',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    'e4c15b30b6808220644f391bb43596a2e4227ac6' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/sms_bulk.tpl',
      1 => 1640919669,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d320575fe314_82798591 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_129375041161d320575eef58_25979619', "content");
?>

<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_187708848361d320575fc787_62284249', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_129375041161d320575eef58_25979619 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_129375041161d320575eef58_25979619',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="mx-auto" style="width: 100%; max-width: 600px;">
        <div class="panel">

            <div class="panel-container">
                <div class="panel-content">

                    <div id="result"></div>

                    <form class="form-horizontal" action="<?php echo $_smarty_tpl->tpl_vars['_url']->value;?>
sms/init/send_post/" method="post" id="iform">

                        <div class="mb-3"><label for="from">From </label>

                            <input type="text" name="from" id="from" class="form-control " value="<?php echo $_smarty_tpl->tpl_vars['config']->value['sms_sender_name'];?>
">
                        </div>

                        <div class="mb-3"><label for="sms_to">To </label>

                            <select multiple="multiple" id="contacts" name="contacts[]">
                                <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['c']->value, 'cs');
$_smarty_tpl->tpl_vars['cs']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['cs']->value) {
$_smarty_tpl->tpl_vars['cs']->do_else = false;
?>
                                    <option value="<?php echo $_smarty_tpl->tpl_vars['cs']->value['phone'];?>
"><?php echo $_smarty_tpl->tpl_vars['cs']->value['account'];?>
 - <?php echo $_smarty_tpl->tpl_vars['cs']->value['phone'];?>
</option>
                                <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                            </select>

                            <p class="mt-3">
                                <a href="#" id="ib_select_all">Select All</a> |
                                <a href="#" id="ib_de_select_all">De Select All</a>
                            </p>
                        </div>


                        <div class="mb-3"><label for="message">SMS </label>

                            <textarea class="form-control" name="message" id="message" rows="4"></textarea>

                            <p id="sms-counter">
                                Remaining: <span class="remaining"></span> | Length: <span class="length"></span> | Messages: <span class="messages"></span>
                            </p>

                        </div>


                        <div class="mb-3">
                            <button class="btn btn-primary" type="submit" id="send"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Send'];?>
</button>
                        </div>
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
class Block_187708848361d320575fc787_62284249 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_187708848361d320575fc787_62284249',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
>
        $(function () {

            var _url = base_url;

            var send = $("#send");

            var result = $("#result");

            var iform = $( "#iform" );

            $('#message').countSms('#sms-counter');

            var contacts = $("#contacts");

            contacts.multiSelect({
                selectableHeader: "<input type='text' class='form-control' autocomplete='off' placeholder='Search...'>",
                selectionHeader: "<input type='text' class='form-control' autocomplete='off' placeholder='Search...'>",
                afterInit: function(ms){
                    var that = this,
                        $selectableSearch = that.$selectableUl.prev(),
                        $selectionSearch = that.$selectionUl.prev(),
                        selectableSearchString = '#'+that.$container.attr('id')+' .ms-elem-selectable:not(.ms-selected)',
                        selectionSearchString = '#'+that.$container.attr('id')+' .ms-elem-selection.ms-selected';

                    that.qs1 = $selectableSearch.quicksearch(selectableSearchString)
                        .on('keydown', function(e){
                            if (e.which === 40){
                                that.$selectableUl.focus();
                                return false;
                            }
                        });

                    that.qs2 = $selectionSearch.quicksearch(selectionSearchString)
                        .on('keydown', function(e){
                            if (e.which == 40){
                                that.$selectionUl.focus();
                                return false;
                            }
                        });
                },
                afterSelect: function(){
                    this.qs1.cache();
                    this.qs2.cache();
                },
                afterDeselect: function(){
                    this.qs1.cache();
                    this.qs2.cache();
                }
            });


            $('#ib_select_all').click(function(){
                contacts.multiSelect('select_all');
                return false;
            });
            $('#ib_de_select_all').click(function(){
                contacts.multiSelect('deselect_all');
                return false;
            });








            send.on('click', function(e) {


                e.preventDefault();

                iform.block({ message: null });


                $.post( _url + "sms/init/bulk_post/", iform.serialize())
                    .done(function (data) {

                        iform.unblock();

                        result.html(data);

                    });


            });


        });
    <?php echo '</script'; ?>
>
<?php
}
}
/* {/block "script"} */
}
