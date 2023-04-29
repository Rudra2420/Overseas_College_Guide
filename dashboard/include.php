<?php
session_start();
include_once('../../database/dbconn.php');
include_once('../../database/function.php');
if ($_SESSION['overseas_admin']) {
    // echo $_SESSION['overseas_admin'];
?>

<!DOCTYPE html>
<html>

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
        <!-- <meta name="author" content="Creative Tim"> -->
        <title>Overseas Dashboard - Admin</title>
        <!-- Favicon -->
        <link rel="icon" href="../assets/img/logo.png" type="image/png">
        <!-- Fonts -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
        <!-- Icons -->
        <link rel="stylesheet" href="assets/vendor/nucleo/css/nucleo.css" type="text/css">
        <link rel="stylesheet" href="assets/vendor/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
        <!-- Page plugins -->
        <!-- Argon CSS -->
        <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
    </head>

    <body>
        <!-- Sidenav -->
        <nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
            <div class="scrollbar-inner">
                <!-- Brand -->
                <div class="sidenav-header  align-items-center">
                    <a class="navbar-brand" href="javascript:void(0)">
                        <img src="../assets/img/logo.png" style="height: 100px; width:60px;" class="navbar-brand-img" alt="...">
                    </a>
                </div>
                <div class="navbar-inner">
                    <!-- Collapse -->
                    <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                        <!-- Nav items -->
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active" href="index.php">
                                    <i class="ni ni-tv-2 text-primary"></i>
                                    <span class="nav-link-text">Dashboard</span>
                                </a>
                            </li>

                            <!-- Divider -->
                            <hr class="my-3">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <i class="ni ni-single-02 text-yellow"></i>
                                    <span class="nav-link-text">Users</span>
                                </a>
                            </li>

                            <!-- Divider -->
                            <hr class="my-3">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <i class="ni ni-pin-3 text-primary"></i>
                                    <span class="nav-link-text">Colleges</span>
                                </a>
                            </li>

                            <!-- Divider -->
                            <hr class="my-3">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <i class="ni ni-planet text-orange"></i>
                                    <span class="nav-link-text">Accommodation</span>
                                </a>
                            </li>

                            <!-- Divider -->
                            <hr class="my-3">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <i class="ni ni-bullet-list-67 text-default"></i>
                                    <span class="nav-link-text">Part-Time-Work</span>
                                </a>
                            </li>

                            <!-- Divider -->
                            <hr class="my-3">
                            <li class="nav-item">
                                <a class="nav-link" href="#">
                                    <i class="ni ni-key-25 text-info"></i>
                                    <span class="nav-link-text">Profile</span>
                                </a>
                            </li>
                        </ul>

                        <!-- Divider -->
                        <hr class="my-3">
                    </div>
                </div>
            </div>
        </nav>

        <!-- Main content -->
        <div class="main-content" id="panel">
            <!-- Topnav -->
            <nav class="navbar navbar-top navbar-expand navbar-dark bg-primary border-bottom">
                <div class="container-fluid">
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">

                        <!-- Navbar links -->
                        <ul class="navbar-nav align-items-center  ml-md-auto ">
                            <li class="nav-item d-xl-none">
                                <!-- Sidenav toggler -->
                                <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin" data-target="#sidenav-main">
                                    <div class="sidenav-toggler-inner">
                                        <i class="sidenav-toggler-line"></i>
                                        <i class="sidenav-toggler-line"></i>
                                        <i class="sidenav-toggler-line"></i>
                                    </div>
                                </div>
                            </li>
                        </ul>

                        <ul class="navbar-nav align-items-center  ml-auto ml-md-0 ">
                            <li class="nav-item dropdown">
                                <a class="nav-link pr-0" href="#" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <div class="media align-items-center">
                                        <span class="avatar avatar-sm rounded-circle">
                                            <i class="ni ni-single-02 text-blue"></i>
                                        </span>
                                        <div class="media-body  ml-2  d-none d-lg-block">
                                            <span class="mb-0 text-sm  font-weight-bold">Admin</span>
                                        </div>
                                    </div>
                                </a>
                                <div class="dropdown-menu  dropdown-menu-right ">
                                    <div class="dropdown-header noti-title">
                                        <h6 class="text-overflow m-0">Welcome!</h6>
                                    </div>
                                    <a href="#!" class="dropdown-item">
                                        <i class="ni ni-single-02"></i>
                                        <span>My profile</span>
                                    </a>
                                    <div class="dropdown-divider"></div>
                                    <a href="logout.php" class="dropdown-item">
                                        <i class="ni ni-user-run"></i>
                                        <span>Logout</span>
                                    </a>
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </nav>

            

            <!-- Argon Scripts -->
            <!-- Core -->
            <script src="assets/vendor/jquery/dist/jquery.min.js"></script>
            <script src="assets/vendor/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
            <script src="assets/vendor/js-cookie/js.cookie.js"></script>
            <script src="assets/vendor/jquery.scrollbar/jquery.scrollbar.min.js"></script>
            <script src="assets/vendor/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
            <!-- Optional JS -->
            <script src="assets/vendor/chart.js/dist/Chart.min.js"></script>
            <script src="assets/vendor/chart.js/dist/Chart.extension.js"></script>
            <!-- Argon JS -->
            <script src="assets/js/argon.js?v=1.2.0"></script>

    </body>

    </html>

<?php
} else {
    redirect('loginindex.php');
}
?>