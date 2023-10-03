<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta http-equiv="X-UA-Compatible" content="ie=edge" />
    <title>E-ticket</title>


    <!-- css file -->
    <link rel="stylesheet" href="src/css/bootstrap.min.css" />
    <link rel="stylesheet" href="src/css/bootstrap-reboot.min.css" />
    <link rel="stylesheet" href="src/css/animate.css" />

    <link rel="stylesheet" href="src/css/style.css" />

    <!-- favicon -->
    <link rel="icon" href="src/img/favicon.png" type="image/png" size="32x32" />

</head>

<body>

    <!-- navigation bar -->
    <nav class="navbar navbar-expand-md navbar-light bg-white fixed-top shadow-sm px-md-5">
        <a class="navbar-brand mx-auto text-success ml-lg-5 pl-md-5" href="<?php $_SERVER["SERVER_NAME"];?>">#E-ticket</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navItems" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse pr-md-5" id="navItems">
            <ul class="navbar-nav ml-auto mr-md-3  mr-lg-5">
                <li class="nav-item active text-secondary">
                    <a class="nav-link" href="index.php">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">About</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Contact</a>
                </li>
            </ul>
            <div class="dropdown-divider"></div>
            <ul class="navbar-nav nav ml-md-3 mr-lg-5" id="navp2">
                <?php 
        if(basename($_SERVER["PHP_SELF"])=="register.php"){
        ?>
                <li class="nav-item mx-auto ">
                    <a class="nav-link text-success" id="logi" href="login.php">Login</a>
                </li>
                <?php
         }
        else if(basename($_SERVER["PHP_SELF"])=="register.php"){    
        ?>
                <li class="nav-item mx-auto ">
                    <a class="nav-link  text-success" id="regis" href="register.php">Register</a>
                </li>
                <?php }
             else{
        ?>
                <li class="nav-item mx-auto border-right border-n">
                    <a class="nav-link  text-success" id="regis" href="register.php">Register</a>
                </li>
                <li class="nav-item mx-auto border-left border-n">
                    <a class="nav-link text-success" id="logi" href="login.php">Login</a>
                </li>
                <?php } ?>
            </ul>
        </div>
    </nav>
