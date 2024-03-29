<?php

/*
|--------------------------------------------------------------------------
| Controller
|--------------------------------------------------------------------------
|
*/

_auth();
$ui->assign('selected_navigation', 'documents');
$ui->assign('_title', $_L['Documents'] . '- ' . $config['CompanyName']);
$action = route(1);

if ($action == '') {
    $action = 'list';
}
$user = User::_info();
$ui->assign('user', $user);
$customers = Contact::customers();
$ui->assign('customers', $customers);

Event::trigger('documents');

if (!has_access($user->roleid, 'documents', 'view')) {
    permissionDenied();
}

switch ($action) {
    case 'list':
        $upload_max_size = ini_get('upload_max_filesize');
        $post_max_size = ini_get('post_max_size');

        $ui->assign('upload_max_size', $upload_max_size);
        $ui->assign('post_max_size', $post_max_size);

        $files = Document::orderBy('id', 'desc');

        if (!has_access($user->roleid, 'documents', 'all_data')) {
            $files = $files->where('aid', $user->id);
        }

        $files = $files->limit(1500)->get();

        view('documents', [
            'files' => $files,
        ]);

        break;

    case 'upload':
        if (APP_STAGE == 'Demo') {
            exit();
        }

        if (!has_access($user->roleid, 'documents', 'edit')) {
            permissionDenied();
        }

        $uploader = new Uploader();
        $uploader->setDir('storage/docs/');
        $uploader->sameName(false);
        $uploader->allowAllFormats();
        if ($uploader->uploadFile('file')) {
            $uploaded = $uploader->getUploadName(); //get uploaded file name, renames on upload//

            $file = $uploaded;
            $msg = $_L['Uploaded Successfully'];
            $success = 'Yes';
        } else {
            //upload failed
            $file = '';
            $msg = $uploader->getMessage();
            $success = 'No';
        }

        $a = [
            'success' => $success,
            'msg' => $msg,
            'file' => $file,
        ];

        header('Content-Type: application/json');

        echo json_encode($a);

        break;

    case 'post':
        if (!has_access($user->roleid, 'documents', 'edit')) {
            permissionDenied();
        }

        $title = _post('title');
        $file_link = _post('file_link');
        $is_global = _post('is_global');
        $customer = _post('customer');
        $rid = _post('rid');
        $rtype = _post('rtype');

        $did = Documents::assign($file_link, $title, $is_global,$customer, $rid, $rtype, [
            'admin_id' => $user->id,
        ]);

        if ($did) {
            echo $did;
        } else {
            ib_die($_L['All Fields are Required']);
        }

        break;

    case 'view':
        $id = route(2);

        $ui->assign('xfooter', Asset::js(['js/documents_view']));

        $doc = ORM::for_table('sys_documents')->find_one($id);

        if ($doc) {
            $ext = pathinfo($doc->file_path, PATHINFO_EXTENSION);

            $ui->assign('ext', $ext);

            $ui->assign('doc', $doc);

            view('documents_view');
        } else {
            i_close('Not Found');
        }

        break;

    case 'download':
        $id = route(2);

        $doc = ORM::for_table('sys_documents')->find_one($id);

        if ($doc) {
            $file = 'storage/docs/' . $doc->file_path;

            $c_type = mime_content_type($file);

            if (file_exists($file)) {
                $basename = basename($file);

                // $mime = ($mime = getimagesize($file)) ? $mime['mime'] : $mime;
                $mime = mime_content_type($file);
                $size = filesize($file);
                $fp = fopen($file, "rb");
                if (!($mime && $size && $fp)) {
                    // Error.
                    return;
                }

                header("Content-type: " . $mime);
                header("Content-Length: " . $size);
                header(
                    "Content-Disposition: attachment; filename=" . $basename
                );
                header('Content-Transfer-Encoding: binary');
                header(
                    'Cache-Control: must-revalidate, post-check=0, pre-check=0'
                );
                fpassthru($fp);
            }
        } else {
            i_close('Not Found');
        }

        break;

    case 'set_global':
        $did = _post('did');

        $val = _post('val');

        if ($val != '1') {
            $val = '0';
        }

        $doc = ORM::for_table('sys_documents')->find_one($did);

        if ($doc) {
            $doc->is_global = $val;
            $doc->save();
        }

        echo $val;

        break;

    default:
        echo 'action not defined';
}
