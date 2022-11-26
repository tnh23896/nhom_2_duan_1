<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    // ---------------------
    $row = get_count_pro();
    $total_records = $row['total'];
    $current_page = isset($_GET['page']) ? $_GET['page'] : 1;
    $limit = 5;
    // tổng số trang
    $total_page = ceil($total_records / $limit);
    // Giới hạn current_page trong khoảng 1 đến total_page
    if ($current_page > $total_page) {
        $current_page = $total_page;
    } else if ($current_page < 1) {
        $current_page = 1;
    }
    // Tìm Start
    $start = ($current_page - 1) * $limit;
    // Có limit và start rồi thì truy vấn CSDL lấy danh sách tin tức
    $data['result'] = get_limit_pro($start, $limit);
    $data['total_page'] = $total_page;
    $data['current_page'] = $current_page;
    load_view('index', $data);
}
function indexPostAction()
{
    $post_search = $_POST['search'];
}
