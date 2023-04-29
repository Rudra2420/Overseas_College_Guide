<?php
session_start();
include_once('database/dbconn.php');
include_once('database/function.php');
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

    a:hover {
        color: darkorange !important;
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
            <h3 class="text-center text-light bg-info p-2" style="margin-top:4px;">Overseas Colleges</h3>
            <div class="container-fluid">
                <div class="row">
                    <div class="col-lg-3">
                        <h5>College Filter</h5>
                        <hr>

                        <form method="get">

                            <h6 class="text-info card-header">Select country</h6>

                            <ul class="list-group mb-3 ">
                                <?php
                                $sql = "SELECT DISTINCT clg_country FROM colleges";
                                $result = mysqli_query($conn, $sql);
                                foreach($result as $row1)
                                {
                            ?>
                                <li class="list-group-item list-item-scroll">
                                    <div class="form-check">
                                        <a href="colleges.php?con=<?php echo $row1['clg_country']; ?> " id="con"
                                            type="button" style="text-decoration: none;color:black;">
                                            <label class="form-check-label check" id="country">
                                                <?php echo $row1['clg_country']; ?>
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
                                $sql = "SELECT DISTINCT clg_state FROM colleges WHERE `clg_country` = '$_GET[con]' ";
                                $result = mysqli_query($conn, $sql);
                            }else{
                                $sql = "SELECT DISTINCT clg_state FROM colleges ";
                                $result = mysqli_query($conn, $sql);
                            }

                            while ($row2 = mysqli_fetch_assoc($result)) {
                            ?>
                                <li class="list-group-item list-item-scroll">
                                    <div class="form-check">

                                        <a href="colleges.php?state=<?php echo $row2['clg_state']; ?> " id="sta"
                                            type="button" style="text-decoration: none;color:black; ">
                                            <label class="form-check-label" id="state">
                                                <?= $row2['clg_state']; ?>
                                            </label>
                                        </a>
                                    </div>
                                </li>
                                <?php } ?>

                            </ul>
                        </form>
                    </div>

                    <div class="col-lg-9">
                        <h5>Filtered Colleges</h5>
                        <hr>

                        <?php

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

                        if(isset($_GET['con']) && isset($_GET['state'])){
                       
                            $sqlclg     =   "SELECT * FROM colleges WHERE `clg_country`='$_GET[con]' AND `clg_state`='$_GET[state]' LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        } elseif(isset($_GET['con'])){
                            $sqlclg     =   "SELECT * FROM colleges WHERE `clg_country`='$_GET[con]' LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        } elseif(isset($_GET['state'])) {
                            $sqlclg     =   "SELECT * FROM colleges WHERE `clg_state`='$_GET[state]' LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        } else{
                            $sqlclg     =   "SELECT * FROM colleges LIMIT {$offset},{$limit}";
                            $sqlclgexe  =   mysqli_query($conn, $sqlclg);
                        }


                        while ($row2 = mysqli_fetch_assoc($sqlclgexe)) {
                        ?>
                        <div class="card " style="margin-bottom: 18px;">
                            <div class="row no-gutters">
                                <div class="col-md-3">
                                    <img src="<?php echo $row2['clg_img'] ?>" style="height: 240px; margin:6px;"
                                        class="card-img" alt="...">
                                </div>
                                <div class="col-md-9">
                                    <div class="card-body ">
                                        <a href="<?php echo $row2['clg_website']; ?> "
                                            style="text-decoration:none; color:black;">
                                            <h5 class="card-title" style="text-transform: uppercase; ">
                                                <?php echo $row2['clg_name']; ?></h5>
                                        </a>
                                        <hr>
                                        <h6 class="card-text"><b>Intact - </b><?php echo $row2['clg_intact']; ?></h6>

                                        <p class="card-text"><b>Courses - </b><?php echo $row2['course_names']; ?></p>
                                        <p class="card-text"><b>Exams Excepted - </b><?php echo $row2['clg_exams']; ?>
                                        </p>
                                        <!-- <hr> -->
                                        <a href="<?php echo $row2['clg_brochure']; ?> " class="btn btn-primary"
                                            download>Download Brochure</a>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <?php
                        }
                        if(isset($_GET['con']) && isset($_GET['state'])){
                       
                            $sql1     =   "SELECT * FROM colleges WHERE `clg_country`='$_GET[con]' AND `clg_state`='$_GET[state]' ";
                        } elseif(isset($_GET['con'])){
                            $sql1     =   "SELECT * FROM colleges WHERE `clg_country`='$_GET[con]' ";
               
                        } elseif(isset($_GET['state'])) {
                            $sql1     =   "SELECT * FROM colleges WHERE `clg_state`='$_GET[state]' ";
        
                        } else{
                            $sql1     =   "SELECT * FROM colleges ";
                            
                        }
                        
                        $result1 = mysqli_query($conn, $sql1);
                        $total_clg = mysqli_num_rows($result1);
                        $total_page = ceil($total_clg / $limit);

                        echo '<ul class="pagination justify-content-begin mb-0">';
                        if($page > 1)
                        {
                                echo '<li class="page-item">
                                <a class="page-link" href="colleges.php?page='.($page - 1).'">
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
                                    <a class="page-link" href="colleges.php?page='.$i.'">'.$i.'<span class="sr-only">(current)</span></a>
                                </li>';
                        }
                        
                        if($total_page > $page)
                        {
                            echo' <li class="page-item">
                                    <a class="page-link" href="colleges.php?page='.($page + 1).'">
                                        <i class="fas fa-angle-right"></i>
                                        <span class="sr-only">Next</span>
                                    </a>
                                </li>';
                        }
                        echo '</ul>';
                    ?>
                        <br>
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