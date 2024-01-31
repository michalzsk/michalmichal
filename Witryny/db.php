<?php
    require "Database.php";
    $database = new Database('127.0.0.1','grupa_s','root','');
    var_dump($database->getProducts());
    var_dump($database->getUsers());
    echo "Drugie coś <br> <br> <br> <br>";
    var_dump($database->getProductsRow(1));
    echo "<br>";
    var_dump($database->getUsersRow(1));
    echo "<br>";
    var_dump($database->getProductsRowByUnique("e284f4d0-01f7-4c3d-bbea-6334cf6d99b5"));
    echo "<br>";
    var_dump($database->getUsersRowByUnique("admin@example.com"));
?>