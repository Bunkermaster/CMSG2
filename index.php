<?php
require_once "vendor/autoload.php";
try{
    $pdo = new \PDO("mysql:host=localhost;dbname=kandt","root","root");
    $pdo->query('set NAMES \'utf8\'');
} catch(PDOException $e){
    die($e->getMessage());
}
$page = new \Controller\PageController($pdo);
$page->displayAction();
