<?php
// inclusion de l'autoload composer
// pour inclusion automatique de classes
require_once __DIR__."/vendor/autoload.php";
// connexion a la base de donnees
try{
    $pdo = new \PDO("mysql:host=localhost;dbname=kandt","root","root");
    $pdo->query('SET NAMES \'utf8\'');
} catch(PDOException $e){
    die($e->getMessage());
}
/**
 * @param $value1
 * @param $value2
 * @return string
 */
function isActive($value1, $value2)
{
    if ($value1 == $value2) {
        return 'active';
    } else {
        return '';
    }
}

/**
 * @param $value1
 * @param $value2
 * @return string
 */
function isChecked($value1, $value2)
{
    if ($value1 == $value2) {
        return ' checked="checked"';
    } else {
        return '';
    }
}
