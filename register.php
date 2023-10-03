
<?php
include("dbconnection.php");
//registration file handaler

if(isset($_POST['reg']) || isset($_POST['ruser'])){
    $name = $_POST['uname'];
    $email = $_POST['email'];
    $phone = $_POST['phone'];
    $pass = password_hash($_POST['pass1'], PASSWORD_BCRYPT);
    $rpass =  password_hash($_POST['pass2'], PASSWORD_BCRYPT);

    $query = $dbcnct->query("INSERT INTO `registered users`(`User Name`, `Email`, `Phone`, `Password`, `Retype Password`) VALUES ('$name', '$email', '$phone', '$pass', '$rpass')");
    if($query){
        include("header.php");
        include("reg_success.php");
        include("footer.php");
        echo "</div>";

    }
    else{
        echo "error";
    }
}
else{
    if(!isset($_REQUEST["aj"])){
         include("header.php");
    ?>
    <body>
       <main class="main-bg-reg mt-5">   
    <?php
     };
     ?>

        <div class="container-fluid">
            <div class="row">
                <div class="col-md-6 offset-1">
                    <h1 class="mt-5 text-secondary">Pessengers Sign up</h1>
                    <form class="needs-validation mt-3" action="<?php echo basename($_SERVER["PHP_SELF"]);?>" method="post" novalidate>
                        <div class="form-row">
                            <div class="col-10 col-md-5 mb-3">
                                <label for="uname">Username</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupPrepend">#</span>
                                    </div>
                                    <input type="text" class="form-control rounded-right" id="uname" placeholder="Username" aria-describedby="inputGroupPrepend" name="uname" required>
                                    <div class="valid-feedback">Cool!!</div>
                                    <div class="invalid-feedback">
                                        Please choose a username.
                                    </div>
                                </div>
                            </div>
                            <div class="col-10  col-md-5 mb-3">
                                <label for="email">Email</label>
                                <div class="input-group">
                                    <div class="input-group-prepend">
                                    <span class="input-group-text" id="inputGroupPrepend">@</span>
                                    </div>
                                    <input type="email" class="form-control rounded-right" id="email" placeholder="Email" aria-describedby="inputGroupPrepend" name="email" required>
                                    <div class="invalid-feedback">
                                    Enter a valid email
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-10 mb-3">
                                <label for="phone">Mobile Number</label>
                                <input type="number" class="form-control" id="phone" name="phone" required />
                                <div class="invalid-feedback">
                                    Please enter a valid mobile number
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="pass1">Password</label>
                                <input type="password" class="form-control" id="pass1" name="pass1" required />
                            </div>
                            <div class="col-md-6 mb-3 my-auto">
                                <div class="custom-control custom-switch pt-3">
                                    <input type="checkbox" class="custom-control-input" id="ch1"  >
                                    <label class="custom-control-label" for="ch1">Show Password</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="col-md-6 mb-3">
                                <label for="pass2">Retype Password</label>
                                <div class="input-group">
                                    <input type="password" class="form-control" id="pass2" name="pass2" required />
                                </div>
                            </div>
                            <div class="col-md-6 mb-3 my-auto">
                                <div class="custom-control custom-switch pt-3">
                                    <input type="checkbox" class="custom-control-input" id="ch2">
                                    <label class="custom-control-label" for="ch2">Show Password</label>
                                </div>
                            </div>
                        </div>
                        <div class="form-group">
                            <div class="form-check">
                                <input class="form-check-input" type="checkbox" value="" id="trms" required>
                                <label class="form-check-label" for="trms">
                                        Agree to terms and conditions
                                </label>
                                <div class="invalid-feedback">
                                    You must agree before submitting.
                                </div>
                            </div>
                        </div>
                        <input class="btn btn-success" <?php if(isset($_REQUEST["aj"])){ echo "type='button'"." "."id='reg'"." "."onclick='getFormData();'";}else{echo "type='submit'";} ?> value="Register" name="reg" />
                    </form>
                    </div>
            </div>
        </div>
    <?php if(!isset($_REQUEST["aj"])){
        echo "</main>";
        include("footer.php");
        }; 
    ?>

    <script>
    // Example starter JavaScript for disabling form submissions if there are invalid fields
    (function() {
    'use strict';
    window.addEventListener('load', function() {
        // Fetch all the forms we want to apply custom Bootstrap validation styles to
        var forms = document.getElementsByClassName('needs-validation');
        // Loop over them and prevent submission
        var validation = Array.prototype.filter.call(forms, function(form) {
        form.addEventListener('submit', function(event) {
            if (form.checkValidity() === false) {
            event.preventDefault();
            event.stopPropagation();
            }
            form.classList.add('was-validated');
        }, false);
        });
    }, false);
    })();






    //show password===============================================
    let ch1= document.getElementById("ch1");
    let ch2 = document.getElementById("ch2");
    let pass1 =  document.getElementById("pass1");
    let pass2 = document.getElementById("pass2");
    function showpass(x){
        if(x.type=="text"){
            x.type="password";
        }else{
        x.type = "text";
        }
    }
    ch1.addEventListener("change", () =>{showpass(pass1)});
    ch2.addEventListener("change", () =>{showpass(pass2)});

    </script>
    <?php if(!isset($_REQUEST["aj"])){
        echo "</body>";
        }; 
    ?>

<?php 
};
?>