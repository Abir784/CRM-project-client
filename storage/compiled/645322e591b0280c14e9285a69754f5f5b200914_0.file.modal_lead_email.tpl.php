<?php
/* Smarty version 3.1.39, created on 2022-01-03 15:24:20
  from '/home/worlsxzo/public_html/ui/theme/default/modal_lead_email.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61d31524c9e518_87917839',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '645322e591b0280c14e9285a69754f5f5b200914' => 
    array (
      0 => '/home/worlsxzo/public_html/ui/theme/default/modal_lead_email.tpl',
      1 => 1641223450,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61d31524c9e518_87917839 (Smarty_Internal_Template $_smarty_tpl) {
?><div>
    <div class="panel shadow-none mb-0 rounded-0">
        <div class="panel-hdr">
            <h2>
                Send Mail
            </h2>
        </div>

        <div class="panel-container">
            <div class="panel-content">

                    <div class="row">

                        <div class="col-md-12">

                            <div id="application_ajaxrender" style="min-height: 200px;">
                               

                                <input type="text" name="v_lid" id="v_lid" value="<?php echo $_smarty_tpl->tpl_vars['lead']->value->email;?>
">

                                <hr>

                                <textarea class="form-control" id="v_memo" name="v_memo" rows="6"><?php echo $_smarty_tpl->tpl_vars['lead']->value->memo;?>
</textarea>

                                <button type="button" id="memo_update" class="btn btn-primary btn-block mt-3 act_memo_update"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>


                            </div>



                        </div>

                    </div>



            </div>
        </div>

    </div>
</div>
<?php }
}
