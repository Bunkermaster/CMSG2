<?php
require_once 'init.php';
$page = new \Controller\PageController($pdo);
$page->displayAction();
