<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    request_login(true);
    if (!is_ss('cart')) {
        push_ss('cart', []);
    }
    $data['notifications'] = get_notification();
    $data['products'] = get_ss('cart');
    load_view('index', $data);
}
function deleteAction()
{
    if (isset($_GET['id'])) {
        $id = $_GET['id'];
        array_splice($_SESSION['cart'], $id, 1);
    } else {
        $_SESSION['cart'] = array();
    }
    push_notification('green', ['Xoá thành công']);
    header("Location: ?mod=cart");
    die;
}
