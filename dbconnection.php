<?php

$dsn = "mysql:host=localhost; dbname=ticket_app";
$user = "root";
$pass = "";



try{
    $dbcnct = new PDO($dsn, $user, $pass);
}catch(PDOException $e){
    print "See".$e->getMessage();
}