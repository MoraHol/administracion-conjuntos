<?php
    require("DBOperator.php");
 $identification_number = $_POST["id"];
 $password = hash("sha256",$_POST["pass"]);
 echo $password;
 $db = new DBOperator('localhost','root','admin-conjuntos');
 $query = "SELECT * FROM `administrators` WHERE `administrators`.`identification_number` = '".$identification_number."'";
 echo $query;
 $result = $db->consult($query,"yes");
 if(isset($result)){
     foreach ($result as $row) {
         echo $row["password"];
       if($row["password"] === $password){
           header("Location: ../LoginAdmin/");
       }
     }
 }
 
?>