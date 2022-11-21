<?php
function construct() {
    request_auth();
    load_model('index');
}
function indexAction() {
    $data['types'] = get_list_types();
    load_view('index', $data);
}

?>