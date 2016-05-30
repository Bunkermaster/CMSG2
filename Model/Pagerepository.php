<?php
namespace Model;

/**
 * Class Pagerepository
 * @author Yann Le Scouarnec <yann.le-scouarnec@hetic.net>
 * @package Model
 */
class PageRepository
{

    /**
     * @var \PDO
     */
    private $PDO;

    public function __construct(\PDO $PDO)
    {
        $this->PDO = $PDO;
    }

    /**
     * @param int $slug
     */
    public function getSlug($slug)
    {
        $sql = "
        SELECT 
          `body`, 
          `title`
        FROM 
          `page` 
        WHERE 
          `slug` = :slug
        ";
        $stmt = $this->PDO->prepare($sql);
        $stmt->bindParam(':slug', $slug);
        $stmt->execute();
        return $stmt->fetchObject();
    }

    /**
     * @param int $id
     */
    public function findById($id)
    {
        $sql = "
        SELECT 
          `id`,
          `slug`, 
          `body`, 
          `title`
        FROM 
          `page` 
        WHERE 
          `id` = :id
        ";
        $stmt = $this->PDO->prepare($sql);
        $stmt->bindParam(':id', $id);
        $stmt->execute();
        return $stmt->fetchObject();
    }

    /**
     * @return array liste des slugs et titles de toutes les pages
     */
    public function findAll()
    {
        $sql = "
        SELECT 
          `id`, 
          `slug`, 
          `title`
        FROM 
          `page` 
        ";
        $stmt = $this->PDO->prepare($sql);
        $stmt->execute();
        return $stmt->fetchAll(\PDO::FETCH_OBJ);
    }
}