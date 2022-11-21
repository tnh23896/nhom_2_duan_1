<?php
function get_list_products()
{
    $result = db_fetch_array("SELECT p.* ,c.name FROM products p JOIN categories c ON p.category_id = c.id");
    return $result;
}

function get_one_product($id)
{
    $result = db_fetch_row("SELECT p.* ,c.name FROM products p JOIN categories c ON p.category_id = c.id where p.id = $id");
    return $result;
}

function create_product($title, $category_id, $description, $count, $price, $status, $thumb)
{
    $user = get_auth();
    $id = db_insert('products', [
        'title' => $title,
        'category_id' => $category_id,
        'description' => $description,
        'count' => $count,
        'status' => $status,
        'thumb' =>  $thumb,
        'create_id' => $user['id'],
        'created_at' => date('Y-m-d H:i:s')
    ]);
    return $id;
}

function update_product($id, $title, $category_id, $description, $count, $price, $status, $thumb)
{
    db_update('products', [
        'title' => $title,
        'category_id' => $category_id,
        'description' => $description,
        'count' => $count,
        'price' => $price,
        'status' => $status,
        'thumb' =>  $thumb,
        'created_at' => date('Y-m-d H:i:s')
    ], "id = $id");
    return true;
}

function delete_product($id)
{
    db_delete('products', "id = $id");
    return true;
}

function get_list_categories()
{
    $result = db_fetch_array("SELECT * FROM `categories`");
    return $result;
}
