<?php
/* Smarty version 3.1.39, created on 2021-10-18 16:34:35
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/modal_units.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_616dda5b1b1037_42784973',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '62302d93707950faf84fe0769be128d24888dff3' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/modal_units.tpl',
      1 => 1592853552,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_616dda5b1b1037_42784973 (Smarty_Internal_Template $_smarty_tpl) {
?><div class="mx-auto">
    <div class="panel mb-0 rounded-0" id="modal_form">
        <div class="panel-hdr">
            <h2>
                <?php if ($_smarty_tpl->tpl_vars['f_type']->value == 'edit') {?>
                    <?php echo $_smarty_tpl->tpl_vars['_L']->value['Edit'];?>

                <?php } else { ?>
                    <?php echo $_smarty_tpl->tpl_vars['_L']->value['Create New'];?>

                <?php }?>
            </h2>
        </div>
        <div class="panel-container">
            <div class="panel-content">
                <form class="form-horizontal" id="ib_modal_form">

                    <div class="form-group"><label for="name"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Name'];?>
<small class="red">*</small></label>

                        <input type="text" id="name" name="name" class="form-control" value="<?php echo $_smarty_tpl->tpl_vars['val']->value['name'];?>
">


                    </div>


                    <div class="form-group"><label for="type"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Type'];?>
</label>

                        <select class="form-control" id="type" name="type">
                            <option value="Piece" <?php if ($_smarty_tpl->tpl_vars['val']->value['name'] == 'Piece') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Piece'];?>
</option>
                            <option value="Weight" <?php if ($_smarty_tpl->tpl_vars['val']->value['name'] == 'Weight') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Weight'];?>
</option>
                            <option value="Time" <?php if ($_smarty_tpl->tpl_vars['val']->value['name'] == 'Time') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Time'];?>
</option>
                            <option value="Dimension" <?php if ($_smarty_tpl->tpl_vars['val']->value['name'] == 'Dimension') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Dimension'];?>
</option>

                            <option value="Surface" <?php if ($_smarty_tpl->tpl_vars['val']->value['name'] == 'Surface') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Surface'];?>
</option>

                            <option value="Volume" <?php if ($_smarty_tpl->tpl_vars['val']->value['name'] == 'Volume') {?>selected<?php }?>><?php echo $_smarty_tpl->tpl_vars['_L']->value['Volume'];?>
</option>


                        </select>


                    </div>









                    <?php if ($_smarty_tpl->tpl_vars['f_type']->value == 'edit') {?>
                        <input type="hidden" name="uid" id="uid" value="<?php echo $_smarty_tpl->tpl_vars['val']->value['uid'];?>
">
                    <?php } else { ?>
                        <input type="hidden" name="uid" id="uid" value="0">
                    <?php }?>


                    <input type="hidden" name="f_type" id="f_type" value="<?php echo $_smarty_tpl->tpl_vars['f_type']->value;?>
">

                    <button class="btn btn-primary modal_submit" type="submit" id="modal_submit"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>

                </form>
            </div>
        </div>
    </div>
</div>


<?php }
}
