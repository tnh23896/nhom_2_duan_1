<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    request_login(false);
    $notifications = get_notification();
    load_view('index', [
        "notifications" => $notifications
    ]);
}
function indexPostAction(){
    $full_name = $_POST['full_name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $pass = $_POST['pass'];
    $users = get_list_users();
    foreach ( $users as $user ){
        if ($email == $user['email'] ) {
            push_notification('red', ['Email đã tồn tại !!']);
            header('Location: ?mod=register');
            die();
        } 
    }
    create_user($full_name,$phone,$email,$pass);
    push_notification('green', ['Đăng ký thành công !!']);
    header('Location: ?mod=login');
}
