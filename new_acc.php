<?php
session_start();
include_once('database/dbconn.php');
include_once('database/function.php');
// if ($_SESSION['overseas_admin']) {
  // echo $_SESSION['overseas_admin'];
if(isset($_SESSION['IS_LOGIN'])){
    if($_SESSION['IS_LOGIN']=="house owner"){
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
    <!-- <meta name="author" content="Creative Tim"> -->
    <title>Overseas Dashboard - Property</title>
    <!-- Favicon -->
    <link rel="icon" href="assets/img/logo.png" type="image/png">
    <!-- Fonts -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700">
    <!-- Icons -->
    <link rel="stylesheet" href="assets/vendor/vendor2/nucleo/css/nucleo.css" type="text/css">
    <link rel="stylesheet" href="assets/vendor/vendor2/@fortawesome/fontawesome-free/css/all.min.css" type="text/css">
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
          <a class="navbar-brand" href="index.php">
            <img src="assets/img/logo.png" style="height: 100px; width:60px;" class="navbar-brand-img" alt="...">
          </a>
        </div>
        <div class="navbar-inner">
                <!-- Collapse -->
                <div class="collapse navbar-collapse" id="sidenav-collapse-main">
                    <!-- Nav items -->
                    <ul class="navbar-nav">
                        <li class="nav-item">
                            <a class="nav-link" href="house_owner_dashboard.php">
                                <i class="ni ni-tv-2 text-orange"></i>
                                <span class="nav-link-text">Dashboard</span>
                            </a>
                        </li>

                        <!-- Divider -->
                        <hr class="my-3">
                        <li class="nav-item">
                            <a class="nav-link active" href="new_acc.php">
                                <i class="ni ni-shop text-orange"></i>
                                <span class="nav-link-text">New Property</span>
                            </a>
                        </li>

                        <!-- Divider -->
                        <hr class="my-3">
                        <li class="nav-item">
                            <a class="nav-link" href="manage_acc.php">
                                <i class="ni ni-pin-3 text-orange"></i>
                                <span class="nav-link-text">Edit Properties</span>
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
                      <i class="ni ni-single-02 text-orange"></i>
                    </span>
                    <div class="media-body  ml-2  d-none d-lg-block">
                      <span class="mb-0 text-sm  font-weight-bold">Owner</span>
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


      <!-- Header -->
      <!-- Header -->
      <div class="header pb-6" style="background: #5eaaa8">
        <div class="container-fluid">
          <div class="header-body">
            <div class="row align-items-center py-4">
              <div class="col-lg-6 col-7">
                <h6 class="h2 text-white d-inline-block mb-0">Default</h6>
                <nav aria-label="breadcrumb" class="d-none d-md-inline-block ml-md-4">
                  <ol class="breadcrumb breadcrumb-links breadcrumb-dark">
                    <li class="breadcrumb-item"><a href="house_owner_dashbaord.php"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="house_owner_dashbaord.php">Dashboards</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Insert Property</li>
                  </ol>
                </nav>
              </div>
              <!-- <div class="col-lg-6 col-5 text-right">
                <a href="#" class="btn btn-sm btn-neutral">New</a>
              </div> -->
            </div>
          </div>
        </div>
      </div>


    <!--Page Content  -->
    <form method="post" enctype="multipart/form-data">
      <div class="container-fluid mt--6">
        <div class="row">
        
        <div class="col-xl-12 order-xl-1">
          <div class="card">
            <div class="card-header">
              <div class="row align-items-center">
                <div class="col-8">
                  <h3 class="mb-0">Insert Property</h3>
                </div>
                <div class="col-4 text-right">
                  <button type="submit" name="insert" class="btn btn-sm text-white" style="background: #eb5e0b"> Insert </button>
                </div>
              </div>
            </div>


            <div class="card-body"> 
                <h6 class="heading-small text-muted mb-4">Location information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-city-name">City</label>
                        <input type="text" name="city" id="input-email" class="form-control" >
                      </div>
                    </div>
                  </div>

                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-state-name">State</label>
                        <input type="text" name="state" id="input-last-name" class="form-control">
                      </div>
                    </div>
                  

                
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-country-name">Country</label>
                        <input type="text" name="coname" id="input-last-name" class="form-control">
                      </div>
                    </div>
                    </div>
                 
                </div>
                <hr class="my-4" />

                <!-- Address -->
                <h6 class="heading-small text-muted mb-4">Property information</h6>
                <div class="pl-lg-4">
                  <div class="row">
                    <div class="col-lg-6">
                      <div class="form-group">
                        <label class="form-control-label" for="input-rent">Rent</label>
                        <input type="text" id="input-city" name="rent" class="form-control">
                      </div>
                    </div>
                    <div class="col-lg-6">
                      
                    </div>
                    <div class="col-lg-12">
                      <div class="form-group">
                        <label class="form-control-label" for="input-details">Property Details</label>
                        <input type="text" id="input-first-name" name="details" class="form-control">
                      </div>
                    </div>
                  
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
                                    &copy; 2021 <a href="house_owner_dashboard.php" class="font-weight-bold ml-1"
                                        target="_blank">Overseas</a>
                                </div>
                            </div>
                        </div>
                    </footer>
                </div>
            </div>
        </div>

<?php
        if(isset($_POST['insert']))
                {  
                    
                    $city = $_POST['city'];
                    $state = $_POST['state'];
                    $coname = $_POST['coname'];
                    $rent = $_POST['rent'];
                    $details = $_POST['details'];
                    
                    
                        $sql = "INSERT INTO accommodation (acc_city, acc_state, acc_country, acc_rent, acc_other_info, uid) VALUES ('$city', '$state', 
                        '$coname', '$rent', '$details','$uid');";
                        $upexe = mysqli_query($conn, $sql);
                        if($upexe)
                        {
                            echo "<script>alert('Record Inserted...');</script>";
                            redirect('house_owner_dashboard.php');
                        }
                        else{
                            
                            echo"<script>alert('Record Not Inserted...');</script>";
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
        <!-- Optional JS -->
        <script src="assets/vendor/vendor2/chart.js/dist/Chart.min.js"></script>
        <script src="assets/vendor/vendor2/chart.js/dist/Chart.extension.js"></script>
        <!-- Argon JS -->
        <script src="assets/js/argon.js?v=1.2.0"></script>

  </body>

  </html>
<?php
}
else{
    echo "<script>alert('You have no access to this page please login as a house owner....')</script>";
    redirect('forms/login-registration.php');
}
}else{
echo "<script>alert('You have to login first!!!')</script>";
redirect('forms/login-registration.php');
}
?>