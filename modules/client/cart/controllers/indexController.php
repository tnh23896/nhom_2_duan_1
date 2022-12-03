<?php

function construct()
{
    load_model('index');
    load('helper', 'format');
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
function indexPostAction()
{
    $qty = $_POST['quantity'];
    foreach ($_SESSION['cart'] as $key => $item) {
        if ($_SESSION['cart'][$key][2] < $qty[$key]) {
            push_notification('red', ['Sửa không thành công']);
            header("Location: ?mod=cart");
            die;
        }
    }
    update_cart($qty);
    push_notification('green', ['Sửa thành công']);
    header("Location: ?mod=cart");
    die;
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
