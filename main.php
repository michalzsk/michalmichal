<?php
require("db.php");
class Database {
    private $host;
    private $username;
    private $password;
    private $database;
    private $connection;

    public function __construct($host, $username, $password, $database) {
        $this->host = $host;
        $this->username = $username;
        $this->password = $password;
        $this->database = $database;

        $this->connect();
    }

    private function connect() {
        $this->connection = new mysqli($this->host, $this->username, $this->password, $this->database);

        if ($this->connection->connect_error) {
            die("Connection failed: " . $this->connection->connect_error);
        }
    }

    public function executeQuery($sql) {
        return $this->connection->query($sql);
    }

    public function getAllData($tableName) {
        $sql = "SELECT * FROM $tableName";
        return $this->executeQuery($sql);
    }

    public function getRowByKey($tableName, $key) {
        $sql = "SELECT * FROM $tableName WHERE id = $key";
        return $this->executeQuery($sql);
    }

    public function getRowByUniqueIndex($tableName, $indexValue) {
        $sql = "SELECT * FROM $tableName WHERE ean = '$indexValue'";
        return $this->executeQuery($sql);
    }
}

class Product {
    private $id;
    private $ean;
    private $name;
    private $description;
    private $price;
    private $createdAt;
    private $updatedAt;
    private $deletedAt;
}
$allProducts = $database->getAllData('products');
$productByKey = $database->getRowByKey('products', 1);
$productByIndex = $database->getRowByUniqueIndex('products', 'e284f4d0-01f7-4c3d-bbea-6334cf6d99b5');


