<?php

function construct()
{
    request_auth();
    load_model('index');
}

function indexAction()
{
    $data['vouchers'] = get_list_vouchers();
    load_view('index', $data);
}

function createAction()
{
    load_view('create');
}

function createPostAction()
{
    $discount = $_POST['discount'];
    $due = $_POST['due'];
    if (empty($discount) || empty($due)) {
        push_notification('danger', ['Vui lòng nhập vào tên loại']);
        header('Location: ?role=admin&mod=voucher&action=create');
        die();
    }
    create_voucher($discount, $due);
    push_notification('success', ['Tạo mới loại sản phẩm thành công']);
    header('Location: ?role=admin&mod=voucher');
    die;
}

function deleteAction()
{
    $id = $_GET['id_voucher'];
    delete_voucher($id);
    push_notification('success', ['Xoá loại sản phẩm thành công']);
    header('Location: ?role=admin&mod=voucher');
    die;
}

function updateAction()
{
    $id = $_GET['id_voucher'];
    $voucher = get_one_voucher($id);
    $data['voucher'] = $voucher;
    if ($voucher) {
        load_view('update', $data);
    } else {
        header('Location: ?role=admin&mod=voucher');
        die;
    }
}

function updatePostAction()
{
    $id = $_GET['id_voucher'];
    $voucher = get_one_voucher($id);
    if (!$voucher) {
        header("Location: ?role=admin&mod=voucher&id_voucher=$id");
        die();
    }
    $discount = $_POST['discount'];
    $due = $_POST['due'];
    if (empty($discount) || empty($due)) {
        push_notification('danger', ['Vui lòng nhập vào tên loại']);
        header("Location: ?role=admin&mod=voucher&action=update&id_voucher=$id");
        die();
    }
    update_voucher($id, $discount, $due);
    push_notification('success', ['Chỉnh sửa loại sản phẩm thành công']);
    header('Location: ?role=admin&mod=voucher');
    die;
}
