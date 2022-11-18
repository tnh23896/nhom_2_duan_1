<?php
function get_list_productions()
{
    $result = db_fetch_array("SELECT p.* ,c.name FROM productions p JOIN categories c ON p.category_id = c.id");
    return $result;
}

function get_one_production($id)
{
    $result = db_fetch_row("SELECT p.* ,c.name FROM productions p JOIN categories c ON p.category_id = c.id where p.id = $id");
    return $result;
}

function create_production($title, $category_id, $description, $count, $price, $status, $thumb)
{
    $user = get_auth();
    $id = db_insert('productions', [
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

function update_production($id, $title, $category_id, $description, $count, $price, $status, $thumb)
{
    db_update('productions', [
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

function delete_production($id)
{
    db_delete('productions', "id = $id");
    return true;
}

function get_list_categories()
{
    $result = db_fetch_array("SELECT * FROM `categories`");
    return $result;
}
