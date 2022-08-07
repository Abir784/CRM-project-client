<?php
if (!defined('APP_RUN')) {
    exit('No direct access allowed');
}
if (!isset($myCtrl)) {
    $myCtrl = 'course';
}
_auth();
$workspace_id = $_SESSION['workspace_id'] ?? 0;
$ui->assign('selected_navigation', 'partner');
$ui->assign('_title', $_L['Course'] . ' - ' . $config['CompanyName']);
$action = $routes['1'];
$user = User::_info();
$ui->assign('user', $user);
$data = request()->all();
switch ($action) {
    case 'add':
        Event::trigger('course/add/');
        $type = route(2);

        view('course_add');

    break;
    case 'post':
        Event::trigger('course/post/');
        $type = route(2);
        $msg="";
        if($data['name']==""){
            $msg.="Course Name is required"."<br>";
        }

        if($data['abbr']==""){
            $msg.="Course Abbreviation is required"."<br>";
        }

        if($msg==""){
            $d=ORM::for_table('sys_courses')->create();
            $d->name=$data['name'];
            $d->abbr=$data['abbr'];
            $d->created_at=date('Y-m-d');
            $d->save();
            echo 'Course Added';
        }else{
            echo $msg;
        }
        
    break;
    case 'list':
        Event::trigger('course/post/');
        $type = route(2);
        $courses=ORM::for_table('sys_courses')->find_many();
        view('course_list',['courses'=>$courses]);
    break;
    case 'add_batch':
        $id=route(2);
   
        $course=ORM::for_table('sys_courses')->where('id',$id)->find_one();
    
        view('batch_add',[
            'course'=>$course,
        ]);
    break;
    case 'batch-post':


        Event::trigger('course/post/');
        $msg="";
        if($data['batch_no']==""){
            $msg.="Batch Number is required"."<br>";
        }

        if($data['fee']==""){
            $msg.="Course Fee is required"."<br>";
        }
        if($data['start_date']==""){
            $msg.="Start Date is required"."<br>";
        }

        if($msg==""){
            $d=ORM::for_table('batches')->create();
            $c=ORM::for_table('sys_courses')->where('id',$data['id'])->find_one();
            $c->total_batches+=1;
            $c->save();
            $d->batch_no=$data['batch_no'];
            $d->c_id=$data['id'];
            $d->fee=$data['fee'];
            $d->start_date=$data['start_date'];
            $d->created_at=date('Y-m-d');
            $d->save();
            echo 'Batch Added';
        }else{
            echo $msg;
        }

    break;
    case 'batch_show':
        Event::trigger('course/batch_Show/');
        $id=route(2);
        $batches=ORM::for_table('batches')->where('c_id',$id)->find_many();
        view('batch_show',['batches'=>$batches]);

    break;

}
?>