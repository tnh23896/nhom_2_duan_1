<?php

function construct() {
    request_auth();
    load_model('index');
}

function indexAction() {
    $data['productions'] = get_list_productions();
    load_view('index', $data);
}

function createAction() {
    $data['categories'] = get_list_categories();
    load_view('create', $data);
}

function createPostAction() {
    $title = $_POST['title'];
    $category_id= $_POST['category_id'];
    $description = $_POST['description'];
    $count = $_POST['count'];
    $price = $_POST['price'];
    $status = $_POST['status'];
    $thumb = $_FILES['thumb']['name'];
    move_uploaded_file($thumb['tmp_name'], 'public/images/' . $thumb['name']);
    if (empty($title)) {
        // push_notification('danger', ['Vui lòng nhập vào tên danh mục']);
        header('Location: ?role=admin&mod=production&action=create');
        die();
    }
    create_production($title,$category_id,$description,$count,$price,$status,$thumb);
    push_notification('success', ['Tạo mới sản phẩm thành công']);
    header('Location: ?role=admin&mod=production');
}

function deleteAction() {
    $id = $_GET['id_prod'];
    delete_production($id);
    push_notification('success', ['Xoá  sản phẩm thành công']);
    header('Location: ?role=admin&mod=production');
}

function updateAction()
{
    $id = $_GET['id_prod'];
    $prod = get_one_production($id);
    $data['categories'] = get_list_categories();
    $data['production'] = $prod;
    if ($prod) {
        load_view('update', $data);
    } else {
        header('Location: ?role=admin&mod=production');
    }
}

function updatePostAction() {
    $id = $_GET['id_prod'];
    $prod = get_one_production($id);
    if (!$prod) {
        header('Location: ?role=admin&mod=production');
        die();
    }
    $title = $_POST['title'];
    $category_id= $_POST['category_id'];
    $description = $_POST['description'];
    $count = $_POST['count'];
    $price = $_POST['price'];
    $status = $_POST['status'];
    $thumb = $_POST['thumb'];
    if (empty($title)) {
        push_notification('errors', [
            'title' => 'Vui lòng nhập vào tiêu đề sản phẩm'
        ]);
        header('Location: ?role=admin&mod=production&action=update&id_prod='.$id);
    }
    update_production($id,$title,$category_id,$description,$count,$price,$status,$thumb);
    push_notification('success', ['Chỉnh sửa danh mục sản phẩm thành công']);
    header('Location: ?role=admin&mod=production');
}