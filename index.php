<?php

//navigation bar
include("header.php");

 ?>

<!-- main content -->
<main class="mt-5 main-bg">
    <div class="container-fluid">
        <div class="row">
            <div class="col-10 col-md-5 offset-1" id="sideContent">
                <h1 class="mt-5 mb-3">Booking Tickets just got easier</h1>
                <p class="text-secondary text-left">type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages</p>
            </div>
            <div class="col-10 col-md-5" id="sideContent2">
                <h4 class="mt-5 text-center p-2">Where you want to go today?</h4>
                <div class="form-row mt-2 p-3">
                    <div class="col-5">
                        <label for="from">From</label>
                        <select class="custom-select" name="from" id="from">
                        </select>
                    </div>
                    <div class="col-5 offset-1">
                        <label for="to">To</label>
                        <select class="custom-select" name="to" id="where">
                        </select>
                    </div>
                    <div class="col-11 py-3">
                        <label for="jdate">Pick a Date</label>
                        <input type="date" class="form-control" id="jdate" />
                    </div>
                    <div class="col-5">
                        <label for="time">Time</label>
                        <select class="custom-select" name="destination" id="time">
                            <option value="">Select a time</option>
                            <option value="9 am">9 AM</option>
                            <option value="10 am">10 AM</option>
                        </select>
                    </div>
                </div>
                <div class="form-row p-3">
                    <div class="col-auto">
                        <button class="btn btn-success" id="trfind">Find a Trip</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
</main>
<div class="container" id="tripRes">
    <div class="row">
        <div class="col-10 mx-auto" id="actRes">
        </div>
    </div>
</div>

<?php include("footer.php"); ?>


<!-- js files -->
<script rel="text/javascript" src="src/js/jquery.min.js"></script>
<script rel="text/javascript" src="src/js/bootstrap.bundle.min.js"></script>
<script rel="text/javascript" src="src/js/project_script.js"></script>
<script>
    //destinations variables===================================

    let destination = ["Select a destination", "Chattogram", "Dhaka", "Chumilla", "Sylhet"];
    let option = document.createElement("option");

    let from = document.getElementById("from");
    let to = document.getElementById("where");
    let date = document.getElementById("jdate");
    let time = document.getElementById("time");

    //login & resigster buttons--------------------

    let register = document.getElementById("regis");
    let login = document.getElementById("logi");



    //functions==================================================

    function addOptions(x) { //this will add otions and values to the from and to option selector
        for (let i = 0; i < destination.length; i++) {
            let optClone = option.cloneNode();
            if (from.value == destination[i]) {
                continue;
            }
            optClone.value = destination[i];
            optClone.innerHTML = destination[i];
            x.appendChild(optClone);
        };
    };

    function showpass(x) {
        if (x.type == "text") {
            x.type = "password";
        } else {
            x.type = "text";
        }
    }
    let a, b, c, d, e, f, g, h, i, j;

    function getFormData() {
        a = document.getElementById("uname");
        b = a.value;

        c = document.getElementById("email");
        d = c.value;

        e = document.getElementById("phone");
        f = e.value;

        g = document.getElementById("pass1");
        h = g.value;

        i = document.getElementById("pass2");
        j = i.value;

    }



    /*************ajax calls ************************************/
    function httpLoad(x) {
        let htreq = new XMLHttpRequest;
        htreq.onreadystatechange = () => {

            if (htreq.readyState == 4 && htreq.status == 200) {
                let main = document.getElementsByTagName("main")[0];
                main.classList.remove("main-bg");
                main.classList.add("main-bg-reg");
                main.innerHTML = htreq.responseText;
                ch1.addEventListener("change", () => {
                    showpass(pass1)
                });
                ch2.addEventListener("change", () => {
                    showpass(pass2)
                });

            }

        };

        htreq.open("GET", x + ".php?aj=ireq", true);
        htreq.send();
    }

    function regAjax(m, n, o, p, q) {
        let htreq = new XMLHttpRequest;
        htreq.onreadystatechange = () => {

            if (htreq.readyState == 4 && htreq.status == 200) {
                let main = document.getElementsByTagName("main")[0];
                main.classList.remove("main-bg");
                main.classList.remove("main-bg-reg");
                main.classList.add("main-reg-success");
                main.innerHTML = htreq.responseText;

            }
            console.log("hi");
            htreq.open("POST", "register.php", "true");
            htreq.set.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
            xhttp.send("uname=" + m + "&email=" + n + "&phone=" + o + "&pass1=" + p + "&pass2=" + q + "&ruser=like");

        }
    }

    function findReg() {
        let reg = document.querySelector("#reg");
        if (reg) {
            clearInterval(itv);
            reg.addEventListener("click", () => {
                getFormData();
                console.log(b + d + f + g + h);
            });

            regAjax(b, d, f, h, j);
        }
    }

    let itv = setInterval(findReg, 1000);





    //evnt bindings=========================================

    from.addEventListener("change", () => {
        to.innerHTML = "";
        addOptions(to);
    });

    register.addEventListener("click", () => {
        let m = register.innerHTML.toLowerCase();
        httpLoad(m);

    });


    //function initialise===================================

    addOptions(from);


    //trip finding 
    let trfind = document.getElementById("trfind");
    let trResBlock = document.getElementById("tripRes");
    let actResult = document.getElementById("actRes");

    function ajaxdb(x) {

        let xmlhttp = new XMLHttpRequest;
        xmlhttp.onreadystatechange = () => {
            if (xmlhttp.readyState == 4 && xmlhttp.status == 200) {
                trResBlock.style.display= "block";
                actResult.innerHTML = xmlhttp.responseText;

            }

        };

        xmlhttp.open("GET", "trips.php?from=" + x[0] + "&to=" + x[1] + "&date=" + x[2] + "&time=" + x[3], true);
        xmlhttp.send();
    }
    trfind.addEventListener("click", () => {
        let jdetails = [from.value, to.value, date.value, time.value];
        ajaxdb(jdetails);
    });

</script>
</body>

</html>
