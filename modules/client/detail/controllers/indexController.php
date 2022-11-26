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
    load_view('index', $data);
}
