<?php
/* Smarty version 3.1.39, created on 2021-11-26 14:44:27
  from '/Users/razib/Documents/valet/business-suite/ui/theme/default/appearance_editor.tpl' */

/* @var Smarty_Internal_Template $_smarty_tpl */
if ($_smarty_tpl->_decodeProperties($_smarty_tpl, array (
  'version' => '3.1.39',
  'unifunc' => 'content_61a1391b786ac2_11090909',
  'has_nocache_code' => false,
  'file_dependency' => 
  array (
    '8c42666d35e3a99e64c37985849fcee9e043d977' => 
    array (
      0 => '/Users/razib/Documents/valet/business-suite/ui/theme/default/appearance_editor.tpl',
      1 => 1635678025,
      2 => 'file',
    ),
  ),
  'includes' => 
  array (
  ),
),false)) {
function content_61a1391b786ac2_11090909 (Smarty_Internal_Template $_smarty_tpl) {
$_smarty_tpl->_loadInheritance();
$_smarty_tpl->inheritance->init($_smarty_tpl, true);
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_191088721561a1391b7823b8_28474638', "content");
?>


<?php 
$_smarty_tpl->inheritance->instanceBlock($_smarty_tpl, 'Block_143855409461a1391b785e46_10446960', "script");
?>

<?php $_smarty_tpl->inheritance->endChild($_smarty_tpl, ((string)$_smarty_tpl->tpl_vars['layouts_admin']->value));
}
/* {block "content"} */
class Block_191088721561a1391b7823b8_28474638 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'content' => 
  array (
    0 => 'Block_191088721561a1391b7823b8_28474638',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <div class="row" id="ib_editor_canvas">
        <div class="col-lg-2">
            <div class="panel">
                <div class="panel-container">
                    <div class="panel-content">
                        <div class="mb-3">
                            <label for="editor_file"><?php echo $_smarty_tpl->tpl_vars['_L']->value['File'];?>
</label>
                            <select name="editor_file" id="editor_file" class="custom-select">
                                <option value="no_file" selected="selected" ><?php echo $_smarty_tpl->tpl_vars['_L']->value['Select File to Edit'];?>
</option>
                                <option value="language.php"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Language File'];?>
</option>
                                <option value="invoice_printer.php"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Layout Print'];?>
</option>
                                <option value="invoice_pdf.php"><?php echo $_smarty_tpl->tpl_vars['_L']->value['Invoice Layout PDF'];?>
</option>


                            </select>
                        </div>
                        <button type="submit" id="ib_btn_save" class="btn btn-primary"><i class="fal fa-check"></i> <?php echo $_smarty_tpl->tpl_vars['_L']->value['Save'];?>
</button>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-lg-10">


            <div id="editor" style="min-height: 800px;"></div>



        </div>
    </div>
<?php
}
}
/* {/block "content"} */
/* {block "script"} */
class Block_143855409461a1391b785e46_10446960 extends Smarty_Internal_Block
{
public $subBlocks = array (
  'script' => 
  array (
    0 => 'Block_143855409461a1391b785e46_10446960',
  ),
);
public function callBlock(Smarty_Internal_Template $_smarty_tpl) {
?>

    <?php echo '<script'; ?>
 src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.11/ace.min.js" integrity="sha256-qCCcAHv/Z0u7K344shsZKUF2NR+59ooA3XWRj0LPGIQ=" crossorigin="anonymous"><?php echo '</script'; ?>
>
    <?php echo '<script'; ?>
 src="https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.11/ext-modelist.min.js" integrity="sha256-6IKCjSdCwtsKc0jk/TvazSJQEBEZ0JdCgDVu8f7rXNE=" crossorigin="anonymous"><?php echo '</script'; ?>
>

    <?php echo '<script'; ?>
>
        $(function() {

            var _url = $("#_url").val();

            var $ib_editor_canvas = $("#ib_editor_canvas");

            ace.config.set("basePath", 'https://cdnjs.cloudflare.com/ajax/libs/ace/1.4.11/');

            var editor = ace.edit("editor");
            editor.setTheme("ace/theme/monokai");
            editor.getSession().setMode("ace/mode/php");

            var $editor_file = $("#editor_file");

            var $ib_btn_save = $("#ib_btn_save");


            $editor_file.change(function() {

                $ib_editor_canvas.block({ message: block_msg });

                $.get( _url + "editor/" + $editor_file.val() + "/", function( data ) {
                    $ib_editor_canvas.unblock();
                    editor.$blockScrolling = Infinity;
                    editor.setValue(data, -1);
                    editor.setValue(data, 1);
                });




            });


            $ib_btn_save.on('click', function(e) {

                e.preventDefault();
                $ib_editor_canvas.block({ message: block_msg });

                var codes = editor.getValue();

                $.post( _url + "editor/save/", { file: $editor_file.val(), codes: codes })
                    .done(function( data ) {
                        $ib_editor_canvas.unblock();
                        toastr.success(data);

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
