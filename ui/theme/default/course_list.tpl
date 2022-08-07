{extends file="$layouts_admin"}

{block name="head"}

    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/buttons/1.6.2/css/buttons.dataTables.min.css" />
    <style>

        {if !empty($config['admin_dark_theme'])}

        {else}
        .table-striped tbody tr:nth-of-type(odd) {
            background-color: #F7F9FC;

        }
        .h2, h2 {
            font-size: 1.25rem;
        }
        .h1, .h2, .h3, .h4, .h5, .h6, h1, h2, h3, h4, h5, h6 {
            font-family: inherit;
            font-weight: 600;
            line-height: 1.5;
            margin-bottom: .5rem;
            color: #32325d;
        }


        .text-info{
            color: #6772E5!important;
        }
        .text-success{
            color: #2CCE89!important;}

        .text-danger{
            color: #F6365B!important;
        }
        .text-warning{
            color: #FB6340!important;
        }
        .text-primary{
            color: #10CDEF!important;
        }

        {/if}

    </style>
{/block}

{block name="content"}
<div class="container">
    <table class="table table-striped">
    <thead class="table-warning">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Course Name</th>
        <th scope="col">Abbreviation</th>
        <th scope="col">Total Batches</th>
        <th scope="col">Created At</th>
        <th scope="col">Action</th>

    </tr>
    </thead>
    <tbody>
    {foreach $courses as $course}
    <tr>
        <th scope="row">{$course@iteration}</th>
        <td><a href="{$_url}course/batch_show/{$course['id']}">{$course['name']}</a></td>
        <td>{$course['abbr']}</td>
        <td>{$course['total_batches']}</td>
        <td>{$course['created_at']}</td>
        <td><a href="{$_url}course/add_batch/{$course['id']}" class="btn btn-primary">{'Add Batch'}</a></td>
    </tr>
    {/foreach}

    </tbody>
    </table>

</div>

    
{/block}

