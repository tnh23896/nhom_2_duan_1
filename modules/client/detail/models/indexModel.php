<?php
function get_one_product($id)
{
  $result = db_fetch_row("SELECT p.* ,c.name,b.name as b_name FROM products p JOIN categories c ON p.category_id = c.id join brands b on b.id = p.brand_id where p.id = $id");
  return $result;
}
function get_types_by_product($id)
{
  $result = db_fetch_array("SELECT ts.*,types.name FROM type_products ts join types on types.id = id_type where id_products = $id");
  return $result;
}
function get_list_comments_by_product_id($product_id)
{
  return db_fetch_array("SELECT
  u.full_name,
  u.image,
  cmt.description
FROM comments cmt
  JOIN users u ON cmt.id_user = u.id WHERE id_pro = $product_id");
}
function get_list_products_by_category($cate_id)
{
  return db_fetch_array("SELECT * FROM products p WHERE p.category_id = $cate_id");
}
