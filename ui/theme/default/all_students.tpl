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
    <a href="{$_url}student/accept_all" class="btn btn-primary mb-3 rform">{'Accept All'}</a>

    <table class="table table-striped">
    <thead class="table-warning">
    <tr>
        <th scope="col">#</th>
        <th scope="col">Full name</th>
        <th scope="col">Email</th>
        <th scope="col">Phone</th>
        <th scope="col">Course Name</th>
        <th scope="col">Batch Number</th>
        <th scope="col">Payment</th>
        <th scope="col">Action</th>
        <th scope="col">Status</th>

    </tr>
    </thead>
    <tbody>
    {if count($students)==0}
        <td colspan="7" class="text-center"><b>{'No students to show'}</b></td>

    {/if}
    {foreach $students as $student}
    <tr>
        <th scope="row">{$student@iteration}</th>
        <td>{$student['name']}</td>
        <td>{$student['org_email']}</td>
        <td>{$student['w_number']}</td>
        <td>{$student['course_name']}</td>
        <td>{$student['batch_name']}</td>
        <td>{if $student['payment_type']==0}
            {'Installment Payment'}
        {/if}
        {if $student['payment_type']==1}
            {'Full Payment'}

        {/if}
            
            
            </td>
        <td><a href="#" class="btn btn-primary">{'Delete'}</a></td>
      {if $student['status']==0}
        <td><a class="btn btn-primary" href="{$_url}student/status/{$student['id']}">{'Not Accepted Yet'}</a></td>


    {else}
       <td> {'Accepted'}</td>


    {/if}
            
    </tr>
    {/foreach}


    </tbody>
    </table>

</div>

    
{/block}