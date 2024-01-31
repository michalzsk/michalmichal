<?php
        require "Users.php";
        require "Products.php";
    class Database{
        private ?PDO $pdo;
        public function __construct(string $host,string $dbname,string $user, string $password)
        {
            $this->pdo = new PDO ("mysql:host=$host;dbname=$dbname",$user,$password);
            $this->pdo->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        }
        public function __destruct()
        {
            $this->pdo = null;
        }
        public function getProducts(){
            $sql = "SELECT * FROM products";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            $stmt->setFetchMode(PDO::FETCH_CLASS,"Products");
            return $stmt->fetchAll();
        }
        public function getUsers(){
            $sql = "SELECT * FROM users";
            $stmt = $this->pdo->prepare($sql);
            $stmt->execute();
            $stmt->setFetchMode(PDO::FETCH_CLASS,"Users");
            return $stmt->fetchAll();
        }
        public function getProductsRow(int $id){
            $sql = "SELECT * from products WHERE id=:id";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindValue(':id', $id, PDO::PARAM_INT);
            $stmt->execute();
            $stmt->setFetchMode(PDO::FETCH_CLASS,"Products");
            return $stmt->fetchAll();
        }
        public function getUsersRow(int $id){
            $sql = "SELECT * from users WHERE id=:id";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindValue(':id', $id, PDO::PARAM_INT);
            $stmt->execute();
            $stmt->setFetchMode(PDO::FETCH_CLASS,"Users");
            return $stmt->fetchAll();
        }
        public function getProductsRowByUnique(string $ean){
            $sql = "SELECT * from products WHERE ean=:ean";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindValue(':ean', $ean, PDO::PARAM_STR);
            $stmt->execute();
            $stmt->setFetchMode(PDO::FETCH_CLASS,"Products");
            return $stmt->fetchAll();
        }
        public function getUsersRowByUnique(string $email){
            $sql = "SELECT * from users WHERE email=:email";
            $stmt = $this->pdo->prepare($sql);
            $stmt->bindValue(':email', $email, PDO::PARAM_STR);
            $stmt->execute();
            $stmt->setFetchMode(PDO::FETCH_CLASS,"Users");
            return $stmt->fetchAll();
        }
    }
?>