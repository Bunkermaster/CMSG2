<?php
require_once "../init.php";
$page = new \Controller\PageController($pdo);
switch($_GET['a']){
    case "ajouter":
        $page->ajoutAction();
        break;
    
}
