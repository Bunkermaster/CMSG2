<?php
namespace Controller;

use Model\Pagerepository;

/**
 * Class PageController
 * @author Yann Le Scouarnec <yann.le-scouarnec@hetic.net>
 * @package Controller
 */
class PageController
{
   private $repository;
   
   public function __construct(\PDO $PDO)
   {
      $this->repository = new PageRepository($PDO);
   }

   public function ajoutAction()
   {
   }

   public function supprimerAction()
   {
   }

   public function modifierAction()
   {
   }

   public function detailsAction()
   {
   }

   public function listeAction()
   {
   }

   public function displayAction()
   {
//      $slug = $_GET['p'] ?? $_POST['p'] ?? 'teletubbies';
      if(isset($_GET['p'])){
         $slug = $_GET['p'];
      } else {
         $slug = 'teletubbies';
      }
      $page = $this->repository->getSlug($slug);
      if(!$page){
         include "View/404.php";
         return;
      }
      include "View/page.php";
   }

}