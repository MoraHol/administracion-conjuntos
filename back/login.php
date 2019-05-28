<?php
    require("DBOperator.php");
 $identification_number = $_POST["id"];
 $password = $_POST["pass"];
 $db = new DBOperator();
 settype($identification_number, "integer");
 $query = "SELECT * FROM `administrators` WHERE `administrators`.`identification_number` = '".$identification_number."';";
 $result = $db->consult($query, "yes");
 if(isset($result)){
     foreach ($result as $row) {
        echo $row;
     }
 }
 
?>