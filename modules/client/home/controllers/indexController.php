<?php

function construct()
{
    load_model('index');
}

function indexAction()
{
    $data['productions'] = get_list_productions();
    load_view('index', $data);
}
