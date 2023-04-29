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
    <!-- <meta name="author" content="Creative Tim"> -->
    <title>Overseas Dashboard - Owner - Users</title>
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
                            <a class="nav-link active" href="manage_ptw.php">
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
                    <li class="breadcrumb-item"><a href="ptw_dashboard.php"><i class="fas fa-home"></i></a></li>
                    <li class="breadcrumb-item"><a href="ptw_dashboard.php">Dashboards</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Workplace</li>
                  </ol>
                </nav>
              </div>
            </div>
          </div>
        </div>
      </div>



        <!-- Page content -->
        <div class="container-fluid mt--6">
            <div class="row">
                <div class="col-xl-12">
                    <div class="card">
                        <div class="card-header border-0">
                            <div class="row align-items-center">
                                <div class="col">
                                    <h3 class="mb-0">Part_time_Work</h3>
                                </div>
                                <div class="col text-right">
                                    <a href="new_ptw.php" class="btn btn-sm text-white" style="background: #eb5e0b">New</a>
                                </div>
                            </div>
                        </div>
                        <div class="table-responsive">
                            <!-- Projects table -->
                            <table class="table align-items-begin table-flush">
                                <thead class="thead-light">
                                    <tr>
                                        <th scope="col">Id</th>
                                        <!-- <th scope="col"> img</th> -->
                                        <!-- <th scope="col"> Type</th> -->
                                        <th scope="col"> Workpplace Name</th>
                                        <th scope="col"> City</th>
                                        <th scope="col"> State</th>
                                        <th scope="col"> Country</th>
                                        <th scope="col"> Hours</th>
                                        <th scope="col"> Salary</th>
                                        <th scope="col"> Requriment</th>
                                        <th scope="col">Update</th>
                                        <th scope="col">Delete</th>

                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    //   $count2 = 1;
                                    $limit = 10;
                                    
                                    if(isset($_GET['page']))
                                    {
                                        $page = $_GET['page'];
                                    }
                                    else
                                    {
                                        $page = 1;
                                    }
                                    $offset = ($page - 1) * $limit;
                                    
                                      $clgqry = "SELECT * FROM part_time_work WHERE uid='$uid' LIMIT {$offset},{$limit}";
                                      $clgexeqry = mysqli_query($conn, $clgqry);
                                      
                                      while ($row2 = mysqli_fetch_assoc($clgexeqry)) {
                                      ?>
                                    <tr>
                                        
                                        <th scope="row"><?php echo $row2['ptw_id']; ?></th>
                                        <th scope="row"><?php echo $row2['ptw_place_name'];  ?></th>
                                        <th scope="row"><?php echo $row2['ptw_city'];  ?></th>
                                        
                                        <td><?php echo $row2['ptw_state'];  ?></td>
                                        <td><?php echo $row2['ptw_country'];  ?></td>
                                        <td><?php echo $row2['ptw_hours'];  ?></td>
                                        <td><?php echo $row2['ptw_salary'];  ?></td>
                                        <td><?php echo $row2['ptw_requirement'];  ?></td>
                                        <td>
                                                <a href="edit_ptw.php?ptwid=<?= $row2['ptw_id'] ?>" class="btn btn-sm text-white" style="background: #eb5e0b" >Update</a>
                                        </td>
                                        <td>
                                                <a href="delete_ptw.php?ptwid=<?= $row2['ptw_id'] ?>" class="btn btn-sm text-white" style="background: #eb5e0b" onclick="return confirm('Are you sure want to delete this college?');" >Delete</a>                                          
                                        </td>
                                    </tr>
                                    <?php

                                }
                                
                              ?>

                        </tbody>
                    </table>
                                
                            <!-- Card footer -->
                            <div class="card-footer py-3">
                            <nav aria-label=".......">
                             

                            <?php
                                $sql1 = "SELECT * FROM part_time_work WHERE uid='$uid'";
                                $result1 = mysqli_query($conn, $sql1);
                                $total_clg = mysqli_num_rows($result1);
                                $total_page = ceil($total_clg / $limit);

                                echo '<ul class="pagination justify-content-begin mb-0">';
                                if($page > 1)
                                {
                                        echo '<li class="page-item">
                                        <a class="page-link" href="manageptw.php?page='.($page - 1).'">
                                            <i class="fas fa-angle-left"></i>
                                            <span class="sr-only">Previous</span>
                                        </a>
                                        </li>';
                                
                                }

                                for($i = 1; $i <= $total_page; $i++)
                                {
                                    if($i == $page)
                                    {
                                        $active = "active";
                                    }
                                    else
                                    {
                                        $active="";
                                    }

                                    echo '<li class="page-item '.$active.'">
                                            <a class="page-link" href="manageptw.php?page='.$i.'">'.$i.'<span class="sr-only">(current)</span></a>
                                        </li>';
                                }
                                
                                if($total_page > $page)
                                {
                                    echo' <li class="page-item">
                                            <a class="page-link" href="manageptw.php?page='.($page + 1).'">
                                                <i class="fas fa-angle-right"></i>
                                                <span class="sr-only">Next</span>
                                            </a>
                                        </li>';
                                }
                                echo '</ul>';
                            ?>
                            
                                </nav>
                            </div>
                        </div>
                    </div>

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
    echo "<script>alert('You have no access to this page please login as a shop owner....')</script>";
    redirect('forms/login-registration.php');
}
}else{
echo "<script>alert('You have to login first!!!')</script>";
redirect('forms/login-registration.php');
}
?>