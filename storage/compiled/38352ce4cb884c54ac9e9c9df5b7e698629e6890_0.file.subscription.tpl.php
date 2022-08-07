<?php
/* Smarty version 3.1.39, created on 2021-12-20 23:21:45
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/subscription.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61c1565955b085_63593486',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '38352ce4cb884c54ac9e9c9df5b7e698629e6890' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/subscription.tpl',
      1 => 1638206251,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61c1565955b085_63593486 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_129321280161c1565954f3a0_94720757', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_4226280361c1565955a3a3_39748607', 'script');
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_129321280161c1565954f3a0_94720757 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_129321280161c1565954f3a0_94720757',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <div class="container">
        <div class="card">
            <div class="card-body">
                <h3><?php echo $_smarty_tpl->tpl_vars['_L']->value['Subscriptions'];?>
</h3>
                <div class="hr-line-dashed"></div>

                <form id="form_main" method="post">

                    <div class="mb-3">
                        <label for="contact_id"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Customer'];?>
</label>
                        <select class="form-control" data-pristine-required data-pristine-required-message="<?php echo $_smarty_tpl->tpl_vars['_L']->value['This field is required'];?>
" id="contact_id" name="contact_id">
                            <option value="0"><?php echo $_smarty_tpl->tpl_vars['_L']->value['None'];?>
</option>
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['contacts']->value, 'contact');
$_smarty_tpl->tpl_vars['contact']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['contact']->value) {
$_smarty_tpl->tpl_vars['contact']->do_else = false;
?>
                                <option value="<?php echo $_smarty_tpl->tpl_vars['contact']->value->id;?>
"
                                        <?php if (!empty($_smarty_tpl->tpl_vars['contract']->value->contact_id) && ($_smarty_tpl->tpl_vars['contact']->value->id == $_smarty_tpl->tpl_vars['contract']->value->contact_id)) {?>
                                            selected

                                        <?php }?>
                                ><?php echo $_smarty_tpl->tpl_vars['contact']->value->account;?>
</option>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label><?php echo __('Subscription Plan');?>
</label>
                        <select class="form-select" name="plan_id">
                            <option value=""><?php echo __('None');?>
</option>
                            <?php
$_from = $_smarty_tpl->smarty->ext->_foreach->init($_smarty_tpl, $_smarty_tpl->tpl_vars['plans']->value, 'plan');
$_smarty_tpl->tpl_vars['plan']->do_else = true;
if ($_from !== null) foreach ($_from as $_smarty_tpl->tpl_vars['plan']->value) {
$_smarty_tpl->tpl_vars['plan']->do_else = false;
?>
                                <option value="<?php echo $_smarty_tpl->tpl_vars['plan']->value->id;?>
"><?php echo $_smarty_tpl->tpl_vars['plan']->value->title;?>
</option>
                            <?php
}
$_smarty_tpl->smarty->ext->_foreach->restore($_smarty_tpl, 1);?>
                        </select>
                    </div>

                    <div class="mb-3">
                        <label>
                            <?php echo $_smarty_tpl->tpl_vars['_L']->value['Start Date'];?>

                        </label>
                        <input type="text" class="form-control"  value="<?php echo date('Y-m-d');?>
" name="start_date" id="start_date" datepicker data-date-format="yyyy-mm-dd" data-auto-close="true" data-pristine-required data-pristine-required-message="<?php echo $_smarty_tpl->tpl_vars['_L']->value['This field is required'];?>
">
                    </div>

                    <?php if (!empty($_smarty_tpl->tpl_vars['subscription']->value)) {?>

                        <input type="hidden" name="id" value="<?php echo $_smarty_tpl->tpl_vars['subscription']->value->id;?>
">

                    <?php }?>

                    <button id="btn_plan" type="submit" class="btn btn-primary"><?php ob_start();
echo __('Save');
$_prefixVariable1 = ob_get_clean();
echo $_prefixVariable1;?>
</button>
                </form>

            </div>
        </div>
    </div>

<?php
}
}
/* {/block "content"} */
/* {block 'script'} */
class Block_4226280361c1565955a3a3_39748607 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_4226280361c1565955a3a3_39748607',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>


    <?php echo '<script'; ?>
>

        $(function () {

            var form = document.getElementById("form_main");
            var pristine = new Pristine(form);
            let $form_main = $('#form_main');

            $("#contact_id").select2({
                    language: {
                        noResults: function () {
                            return $("#_lan_no_results_found").val();
                        }
                    }
                }
            );

            $('[data-toggle="datepicker"]').datepicker();



            $form_main.on('submit',function (event) {
                event.preventDefault();
                if(pristine.validate())
                {
                    axios.post(base_url + 'subscriptions/subscription',$form_main.serialize()).then(function (response) {
                        window.location = base_url + 'subscriptions/view/' + response.data.id;
                    }).catch(function (error) {
                        $.each(error.response.data, function(key, value) {
                            toastr.error(value);
                        });
                    });
                }

            });


        });

    <?php echo '</script'; ?>
>


<?php
}
}
/* {/block 'script'} */
}
