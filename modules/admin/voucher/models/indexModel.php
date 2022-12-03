<?php
function get_list_vouchers() {
    $result = db_fetch_array("SELECT * FROM voucher");
    return $result;
}

function get_one_voucher($id) {
    $result = db_fetch_row("SELECT * FROM voucher WHERE  id = $id");
    return $result;
}

function create_voucher($discount, $due) {
    $user = get_auth();
    $id = db_insert('voucher', [
        'discount' => $discount,
        'due' => $due,
    ]);
    return $id;
}

function update_voucher($id, $discount, $due) {
    db_update('voucher', [
        'discount' => $discount,
        'due' => $due,
    ], "id = $id");
    return true;
}

function delete_voucher($id) {
    db_delete('voucher', "id = $id");
    return true;
}