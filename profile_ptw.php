<?php
session_start();
include_once('database/dbconn.php');
include_once('database/function.php');

if(isset($_SESSION['IS_LOGIN'])){
  if($_SESSION['IS_LOGIN']=="shop owner"){
      $uid = $_SESSION['UID'];
      $uname = $_SESSION['UNAME'];
      $uemail = $_SESSION['UEMAIL'];
      $uphn   = $_SESSION['UPHN'];
?>


<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="Start your development with a Dashboard for Bootstrap 4.">
  <meta name="author" content="Creative Tim">
  <title>Overseas - Owner Profile</title>
  <!-- Favicon -->
  <link rel="icon" href="assets/img/logo.png" type="image/png">
  <!-- Fonts -->
  <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
  <!-- Icons -->
  <link rel="stylesheet" href="assets/vendor/vendor2/nucleo/css/nucleo.css" type="text/css">
  <link rel="stylesheet" href="assets/vendor/vendor2/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
  <!-- Argon CSS -->
  <link rel="stylesheet" href="assets/css/argon.css?v=1.2.0" type="text/css">
</head>

<body>
<!-- Sidenav -->
<nav class="sidenav navbar navbar-vertical  fixed-left  navbar-expand-xs navbar-light bg-white" id="sidenav-main">
        <div class="scrollbar-inner">
            <!-- Brand -->
            <div class="sidenav-header  align-items-center">
                <a class="navbar-brand" href="index.php">
                    <img src="assets/img/logo.png" style="height: 100px; width:60px;" class="navbar-brand-img"
                        alt="...">
                </a>
            </div>
            <div class="navbar-inner">
                <!-- Collapse -->
                <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                    <!-- Nav items -->
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="ptw_dashboard.php">
                                <i class="ni ni-tv-2 text-orange"></i>
                                <span class="nav-link-text">Dashboard</span>
                            </a>
                        </li>

                        <!-- Divider -->
                        <hr class="my-3">
                        <li class="nav-item">
                            <a class="nav-link" href="new_ptw.php">
                                <i class="ni ni-shop text-orange"></i>
                                <span class="nav-link-text">New Workplace</span>
                            </a>
                        </li>

                        <!-- Divider -->
                        <hr class="my-3">
                        <li class="nav-item">
                            <a class="nav-link" href="manage_ptw.php">
                                <i class="ni ni-pin-3 text-orange"></i>
                                <span class="nav-link-text">Edit Workplace</span>
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
        <nav class="navbar navbar-top navbar-expand navbar-dark border-bottom" style="background: #5eaaa8">
            <div class="container-fluid">
                <div class="collapse navbar-collapse" id="navbarSupportedContent">

                    <!-- Navbar links -->
                    <ul class="navbar-nav align-items-center  ml-md-auto ">
                        <li class="nav-item d-xl-none">
                            <!-- Sidenav toggler -->
                            <div class="pr-3 sidenav-toggler sidenav-toggler-dark" data-action="sidenav-pin"
                                data-target="#sidenav-main">
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
                                        <i class="ni ni-single-02 text-orange"></i>
                                    </span>
                                    <div class="media-body  ml-2  d-none d-lg-block">
                                        <span class="mb-0 text-sm text-white font-weight-bold">Owner</span>
                                    </div>
                                </div>
                            </a>
                            <div class="dropdown-menu  dropdown-menu-right ">
                                <div class="dropdown-header noti-title">
                                    <h6 class="text-overflow m-0">Welcome!</h6>
                                </div>
                                <a href="profile_ptw.php" class="dropdown-item">
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

    <?php
            $adselqry = "SELECT * FROM users WHERE uid='$uid'";
            $adselqryexe = mysqli_query($conn, $adselqry);
            $adfetchary = mysqli_fetch_assoc($adselqryexe);
    ?>


    <!-- Header -->
    <!-- Header -->
    <div class="header pb-6 d-flex align-items-center" style="min-height: 600px; background-image: url(assets/img/theme/team-1.jpg); background-size: cover; background-position: center top;">
      <!-- Mask -->
      <span class="mask bg-gradient-default opacity-8"></span>
      <!-- Header container -->
      <div class="container-fluid d-flex align-items-center">
        <div class="row">
          <div class="col-lg-9 col-md-10">        
            <h1 class="display-3 text-white">Hello <?php echo $adfetchary['uname'] ?></h1>
            <p class="text-white mt-0 mb-5">This is your profile page. You can change your personal information.</p>
            <!-- <a href="profile.php" class="btn btn-neutral">Edit profile</a> -->
          </div>
        </div>
      </div>
    </div>
    <!-- Page content -->
    <form method="post">
    <div class="container-fluid mt--8">
      <div class="row">
        <div class="col-xl-12 order-xl-1">
          <div class="card">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Edit profile </h3>
                </div>
                <div class="col-4 text-right">
                  <button type="submit" name="adupdate" class="btn btn-sm text-white" style="background: #eb5e0b">Update</button>
                </div>
              </div>
            </div>

            <div class="card-body">
                <h6 class="heading-small text-muted mb-4">User information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-username">Name</label>
                        <input type="text" id="input-username" class="form-control" name="admname" value="<?php echo $adfetchary['uname'] ?>">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-email">Email address</label>
                        <input type="email" id="input-email" class="form-control" name="admemail" value="<?php echo $adfetchary['uemail'] ?>">
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-first-name">Mobile No.</label>
                        <input type="text" id="input-first-name" name="admmob" class="form-control" value="<?php echo $adfetchary['umobile'] ?>">
                      </div>
                    </div>

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-first-name">State</label>
                        <input type="text" id="input-first-name" name="admstate" class="form-control" value="<?php echo $adfetchary['ustate'] ?>">
                      </div>
                    </div>

                    <!-- <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-last-name">Last name</label>
                        <input type="text" id="input-last-name" class="form-control" value="Jesse">
                      </div>
                    </div> -->
                  </div>

                  <div class="row">

                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-first-name">Country</label>
                        <input type="text" id="input-first-name" name="admcon" class="form-control" value="<?php echo $adfetchary['ucon'] ?>">
                      </div>
                    </div>
                  </div>
                  

                </div>
                <!-- <hr class="my-4" /> -->
              
            </div>
          </div>
        </div>
      </div>
      </form>

       <!-- Footer -->
       <footer class="footer pt-0">
                        <div class="row align-items-center justify-content-lg-between">
                            <div class="col-lg-6">
                                <div class="copyright text-center  text-lg-left  text-muted">
                                    &copy; 2021 <a href="ptw_dashboard.php" class="font-weight-bold ml-1"
                                        target="_blank">Overseas</a>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        </div>


        <?php

          if(isset($_POST['adupdate']))
          {
              $adminname  = $_POST['admname'];
              $admemail   = $_POST['admemail'];
              $admmob     = $_POST['admmob'];
              $admstate   = $_POST['admstate'];
              $admcon     = $_POST['admcon'];
              $admpass    = $_POST['admpass'];


              $upqry    = "UPDATE users SET uname='$adminname', uemail='$admemail',umobile='$admmob',ustate='$admstate',ucon='$admcon' upwd='$admpass' WHERE uemail='$sessionemail' ";
              $upqryexe = mysqli_query($conn, $upqry);
              
              if($upqryexe)
              {
                echo "<script>alert('Profile Updated Successfully....');</script>";
                redirect('index.php');
              }
              else{
                echo "<script>alert('Something Went Wrong....Profile is not updated....');</script>";
              }
          }
          
        ?>


  <!-- Argon Scripts -->
  <!-- Core -->
  <script src="assets/vendor/vendor2/jquery/dist/jquery.min.js"></script>
  <script src="assets/vendor/vendor2/bootstrap/dist/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/vendor2/js-cookie/js.cookie.js"></script>
  <script src="assets/vendor/vendor2/jquery.scrollbar/jquery.scrollbar.min.js"></script>
  <script src="assets/vendor/vendor2/jquery-scroll-lock/dist/jquery-scrollLock.min.js"></script>
  <!-- Argon JS -->
  <script src="assets/js/argon.js?v=1.2.0"></script>
</body>

</html>

<?php
}
else{
    echo "<script>alert('You have no access to this page please login as a shop owner....')</script>";
    redirect('forms/login-registration.php');
}
}else{
echo "<script>alert('You have to login first!!!')</script>";
redirect('forms/login-registration.php');
}
?>