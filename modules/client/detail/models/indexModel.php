<?php
function get_one_product($id)
{
  $result = db_fetch_row("SELECT p.* ,c.name FROM products p JOIN categories c ON p.category_id = c.id where p.id = $id");
  return $result;
}
