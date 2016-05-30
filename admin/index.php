<?php
chdir($rootDir = dirname(__DIR__));
require_once "init.php";
$action = '';
if (isset($_GET['a'])) {
    $action = $_GET['a'];
}
//$action = $_GET['a'] ?? ''; // php 7
$page = new \Controller\PageController($pdo);
switch ($action) {
    case 'ajouter':
        break;

    case 'details':
        try{
            $page->detailsAction();
        } catch (\Exception $e){
            die($e->getMessage());
        }
        break;

    case 'lister':
    default:
        $page->listeAction();
        break;
}