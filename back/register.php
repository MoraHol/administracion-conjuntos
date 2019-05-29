<?php
    $name = $_POST["name"];
    $password = hash("sha256", $_POST["pass"]);
    $id = $_POST["id"];
    require("DBOperator.php");
    $db = new DBOperator('localhost','root','admin-conjuntos');
    $query = "INSERT INTO `administrators` (`id_administrators`, `name`, `identification_number`, `password`) VALUES (NULL, '$name', '$id', '$password')";
    $result = $db->consult($query,"yes");
    header("Location: ../LoginAdmin/");
?>