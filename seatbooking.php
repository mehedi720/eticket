<?php
include("header.php");
include("dbconnection.php");
$s = $_REQUEST["busName"];
if(isset($s)){
    $q= $dbcnct->query("SELECT * FROM `available trips` WHERE `Bus`='$s'");
    if($q->rowCount()!=0){
        $r = $q->fetch(PDO::FETCH_ASSOC);
?>
<table class="table ">
        <tr>
            <td>A1</td>
            <td>A2</td>
            <td rowspan="4"></td>
            <td>B1</td>
            <td>B2</td>
        </tr>
        <tr>
            <td>C1</td>
            <td>C2</td>
            <td>D1</td>
            <td>D2</td>
        </tr>
        <tr>
            <td>E1</td>
            <td>E2</td>
            <td>F1</td>
            <td>F2</td>
        </tr>
        <tr>
            <td>G1</td>
            <td>G2</td>
            <td>H1</td>
            <td>H2</td>
        </tr>
        <tr>
            <td>I1</td>
            <td>I2</td>
            <td>I3</td>
            <td>I4</td>
            <td>I5</td>
        </tr>
    </table>
    <script>
    
    let tdata = document.getElementsByTagName("td");
    //functions
    function addClass(x){
            x.classList.toggle("active-seat");
        };

    let count = 0;
    for(let tde of tdata){
        let v = tdata[count];
        v.setAttribute("Seat-No", v.innerHTML);
            v.addEventListener('click', event =>{
            addClass(event.target); 
        });

        count++;
    }

    let rs ="<?php echo $r['Booked Seats']; };}; ?>";
    let trs = rs.trim();
    let rsAr = trs.split(" ");
    for(let i=0; i<rsAr.length; i++){
        for(let e of tdata){
            let atv = e.getAttribute("seat-no");
            if(atv == rsAr[i]){
                e.classList.add("seat-booked");
                e.dispatchEvent;
            }
            else if(atv == ""){
                e.dispatchEvent;
            }
        }
    }



                
    </script>