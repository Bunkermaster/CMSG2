<?php
namespace Controller;

use Model\PageRepository;

/**
 * Class PageController
 * @author Yann Le Scouarnec <yann.le-scouarnec@hetic.net>
 * @package Controller
 */
class PageController
{
    /**
     * @var PageRepository
     */
    private $repository;

    /**
     * PageController constructor.
     * @param \PDO $PDO
     */
    public function __construct(\PDO $PDO)
    {
        $this->repository = new PageRepository($PDO);
    }

    /**
     *
     */
    public function ajoutAction()
    {
    }

    /**
     *
     */
    public function supprimerAction()
    {
    }

    /**
     *
     */
    public function modifierAction()
    {
    }

    /**
     *
     */
    public function detailsAction()
    {
    }

    /**
     *
     */
    public function listeAction()
    {
    }

    /**
     *
     */
    public function displayAction()
    {
//      $slug = $_GET['p'] ?? $_POST['p'] ?? 'teletubbies';
        // recuperation du slug de la page demandee
        if (isset($_GET['p'])) {
            $slug = $_GET['p'];
        } else {
            $slug = 'teletubbies';
        }
        // recuperation de la navigation basee sur le slug courant
        $nav = $this->getNav($slug);
        // recuperation des donnees de la page demandee
        $page = $this->repository->getSlug($slug);
        // si les donnees sont false, pas de page correspondant
        if (!$page) {
            // page 404
            include "View/404.php";

            // sortie du controller
            return;
        }
        // inclusion de la vue avec injection des variables
        include "View/page.php";
    }

    /**
     * recuperation de la nav a partir d'une vue
     * @param string $slug current page slug
     * @return string
     */
    private function getNav($slug)
    {
        // capture de l'output et placement dans l'output buffer (ob)
        ob_start();
        $nav = $this->repository->findAll();
        // evite le bug de foreach sur false si pas de donnees
        if($nav === false){
            // je met $nav a tableau vide
            $nav = [];
        }
        // inclusion de la vue de nav
        include "View/nav.php";

        //retour du output buffer et nettoyage du buffer
        return ob_get_clean();
    }

}