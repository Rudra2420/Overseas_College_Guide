<?php
session_start();
include_once('database/dbconn.php');
include_once('database/function.php');

if(isset($_SESSION['IS_LOGIN'])){
    if($_SESSION['IS_LOGIN']=="student"){
        $uid = $_SESSION['UID'];
        $uname = $_SESSION['UNAME'];
        $uemail = $_SESSION['UEMAIL'];
        $uphn   = $_SESSION['UPHN'];
?>

<!DOCTYPE html>
<html lang="en">

<head>
    <script src="assets/vendor/jquery/jquery-3.min.js"></script>

    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Overseas - Colleges</title>

    <!--Vendor CSS Link-->
    <link rel="stylesheet" href="assets/vendor/bootstrap/css/bootstrap.min.css">

    <link href="assets/vendor/icofont/icofont.min.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/animate.css/animate.min.css" rel="stylesheet">
    <link href="assets/vendor/venobox/venobox.css" rel="stylesheet">
    <link href="assets/vendor/owl.carousel/assets/owl.carousel.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <!--Vendor CSS CDN Link-->


    <!--main stylesheet link-->
    <link rel="stylesheet" href="assets/css/style.css">
    <link rel="stylesheet" href="assets/css/footer.css">
    <!--main stylesheet link-->

    <!--Font Awsome Latest Version -->
    <script src="https://kit.fontawesome.com/d65000b73d.js" crossorigin="anonymous"></script>
    <!--Font Awsome Latest Version -->

    <style>
    .scroll {
        height: 300px;
        overflow: auto;
    }
    .vl {
        border: 1px solid #17a2b8!important;
        height: 390px;
        
    }
    .userd{
        margin: 6px;
    }
    .fthov a:hover{  
        color: #17a2b8 !important;;
    }
    </style>

</head>

<body>

    <?php

    include_once('navbar.php');

    ?>

    <!-- End Of Navbar Menu -->
    <!-- End Of Header -->

    <section>
        <main>
            <br>
            <br>
            <br>
            <h3 class="text-center text-light bg-info p-2" style="margin-top:4px;">Overseas Part-Time-Work</h3>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3">
                        <h5>Part-Time-Work Filter</h5>
                        <hr>

                        <form method="get">

                            <h6 class="text-info card-header">Select country</h6>

                            <ul class="list-group mb-3 ">
                                <?php
                                $sql = "SELECT DISTINCT ptw_country FROM part_time_work";
                                $result = mysqli_query($conn, $sql);
                                foreach($result as $row1)
                                {
                            ?>
                                <li class="list-group-item list-item-scroll fthov">
                                    <div class="form-check">
                                        <a href="part_time_work.php?con=<?php echo $row1['ptw_country']; ?> " id="con"
                                            type="button" style="text-decoration: none;color:black;">
                                            <label class="form-check-label check" id="country">
                                                <?php echo $row1['ptw_country']; ?>
                                            </label>
                                        </a>
                                    </div>
                                </li>
                                <?php } ?>
                            </ul>

                            <h6 class="text-info card-header responsive">Select State</h6>
                            <ul class="list-group mb-3 scroll">
                                <?php
                            if(isset($_GET['con']))
                            {
                                $sql = "SELECT DISTINCT ptw_state FROM part_time_work WHERE `ptw_country` = '$_GET[con]' ";
                                $result = mysqli_query($conn, $sql);
                            }else{
                                $sql = "SELECT DISTINCT ptw_state FROM part_time_work ";
                                $result = mysqli_query($conn, $sql);
                            }

                            while ($row2 = mysqli_fetch_assoc($result)) {
                            ?>
                                <li class="list-group-item list-item-scroll fthov">
                                    <div class="form-check">

                                        <a href="part_time_work.php?state=<?php echo $row2['ptw_state']; ?> " id="state"
                                            type="button" style="text-decoration: none;color:black; ">
                                            <label class="form-check-label" id="state">
                                                <?= $row2['ptw_state']; ?>
                                            </label>
                                        </a>
                                    </div>
                                </li>
                                <?php } ?>

                            </ul>

                            <h6 class="text-info card-header responsive">Select City</h6>
                            <ul class="list-group mb-3 scroll">

                            <?php

                            if(isset($_GET['con']) && isset($_GET['state']) )
                            {
                                $sql = "SELECT DISTINCT ptw_city FROM part_time_work WHERE `ptw_country` = '$_GET[con]' AND `ptw_state`='$_GET[state]' ";
                                $result = mysqli_query($conn, $sql);
                            }elseif(isset($_GET['con'])){
                                $sql = "SELECT DISTINCT ptw_city FROM part_time_work WHERE `ptw_country` = '$_GET[con]' ";
                                $result = mysqli_query($conn, $sql);
                            }elseif(isset($_GET['state'])){
                                $sql = "SELECT DISTINCT ptw_city FROM part_time_work WHERE `ptw_state`='$_GET[state]' ";
                                $result = mysqli_query($conn, $sql);
                            }else{
                                $sql = "SELECT DISTINCT ptw_city FROM part_time_work ";
                                $result = mysqli_query($conn, $sql);
                            }

                            while ($row2 = mysqli_fetch_assoc($result)) {
                            ?>
                                <li class="list-group-item list-item-scroll fthov">
                                    <div class="form-check">

                                        <a href="part_time_work.php?city=<?php echo $row2['ptw_city']; ?> " id="city"
                                            type="button" style="text-decoration: none;color:black; ">
                                            <label class="form-check-label" id="city">
                                                <?= $row2['ptw_city']; ?>
                                            </label>
                                        </a>
                                    </div>
                                </li>
                                <?php } ?>

                            </ul>


                        </form>
                    </div>

                    <div class="col-lg-9">
                        <h5>Filtered Posts</h5>
                        <hr>

                        <?php

                            $limit = 3;
                                                                                            
                            if(isset($_GET['page']))
                            {
                                $page = $_GET['page'];
                            }
                            else
                            {
                                $page = 1;
                            }
                            $offset = ($page - 1) * $limit;

                        if(isset($_GET['con']) && isset($_GET['state']) && isset($_GET['city'])){
                       
                            $sqlclg     =   "SELECT * FROM part_time_work JOIN users ON part_time_work.uid = users.uid WHERE `ptw_country`='$_GET[con]' AND `ptw_state`='$_GET[state]' AND `ptw_city`='$_GET[city]' LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        }elseif(isset($_GET['con']) && isset($_GET['state'])){
                            $sqlclg     =   "SELECT * FROM part_time_work JOIN users ON part_time_work.uid = users.uid WHERE `ptw_country`='$_GET[con]' AND `ptw_state`='$_GET[state]' LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        }elseif(isset($_GET['state']) && isset($_GET['city'])){
                            $sqlclg     =   "SELECT * FROM part_time_work JOIN users ON part_time_work.uid = users.uid WHERE `ptw_state`='$_GET[state]' AND `ptw_city`='$_GET[city]' LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        }
                        elseif(isset($_GET['con'])){
                            $sqlclg     =   "SELECT * FROM part_time_work JOIN users ON part_time_work.uid = users.uid WHERE `ptw_country`='$_GET[con]' LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        } elseif(isset($_GET['state'])) {
                            $sqlclg     =   "SELECT * FROM part_time_work JOIN users ON part_time_work.uid = users.uid WHERE `ptw_state`='$_GET[state]' LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        }elseif(isset($_GET['city'])) {
                            $sqlclg     =   "SELECT * FROM part_time_work JOIN users ON part_time_work.uid = users.uid WHERE `ptw_city`='$_GET[city]' ";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        }else{
                            $sqlclg     =   "SELECT * FROM part_time_work JOIN users ON part_time_work.uid = users.uid LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        }
                        ?>

                        <form method="post">

                        <?php
                        while ($row2 = mysqli_fetch_assoc($sqlclgexe)) {
                        ?>
                        <div class="card " style="margin-bottom: 18px;">
                            <div class="row no-gutters">
                                <div class="col-md-3 vl" >
                                    <div style="margin:9px;" class="userd">
                                        <p class="card-header"><b>Owner Name        - </b><?php echo $row2['uname']; ?></p>
                                        <hr>
                                        <p class="card-text" style="margin-top: 15px;"><b>Owner Email         - </b><?php echo $row2['uemail']; ?></p>
                                        <hr>
                                        <p class="card-text"><b>Owner Contact No    - </b><?php echo $row2['umobile']; ?></p>
                                        <hr>
                                        <a href="part_time_work.php?owner=<?php echo $row2['uemail']; ?>&amp;ptwid=<?php echo $row2['ptw_id']; ?>" role="button" name="contactbtn" class="btn btn-info" type="submit" >Contact Owner</a>
                                    </div>
                                </div>
                                <!-- <hr> -->
                                <div class="col-md-9 vl">
                                    <div class="card-body ">
                                            <h5 class="card-title" style="text-transform: uppercase; "><?php echo $row2['ptw_place_name']; ?></h5>            
                                        <hr>
                                        <p class="card-text"><b>City - </b><?php echo $row2['ptw_city']; ?></p>
                                        <p class="card-text"><b>State - </b><?php echo $row2['ptw_state']; ?></p>
                                        <p class="card-text"><b>Country - </b><?php echo $row2['ptw_country']; ?></p>
                                        <p class="card-text"><b>Hours - </b><?php echo $row2['ptw_hours']; ?></p>
                                        <p class="card-text"><b>Salary - </b><?php echo $row2['ptw_salary']; ?></p><hr>
                                        <p class="card-text"><b>Requirement - </b><?php echo $row2['ptw_requirement']; ?></p>
                                        <!-- <hr> -->
                                    </div>
                                </div>
                                
                            </div>
                        </div>

                        <?php
                        }
                        
                        ?>
                        <div class="py-3">
                             <?php
                                 // $sql1 = "SELECT * FROM accommodation";
                                 if(isset($_GET['con']) && isset($_GET['state']) && isset($_GET['city'])){
                                     $sql1     =   "SELECT * FROM part_time_work  WHERE `ptw_country`='$_GET[con]' AND `ptw_state`='$_GET[state]' AND `ptw_city`='$_GET[city]' ";
                                     // $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                                 }elseif(isset($_GET['con']) && isset($_GET['state'])){
                                     $sql1     =   "SELECT * FROM part_time_work  WHERE `ptw_country`='$_GET[con]' AND `ptw_state`='$_GET[state]' ";
                                     // $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                                 }elseif(isset($_GET['state']) && isset($_GET['city'])){
                                     $sql1     =   "SELECT * FROM part_time_work  WHERE `ptw_state`='$_GET[state]' AND `ptw_city`='$_GET[city]' ";
                                     // $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                                 }
                                 elseif(isset($_GET['con'])){
                                     $sql1     =   "SELECT * FROM part_time_work  WHERE `ptw_country`='$_GET[con]'  ";
                                     // $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                                 } elseif(isset($_GET['state'])) {
                                     $sql1     =   "SELECT * FROM part_time_work  WHERE `ptw_state`='$_GET[state]'  ";
                                     // $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                                 }elseif(isset($_GET['city'])) {
                                     $sql1     =   "SELECT * FROM part_time_work  WHERE `ptw_city`='$_GET[city]' ";
                                     // $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                                 }else{
                                     $sql1     =   "SELECT * FROM part_time_work  ";
                                     // $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                                 }
                                 $result1 = mysqli_query($conn, $sql1);
                                 $total_clg = mysqli_num_rows($result1);
                                 $total_page = ceil($total_clg / $limit);
 
                                 echo '<ul class="pagination justify-content-begin mb-0">';
                                 if($page > 1)
                                 {
                                         echo '<li class="page-item">
                                         <a class="page-link" href="part_time_work.php?page='.($page - 1).'">
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
                                             <a class="page-link" href="part_time_work.php?page='.$i.'">'.$i.'<span class="sr-only">(current)</span></a>
                                         </li>';
                                 }
                                 
                                 if($total_page > $page)
                                 {
                                     echo' <li class="page-item">
                                             <a class="page-link" href="part_time_work.php?page='.($page + 1).'">
                                                 <i class="fas fa-angle-right"></i>
                                                 <span class="sr-only">Next</span>
                                             </a>
                                         </li>';
                                 }
                                 echo '</ul>';
                             ?>
                             
                                 <!-- </nav> -->
                             </div>
 
 <?php

                        // $mailfile = "./ptw_mail.php";
                        

                        if(isset($_REQUEST['owner']) && isset($_REQUEST['ptwid']))
                        {
                            $ptwsql = "SELECT * FROM part_time_work WHERE `ptw_id` = '$_REQUEST[ptwid]' ";
                            $exe = mysqli_query($conn,$ptwsql);
                            $fetch = mysqli_fetch_assoc($exe);

                            $place = $fetch['ptw_place_name'];
                            $city = $fetch['ptw_city'];
                            $state = $fetch['ptw_state'];
                            $country = $fetch['ptw_country'];
                            $hours  =   $fetch['ptw_hours'];
                            $salary =   $fetch['ptw_salary'];
                            $req   =   $fetch['ptw_requirement'];

                            
                            $to_email = $_REQUEST['owner'];
                            $sub = "Request For Contact to user for Part-Time-Work";
                            
                            $msg = "<h3>One of our user interesetd in your job requirement</h3><br>"."
                            <h2>User Details :</h2><br>"."
                            <b>User :</b> {$uname}<br>"."
                            <b>email : </b>{$uemail} <br>"."
                            <b>contact : </b>{$uphn} <br><br><br>"."
                            <b>Please contact this user as soon as possible.</b><br><br><br>"." 
                            <h3>User apply for this place of yours</h3>"."
                            <h2>Place Details :</h2><br>"."
                            <b>Place Name :</b> {$place}<br>"."
                            <b>City : </b>{$city} <br>"."
                            <b>State : </b>{$state} <br>"."
                            <b>Country : </b>{$country} <br>"."
                            <b>Hours : </b>{$hours} <br>"."
                            <b>Salary : </b>{$salary} <br>"."
                            <b>Requirement : </b>{$req} <br>";

                            // $msg = file_get_contents($mailfile);

                            $headers = 'From: overseas121555@gmail.com'."\r\n";
                            $headers .='MIME-Version: 1.0'."\r\n";
                            $headers .='Content-type: text/html; charset=UTF-8'."\r\n";
                        
                            if(mail($to_email, $sub, $msg, $headers))
                            {
                                echo "<script>alert('Your requesting mail is sent to the owner he/she will contact you soon...!')</script>";   
                            }
                            else{
                                echo "<script>alert('Your requesting mail is not sent try again later!!!')</script>";   
                            }
                        }

                        ?>
                        </form>
                    </div>
                </div>
            </div>
        </main>
    </section>


    <!-- FOOTER -->

    <?php

    include_once('footer.php');

    ?>

    <!-- FOOTER -->

    <script src="assets/vendor/slick-master/slick/slick.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/venobox/venobox.min.js"></script>
    <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>



</body>

</html>

<?php

    }
    else{
        echo "<script>alert('You have no access to this page please login as a student....')</script>";
        redirect('forms/login-registration.php');
    }
}else{
    echo "<script>alert('You have to login first!!!')</script>";
    redirect('forms/login-registration.php');
}

?>