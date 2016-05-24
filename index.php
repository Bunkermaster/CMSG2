<?php
// inclusion de l'autoload composer
// pour inclusion automatique de classes
require_once "vendor/autoload.php";
// connexion a la base de donnees
try{
    $pdo = new \PDO("mysql:host=localhost;dbname=kandt","root","root");
    $pdo->query('SET NAMES \'utf8\'');
} catch(PDOException $e){
    die($e->getMessage());
}
$page = new \Controller\PageController($pdo);
$page->displayAction();
