<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    $id = $_GET['id'];
    $data['production'] = get_one_production($id);
    load_view('index', $data);
}
