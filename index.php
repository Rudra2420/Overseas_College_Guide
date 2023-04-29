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
    <title>Overseas</title>

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

</head>

<body>

    <?php

        include_once('navbar.php');

    ?>

    <!-- End Of Navbar Menu -->
    <!-- End Of Header -->


    <!--slider bar-->
    <section>
        <div id="carouselExampleCaptions" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#carouselExampleCaptions" data-slide-to="0" class="active"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="1"></li>
                <li data-target="#carouselExampleCaptions" data-slide-to="2"></li>

            </ol>
            <div class="carousel-inner">
                <div class="carousel-item active" data-interval="10000">
                    <img src="assets/img/bg1.jpg" class="d-block w-100 h-100" alt="">
                    <!-- <div class="carousel-caption d-none d-md-block">
                        <h2>Welcome To Cafe House</h2>
                        <p>Start A Day With Coffee</p>
                    </div> -->
                </div>
                <div class="carousel-item">
                    <img src="assets/img/bg2.jpg" class="d-block w-100 h-100" alt="">
                    <!-- <div class="carousel-caption d-none d-md-block">
                        <h2>Black Coffee Benefits</h2>
                        <p>Black coffee also contains antioxidants, which help in the weight loss process</p>
                    </div> -->
                </div>
                <div class="carousel-item">
                    <img src="assets/img/bg3.jpg" class="d-block w-100 h-100" alt="">
                    <!-- <div class="carousel-caption d-none d-md-block">
                        <h2>New Day With Coffee Roasters</h2>
                        <p>Coffee is a beverage that puts one to sleep when not drank</p>
                    </div> -->
                </div>
            </div>
            <a class="carousel-control-prev" href="#carouselExampleCaptions" role="button" data-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="carousel-control-next" href="#carouselExampleCaptions" role="button" data-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
    </section>
    <!--End Of Slider Bar-->



    <!--Main section-->
    <main>

        <!--section V1-->

        <section class="section-info-v1">
            <div class="container container-v2">
                <div class="d-flex justify-content-center">

                    <div class="title-info text-center">
                        <h2 class="title_heading mb-0" style="color: #17a2b8 !important;">TOP FEATURED<br> COLLEGES</h2>
                    </div>

                </div>

                <!-- <p class="content_info">Coffee iѕ rich in antioxidant substances called polyphenol: A series оf
                    chemicals called catechins; EGCG (epigallocatechin gallate) iѕ the mоѕt powerful.Antioxidants hаvе
                    thе ability tо mop uр free radicals capable оf causing blood clots (which соuld lead tо thrombosis)
                    аnd plaque formations оn innеr walls оf arteries leading tо cardiovascular disease.
                </p> -->

            </div>
        </section>
        <!--End Of Section V1-->

        <!--Coffee Types Gallery Section-->

        <section id="coffee-types-gallery" class="coffee-types-gallery">

            <div class="coffee-types-container">
                <div class="box">
                    <div class="imgbox">
                        <img src="assets/img/c2.jpg">
                        <div class="details">
                            <div class="content">
                                <h2>Oxford</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="imgbox">
                        <img src="assets/img/c4.jpg">
                        <div class="details">
                            <div class="content">
                                <h2>Stanford</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="imgbox">
                        <img src="assets/img/c5.jpg">
                        <div class="details">
                            <div class="content">
                                <h2>Cambridge</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="imgbox">
                        <img src="assets/img/cambridge.jpg">
                        <div class="details">
                            <div class="content">
                                <h2>California Institute of Technology</h2>
                            </div>
                        </div>
                    </div>

                </div>

                <div class="box">
                    <div class="imgbox">
                        <img src="assets/img/Stanford.jpg">
                        <div class="details">
                            <div class="content">
                                <h2>Massachusetts Institute of Technology</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="imgbox">
                        <img src="assets/img/oxford.jpg">
                        <div class="details">
                            <div class="content">
                                <h2>Harvard University</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="imgbox">
                        <img src="assets/img/cambridge.jpg">
                        <div class="details">
                            <div class="content">
                                <h2>Princeton University</h2>
                            </div>
                        </div>
                    </div>
                </div>

                <div class="box">
                    <div class="imgbox">
                        <img src="assets/img/c4.jpg">
                        <div class="details">
                            <div class="content">
                                <h2>Imperial College London</h2>
                            </div>
                        </div>
                    </div>
                </div>

            </div>

        </section>

        <!--End Of Coffee Types Gallery Section-->


        <!-- ======= Events Section ======= -->
        <section id="events" class="events">
            <div class="container">

                <div class="event-section-title">
                    <h2>Find <span> Country</span> That is <span> Best </span> For Your <span>Future Life</span></h2>
                </div>

                <div class="owl-carousel events-carousel">

                    <div class="row event-item">
                        <div class="col-lg-6">
                            <img src="assets/img/p1.jpg" class="img-fluid" alt="">
                        </div>
                         <div class="col-lg-6 pt-4 pt-lg-0 content">
                           <h3>5 good reasons to move to Canada</h3>
                            
                            <ul>
                                <li><i class="icofont-check-circled"></i> <b>Free universal healthcare:</b> Canadians and permanent residents do not have to worry about huge medical bills.</li>
                                <li><i class="icofont-check-circled"></i><b> Better work-life balance:</b> Workers in Canada enjoy shorter hours. A Gallup article suggested that full time India workers end up working an average of 47 hours a week, whereas in Canada, the standard number of weekly work hours is 40 hours a week.</li>
                                <li><i class="icofont-check-circled"></i> <b>Paid statutory holidays:</b> In Canada, workers enjoy paid statutory holidays, such as Canada Day. In the U.S. & India, however, employers are not required to pay employees for time not worked.</li>
                                <li><i class="icofont-check-circled"></i> <b>Paid maternity leave:</b> The U.S. provides just 12 weeks of unpaid parental leave for new parents. Canadian mothers can enjoy 35 to 61 weeks off, and can also receive payment through Canada’s Employment Insurance (EI).</li>
                                <li><i class="icofont-check-circled"></i><b>Canada is more accepting of migrants:</b> According to a recent global survey, Canada is the world’s most accepting country for migrants.</li>
                            </ul>
                        </div> 
                    </div>

                    <div class="row event-item">
                        <div class="col-lg-6">
                            <img src="assets/img/p2.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-6 pt-4 pt-lg-0 content">
                        <h3>5 good reasons to move to USA</h3>
                            
                            <ul>
                                <li><i class="icofont-check-circled"></i><b>Education –</b> The standard of schooling is so high in America, you can be sure your child will receive a good education and qualifications recognized around the world. </li>
                                <li><i class="icofont-check-circled"></i><b> Health –</b>This standard of care does come at a cost and many people moving to the States worry about the cost of healthcare. In some cases, however, employers offer generous medical and dental care policies as part of your salary package depending on the job. </li>
                                <li><i class="icofont-check-circled"></i> <b>Career Opportunities –</b> As of May 2017, the unemployment rate in America was only at 4.3 percent. The U.S. also regularly ranks in the top five countries in the world for workforce productivity.</li>
                                <li><i class="icofont-check-circled"></i><b>Living Space </b>– Americans on average have over twice the amount of living space per residency and per person as European Union residents. This also means that land prices and property prices are more affordable</li>
                                <li><i class="icofont-check-circled"></i><b>Weather</b>America’s vast size means you’ll find a climate to suit your needs. From the year round sunshine of California to the ice bound winters of Alaska, the USA has it all.</li>
                            </ul>
                        </div>
                    </div>

                    <div class="row event-item">
                        <div class="col-lg-6">
                            <img src="assets/img/p3.jpg" class="img-fluid" alt="">
                        </div>
                        <div class="col-lg-6 pt-4 pt-lg-0 content">
                        <h3>4 good reasons to move to UK</h3>
                            
                            <ul>
                                <li><i class="icofont-check-circled"></i><b>Education</b>The United Kingdom is a place where major funding is directed to constantly developing and maintaining the highest standards of education. </li>
                                <li><i class="icofont-check-circled"></i><b>Employment Opportunity</b>Finding a job here was never as easy as it is nowadays. Namely, with metropolitan centers scattered across the UK, the demand in various business positions never seems to decline.</li>
                                <li><i class="icofont-check-circled"></i><b>Healthcare</b>Free healthcare is something that appertains not only to the residents with citizenship of one of the countries under the crown but also for the ex-pats residing in the UK at the moment.</li>
                                <li><i class="icofont-check-circled"></i>COST OF LIVING IS EXPENSIVE, YES…BUT WAGES ARE HIGHER!True enough, London is one of the most expensive cities to live in, in the world, but given than you are a hard working employee with a good job then you are in for an amazing life!</li>
								
                            </ul>

                        </div>
                    </div>

                </div>

            </div>
        </section><!-- End Events Section -->

    </main>
    <!--End Of Main section-->


    <?php

    include_once('footer.php');

    ?>

    <script src="assets/vendor/slick-master/slick/slick.min.js"></script>
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/jquery.easing/jquery.easing.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/jquery-sticky/jquery.sticky.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/venobox/venobox.min.js"></script>
    <script src="assets/vendor/owl.carousel/owl.carousel.min.js"></script>

    <script src="assets/js/events.js"></script>

</body>

</html>