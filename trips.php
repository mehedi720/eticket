<?php

include("dbconnection.php");

$from = $_REQUEST["from"];
$to = $_REQUEST['to'];
$date = $_REQUEST['date'];
$time = $_REQUEST['time'];
if(isset($from)&&isset($to)){
    $q = $dbcnct->query("SELECT * FROM `available trips` WHERE `Jfrom`='$from' AND `Jto`='$to' AND `Date`= '$date' AND `Time`='$time' ");
    $num = $q->rowCount();
    if($num > 0){
        echo "<table class='table table-striped bg-white' ><thead><tr><th scope='col' >Bus Name</th><th scope='col'>From</th><th scope='col'>To</th><th scope='col'>Date</th><th scope='col'>Time</th><th scope='col'>Book</th></tr></thead><tbody>";
        while($r = $q->fetch(PDO::FETCH_ASSOC)){

            echo "<tr scope='row' class='fadeInUp' ><td>".$r["Bus"]."</td><td>".$r["Jfrom"]."</td><td>".$r["Jto"]."</td><td>".$r["Date"]."</td><td>".$r["Time"]."</td><td>"."<a class='btn btn-sm btn-primary' href='seatbooking.php?busName=".$r["Bus"]."' > Book Now</a>"."</tr>";
        };

        echo "</tbody></table>";
    }else{
        echo "No result found";
    }
};

?>
