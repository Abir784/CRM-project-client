{extends file="$layouts_admin"}

{block name="content"}


    <div class="row">



        <div class="col-md-12">



            <div class="panel">
                <div class="panel-hdr">
                    <h2>Files uploaded by Customers</h2>
                </div>


                <div class="panel-container">
                    <div class="panel-content">
                        <form class="form-horizontal" method="post" action="">
                            <div class="mb-3 mb-4">
                                <div class="input-group">

                                    <input type="text" name="name" id="foo_filter" class="form-control" placeholder="{$_L['Search']}..."/>

                                </div>

                            </div>
                        </form>
                        <table class="table table-bordered table-hover sys_table footable" id="footable_tbl"  data-filter="#foo_filter" data-page-size="50">



                            {if $files->count() > 0}
                                <tbody>
                                {foreach $files as $file}

                                    <tr>

                                        <td>

                                            <a href="{$_url}client/dl/{$file->id}_{$file->file_dl_token}/">{if $file->file_mime_type eq 'jpg' || $file->file_mime_type eq 'png' || $file->file_mime_type eq 'gif'}
                                                    <i class="fal fa-file-image-o"></i>
                                                {elseif $file->file_mime_type eq 'pdf'}
                                                    <i class="fal fa-file-pdf-o"></i>
                                                {elseif $file->file_mime_type eq 'zip'}
                                                    <i class="fal fa-file-archive-o"></i>
                                                {else}
                                                    <i class="fal fa-file"></i>
                                                {/if} {$file->title}</a>

                                            <br>

                                            <p style="margin-top: 10px;">

                                                {if isset($contacts[$file->cid][0]['account'])}
                                                    {$_L['Customer']}:  <a href="{$_url}contacts/view/{$file->cid}">{$contacts[$file->cid][0]['account']}</a> |
                                                {/if} {$_L['Uploaded at']}: {date( $config['df'], strtotime($file->created_at))}

                                            </p>



                                        </td>



                                    </tr>

                                {/foreach}

                                </tbody>

                                <tfoot>
                                <tr>
                                    <td>
                                        <ul class="pagination">
                                        </ul>
                                    </td>
                                </tr>
                                </tfoot>

                            {else}

                                <tr>
                                    <td>
                                        {$_L['No Data Available']}
                                    </td>
                                </tr>

                            {/if}



                        </table>
                    </div>





                </div>
            </div>
        </div>



    </div>

{/block}

{block name=script}

    <script>

        $(function () {

            var footable_tbl = $("#footable_tbl");

            footable_tbl.footable();


        })

    </script>


{/block}
