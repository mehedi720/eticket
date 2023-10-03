<?php 
include("dbconnection.php");
include("header.php");
if(isset($_POST['login'])){
    $email = $_POST['email'];
    $pass = $_POST['pass'];

    $query = $dbcnct->query("SELECT `Password` FROM `registered users` WHERE `Email`='$email'");

    if($query->rowCount() == 1){
        $hash = $query->fetch(PDO::FETCH_ASSOC);
        if(password_verify($pass, $hash['Password'])){

            session_start();
            $_SESSION['umail']= $email;
            header("location:index.php");

        }else{
            echo "password is incorrect";
        }
    }
}

?>

<main class="main-bg-login mt-5">
    <div class="container">
        <div class="row">
            <div class="col-6 offset-1">
                <h1 class="mt-5 text-secondary">Sign in</h1>
                <form class="needs-validation mt-3" action="<?php echo basename($_SERVER["PHP_SELF"]);?>" method="post" novalidate>
                    <div class="form-row">
                        <div class="col-10 mb-3">
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
                        <div class="col-6 mb-3">
                            <label for="pass2">Retype Password</label>
                            <div class="input-group">
                                <input type="password" class="form-control" id="pass" name="pass" required />
                            </div>
                        </div>
                        <div class="col-6 mb-3 my-auto">
                            <div class="custom-control custom-switch pt-3">
                                <input type="checkbox" class="custom-control-input" id="showpass">
                                <label class="custom-control-label" for="showpass">Show Password</label>
                            </div>
                        </div>
                    </div>
                    <div class="form-row">
                        <div class="col-4">
                            <input type="submit" class="mx-auto btn btn-success" name="login" value="Sign In" />
                        </div>
                    </div>
                </form>
                <div class="pt-1">
                    <a href="#" class="text-warning">Forgot password?</a>
                </div>
            </div>
        </div>
    </div>
</main>
<?php include("footer.php"); ?>
<!-- js code-->
<script>
    let showpass = document.getElementById("showpass");
    let pass = document.getElementById("pass");

    //functions
    function showPassword(x) {
        if (x.type == "text") {
            x.type = "password";
        } else {
            x.type = "text";
        }
    }


    //event binding
    showpass.addEventListener('change', () => {
        showPassword(pass);
    });

</script>
