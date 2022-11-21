<?php 

function get_list_types()
{
    $result = db_fetch_array("SELECT * FROM types");
    return $result;
}
?>