<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    $id = $_GET['id'];
    $data['product'] = get_one_product($id);
    load_view('index', $data);
}
