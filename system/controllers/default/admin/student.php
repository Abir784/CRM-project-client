<?php

use Illuminate\Database\DBAL\TimestampType;
use PhpOffice\PhpSpreadsheet\Calculation\DateTimeExcel\Time;

if (!defined('APP_RUN')) {
    exit('No direct access allowed');
}
if (!isset($myCtrl)) {
    $myCtrl = 'student';
}
_auth();
$workspace_id = $_SESSION['workspace_id'] ?? 0;
$ui->assign('selected_navigation', 'partner');
$ui->assign('_title', $_L['Student'] . ' - ' . $config['CompanyName']);
$action = $routes['1'];
$user = User::_info();
$ui->assign('user', $user);
$data = request()->all();
switch ($action) {
    case 'add':
        $ui->assign('countries', Countries::all($config['country']));
        Event::trigger('stduent/add/');

        $courses=ORM::for_table('sys_courses')->find_many();
        $type = route(2);

        view('add_student',['courses'=>$courses,]);
    break;
    case 'post':
        Event::trigger('student/post/');

        $type=route(2);
        $msg="";

        if($data['name']==""){
            $msg.="Student Name is Required"."<br>";
        };
        if($data['number']==""){
            $msg.="Whatsapp Number is Required"."<br>";
        };
        if($data['email']==""){
            $msg.="Organization Email is Required"."<br>";
        };
        if($data['course']==""){
            $msg.="Course Name is Required"."<br>";
        };
        if($data['batch']==""){
            $msg.="Batch Name is Required"."<br>";
        };
        if($data['fee']==""){
            $msg.="Total Fee is Required"."<br>";
        };
        if($data['payment_type']==""){
            $msg.="Payment Type is Required"."<br>";
        };
        if($data['desg']==""){
            $msg.="Designation is Required"."<br>";
        };

        if ($msg ==''){
            $d=ORM::for_table('sys_students')->create();
            $d->name=$data['name'];
            $d->batch_name=$data['batch'];
            $d->course_name=$data['course'];
            $d->designation=$data['desg'];
            $d->org_email=$data['email'];
            $d->w_number=$data['number'];
            $d->t_fee=$data['fee'];
            $d->payment_type=$data['payment_type'];
            $d->added_by=$user['id'];
            $d->created_at=date('Y-m-d');
            $d->save();
            echo 'Student Added';
        }
        else{
            echo $msg;
        };
        
    break;
    case 'list':
        Event::trigger('stduent/add/');

        $type = route(2);
        $course=
        
            
        $students=ORM::for_table('sys_students')->where('added_by',$user->id)->find_many();
     
        
        view('student_list',[

            'students'=>$students,
        ]);


    break;
    case 'import_csv':
        Event::trigger('student/import_csv/');

        $type = route(2);
        view('student_import');


    break;
    case 'csv_upload':
        $uploader = new Uploader();
        $uploader->setDir('storage/temp/');
        // $uploader->sameName(true);
        $uploader->setExtensions(['csv']); //allowed extensions list//
        if ($uploader->uploadFile('file')) {
            //txtFile is the filebrowse element name //
            $uploaded = $uploader->getUploadName(); //get uploaded file name, renames on upload//

            $_SESSION['uploaded'] = $uploaded;
        } else {
            //upload failed
            _msglog('e', $uploader->getMessage()); //get upload error message
        }

    break;
      case 'csv_uploaded':
        if (isset($_SESSION['uploaded'])) {
            $uploaded = $_SESSION['uploaded'];
           

            // _msglog('s',$uploaded);

            //            $csvData = file_get_contents('storage/temp/'.$uploaded);
            //            $lines = explode(PHP_EOL, $csvData);
            //            $contacts = array();
            //            foreach ($lines as $line) {
            //                $contacts[] = str_getcsv($line);
            //            }

            $csv = new parseCSV();
            $csv->auto('storage/temp/' . $uploaded);

            $students = $csv->data;
            $cn = 0;
            $courses=ORM::for_table('sys_courses')->find_array();
 
            foreach ($students as $student) {               
                $d=ORM::for_table('sys_students')->create();
                $d->name = $student['Full Name'];
                $d->course_name=$student['Course Name'];  
                $d->batch_name=$student['Batch No.'];
                $d->designation = $student['Designation'];
                $d->org_email = $student['Email'];
                $d->w_number = $student['Whatsapp Number'];
                $d->t_fee = $student['Total Fee'];
                if($student['Payment Type'] == 'Full Payment'){
                    $d->payment_type = 1;
                }else{
                    $d->payment_type = 0;

                }
                $d->added_by = $user['id'];
                $d->created_at=date('Y-m-d');
                $d->save();
               

              

                if ($d) {
                    $cn++;
                }
            }

            _msglog('s', $cn . ' Students Imported');

            //            ob_start();
            //            var_dump($students);
            //            $result = ob_get_clean();
            //
            //            _msglog('s',$result);
        } else {
            _msglog('e', 'An Error Occurred while uploading the files');
        }

        break;
    case 'all-students':
        $students=ORM::for_table('sys_students')->find_many();

        view('all_students',['students'=>$students]);
    break;
    case 'status':
        $id=route(2);
        $d=ORM::for_table('sys_students')->where('id',$id)->find_one();
        $students=ORM::for_table('sys_students')->find_many();
        $d->status=1;
        $d->save();
        view('all_students',['students'=>$students,]);
    break;
   case 'accept_all':
    $d=ORM::for_table('sys_students')->where('status',0)->find_many();
    foreach ($d as $d){

        $d->status=1;
        $d->save();
    }
    $students=ORM::for_table('sys_students')->find_many();
    view('all_students',['students'=>$students,]);
 


    break;
    case 'payment_update':
        $id=route(2);
        $student=ORM::for_table('sys_students')->where('id',$id)->find_one();
        $row=$student['installment_no'];
        view('installment_form',['id'=>$id,'row'=>$row]);
        
        
    break;
    case 'installment_form2':
        $id=$data['id'];
        $d=ORM::for_table('sys_students')->where('id',$id)->find_one();
        $d->installment_no=$data['installment_no'];
        $d->save();

    break;
    case 'installment_payment':
        $student=ORM::for_table('sys_students')->where('id',$data['id'])->find_one();
        $msg="";
        if($data['installment_no']==""){
            $msg.="Installment number is Required"."<br>";
        };
        if($data['amount']==""){
            $msg.="Amount is Required"."<br>";
        };
        if($data['due_date']==""){
            $msg.="Due Date is Required"."<br>";
        };

        if ($msg==""){
            $d=ORM::for_table('installment_info')->create();
            $d->installment_no=$data['installment_no'];
            $d->p_id=$user['id'];
            $d->sid=$data['id'];
            $d->c_id=$student['course_name'];
            $d->b_id=$student['batch_name'];
            $d->amount=$data['amount'];
            $d->due_date=$data['due_date'];
            $d->status=0;
            $d->save();
            echo 'Installment Info Added';


        }else{
            echo $msg;
        }
        

        break;
    case 'show_table':
        view('installment_form2');

        break;

}