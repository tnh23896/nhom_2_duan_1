<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    $id = $_GET['id'];
    $data['product'] = get_one_product($id);
    $data['types'] = get_types_by_product($id);
    $data['comments'] = get_list_comments_by_product_id($id);
    $data['same_product'] = get_list_products_by_category($data['product']['category_id']);
    $data['user'] = get_login();
    $data['notifications'] = get_notification();
    load_view('index', $data);
    //     $num_page=celi($total_row,$num_per_page)
    // • $total_row: Tổng số bản ghi
    // • $num_per_page: số bản ghi mỗi trang $total_row $num_per_page 
}
function indexPostAction()
{
    request_login(is_login());
    $desc = $_POST['desc'];
    $user = get_login();
    $id_pro = $_GET['id'];
    if (empty($desc)) {
        push_notification('red', ['Vui lòng nhập']);
        header('Location: ?mod=detail&id=' . $id_pro);
        die();
    }
    create_comment($desc, $user['id'], $id_pro);
    push_notification('green', ['Thành công']);
    header('Location: ?mod=detail&id=' . $id_pro);
    die;
}
