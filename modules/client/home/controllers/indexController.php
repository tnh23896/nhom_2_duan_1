<?php

function construct() {
    load_model('index');
}

function indexAction() {
    load_view('index');
}

function cartAction() {
    load_view('cart');
}

function loginAction() {
    load_view('login');
}

function registerAction(){
    load_view('register');
}

function payAction() {
    load_view('pay');
}

function accountAction() {
    load_view('account');
}