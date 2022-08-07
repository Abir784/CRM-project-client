<?php
if (!defined('APP_RUN')) {
    exit('No direct access allowed');
}
if (!isset($myCtrl)) {
    $myCtrl = 'partner';
}
_auth();
$workspace_id = $_SESSION['workspace_id'] ?? 0;
$ui->assign('selected_navigation', 'partner');
$ui->assign('_title', $_L['Partner'] . ' - ' . $config['CompanyName']);
$action = $routes['1'];
$user = User::_info();
$ui->assign('user', $user);
$data = request()->all();
switch ($action) {
    case 'add':
        $ui->assign('countries', Countries::all($config['country']));
        Event::trigger('partner/add/');

        $type = route(2);

        view('partner_add');
    break;
    case 'post':
        Event::trigger('partner/post/');
        $type=route(2);
        $msg="";

        if($data['name']==""){
            $msg.="Partner Name is Required"."<br>";
        };
        if($data['gmail']==""){
            $msg.="Email is Required"."<br>";
        };
        if($data['address']==""){
            $msg.="Address is Required"."<br>";
        };
        if($data['city']==""){
            $msg.="City is Required"."<br>";
        };
        if($data['state']==""){
            $msg.="State is Required"."<br>";
        };
        if($data['country']==""){
            $msg.="Country is Required"."<br>";
        };
        if($data['phone']==""){
            $msg.="Phone Number is Required"."<br>";
        };
        if($data['password']==""){
            $msg.="Password is Required"."<br>";
        }else{
            if($data['cpassword']==""){
                $msg.="Password Confirmation is Required"."<br>";
            }else{
                if($data['password'] != $data['cpassword']){
                    $msg.="Confirm Password Does not match"."<br>";
                };

            };
        };
        if($msg==""){
            
            $d=ORM::for_table('sys_users')->create();
            $d->username = $data['gmail'];
            $d->fullname =  $data['name'];
            $d->phonenumber = $data['phone'];
            $d->password = Password::_crypt($data['password']);
            $d->user_type= 'Partner';
            $d->roleid = 5;
            $d->role = "Partner";
            $d->save();
            echo $d->fullname. " Has been added as a partner";
        }else{
            echo $msg;
        }
        break;
    case 'list':
        Event::trigger('partner/list/');
        $type=route(2);
        $partners=ORM::for_table('sys_users')->where('roleid',5)->find_many();
        view('partner_list',[
            
            'partners'=>$partners,
            ]
    
    );
    break;
        

       


}