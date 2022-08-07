<?php
/* Smarty version 3.1.39, created on 2021-11-29 12:58:33
  from '/Users/razib/Documents/valet/business-suite/apps/shopify/views/includes/base_js.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a514c9378582_72267112',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '7d629a952b50e9b043538a4631aeabf2bc32b6b7' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/apps/shopify/views/includes/base_js.tpl',
      1 => 1610367872,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a514c9378582_72267112 (Smarty_Internal_Template $_smarty_tpl) {
echo '<script'; ?>
>
    $(function () {
        let $switch_store = $('#switch_store');
        $switch_store.on('change',function () {
            if($switch_store.val())
            {
                if($switch_store.val() === '---AddNewStore---')
                {
                    window.location = base_url + 'shopify/app/store/'
                }
                else{
                    window.location = base_url + 'shopify/app/make-default-integration/' + $switch_store.val();
                }
            }
        });
    });
<?php echo '</script'; ?>
>
<?php }
}
