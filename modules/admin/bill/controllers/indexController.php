<?php

function construct() {
    request_auth();
    load_model('index');
}

function indexAction() {
    $data['bills'] = get_list_bills();
    load_view('index', $data);
}

function showAction() {
    $bill_id = $_GET['id_bill'];
    $data['details'] = get_list_bills_detail($bill_id);
    load_view('show', $data);
}
?>