<!DOCTYPE html>
<html lang="en">
    <base href="<?php echo base_url(); ?>">
    <?php
    $settings = $this->frontend_model->getSettings();
    $title = explode(' ', $settings->title);
    $site_name = $this->db->get('website_settings')->row()->title;
    ?>
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
        <link rel="icon" href="uploads/pyramid_dental_logo.png" /> <!-- Upload image to upload folder-->
        <title><?php echo $site_name; ?></title>

        <!-- Bootstrap Core CSS -->
        <link rel="stylesheet" href="<?php echo site_url('front/site_assets/vendor/bootstrap/css/bootstrap.min.css'); ?>" />
        <!-- Font-awesome -->
        <link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" />

        <!-- jQuery Plugins -->
        <link rel="stylesheet" href="<?php echo site_url('front/site_assets/vendor/owl-carousel/owl.carousel.min.css'); ?>" />
        <link rel="stylesheet" href="<?php echo site_url('front/site_assets/vendor/magnific-popup/magnific-popup.css'); ?>" />
        <link rel="stylesheet" href="<?php echo site_url('common/assets/bootstrap-datepicker/css/bootstrap-datepicker.css'); ?>" />
        <link rel="stylesheet" type="text/css" href="<?php echo site_url('common/assets/bootstrap-timepicker/compiled/timepicker.css'); ?>">
        <!--<link rel="stylesheet" href="<?php echo site_url('front/css/style.css'); ?>">-->
        <link rel="stylesheet" href="<?php echo site_url('front/css/responsive.css'); ?>">

        <link rel="stylesheet" href="<?php echo site_url('front/assets/revolution_slider/css/rs-style.css'); ?>" media="screen">
        <link rel="stylesheet" href="<?php echo site_url('front/assets/revolution_slider/rs-plugin/css/settings.css'); ?>" media="screen">
        <!-- CSS Stylesheet -->
        <link href="<?php echo site_url('front/site_assets/css/style.css'); ?>" rel="stylesheet" />
        <link href="<?php echo site_url('front/site_assets/css/responsive.css') ?>" rel="stylesheet" />
        <link rel="stylesheet" href="<?php echo site_url('common/toastr/toastr.css'); ?>" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.theme.default.min.css"/>
    </head>
    <style>
        
        .topbar-texts, .footer-description {
            font-family: "Roboto", sans-serif !important;
            font-size: 15px !important;
        }

        .buttonFront {
            background-color: #CE922D !important ;
        }


    </style>
    <body onload="myFunction()">
        <!-- <div id="loading"></div> -->

        <!---------------- Start Main Navbar ---------------->
        <div id="header_menu_top" class="bg-dark text-white pt-3">
            <div class="container">
                <div class="row">
                    <div class="col-md-6">
                        <p class="topbar-texts"><?php echo $settings->address; ?></p>
                    </div>
                    <div class="col-md-4">
                        <p class="topbar-texts float-right ml-3">
                            <i class="fa fa-phone" aria-hidden="true"></i> &nbsp;
                            <span><?php echo $settings->phone; ?></span>
                        </p>
                    </div>
                    <div class="col-md-2">
                        <a href="<?php echo site_url('auth/login') ?>" class="float-right"><i class="fa fa-sign-in" aria-hidden="true"></i> &nbsp; <span>Sign In</span></a>
                    </div>
                </div>
            </div>
        </div>
        <div id="header">
            <div class="navbar-wrap">
                <nav id="navbar_top" class="navbar navbar-expand-lg navbar-light custom-nav">
                    <div class="container">
                        <a class="navbar-brand " href="frontend#">
                            <?php
                            if (!empty($settings->logo)) {
                                if (file_exists($settings->logo)) {
                                    echo '<img alt="logo" class="logo img-fluid" width="200" src=' . $settings->logo . '>';
                                } else {
                                    echo $title[0] . '<span> ' . $title[1] . '</span>';
                                }
                            } else {
                                echo $title[0] . '<span> ' . $title[1] . '</span>';
                            }
                            ?>
                        </a>
                        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                            <span class="navbar-toggler-icon"></span>
                        </button>

                        <div class="collapse navbar-collapse" id="navbarSupportedContent">
                            <ul class="navbar-nav ml-auto">
                                <li class="nav-item ml-3">
                                    <a class="nav-link" href="frontend#"><?php echo lang('home'); ?></a>
                                </li>
                                <li class="nav-item ml-3">
                                    <a class="nav-link" href="frontend#why_choose_us"><?php echo lang('book_an_appointment'); ?></a>
                                </li>
                                <li class="nav-item ml-3">
                                    <a class="nav-link" href="frontend#featured_services"><?php echo lang('services'); ?></a>
                                </li>
                                <li class="nav-item ml-3">
                                    <a class="nav-link" href="frontend#doctor"><?php echo lang('doctors'); ?></a>
                                </li>
                                <li class="nav-item ml-3">
                                    <a class="nav-link" href="frontend#portfolio"><?php echo lang('portfolio'); ?></a>
                                </li>
                            </ul>
                        </div>
                    </div>
                </nav>
            </div>

            <div class="owl-carousel headerSlider">
                <?php foreach ($slides as $slide) { ?>
                    <div style="background-image: url('<?php echo site_url($slide->img_url); ?>'); background-size: cover; background-position: center;">
                        <div class="jumbotron jumbotron-fluid text-white">
                            <div class="container">
                                <h1><?php echo $slide->text1; ?></h1>
                                <h4><?php echo $slide->text2; ?></h4>
                                <p class="py-4"><?php echo $slide->text3; ?></p>
                                <!-- <a type="button" href="#why_choose_us" class="btn btn-light buttonFront">Book an Appointment</a> -->
                                <a type="button" data-toggle="modal" data-target="#exampleModal" href="#" class="btn btn-light buttonFront">Book An Appointment</a>
                            </div>
                        </div>
                    </div>
                <?php } ?>
            </div>

            <!--<?php if (count($slides) > 1) {
                    ?>
                                    <style>
                                        #header .owl-nav,#header .owl-dots {
                                                display: block;
                                            }
                                    </style>
            <?php }
            ?>-->



            <!--<div class="jumbotron jumbotron-fluid text-white mt-3">
                <div class="container">
                    <h1><?php echo $slide->text1; ?></h1>
                    <h4><?php echo $slide->text2; ?></h4>
                    <p class="py-4">
            <?php echo $slide->text3; ?>
                    </p>
                    <h1>The best doctors in <b>Medicine!</b></h1>
                    <h4>in the world of modern medicine</h4>
                    <p class="py-4">
                        Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation
                    </p>
                    <a type="button" href="#why_choose_us" class="btn btn-light">Get Started Now</a>
                </div>
            </div> -->       
        </div>
        <!---------------- End Main Navbar ---------------->

        <!---------------- Start Why Choose Us ---------------->
        <div id="why_choose_us" class="my-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 text-center">
                        <?php
                        $message = $this->session->flashdata('feedback');
                        if (!empty($message)) {
                            ?>
                            <div class="flashmessage col-md-12" style="text-align: center;
                                 color: green;
                                 font-size: 23px;
                                 font-weight: 500;"> <?php echo $message; ?></div>

                        <?php } ?>
                    </div>
                    <div class="col-md-6 d-flex align-items-center mb-4">
                        <div>
                            <h6><?php echo $settings->appointment_subtitle; ?></h6>
                            <h4><?php echo $settings->appointment_title; ?></h4>
                            <p>
                                <?php echo $settings->appointment_description; ?>
                            </p>
                            <a type="button" data-toggle="modal" data-target="#exampleModal" href="#" class="btn btn-light buttonFront">Book An Appointment</a>
                            <!-- Modal -->
                            <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content bg-success text-white">
                                        <div class="modal-header" style="background: #009988 !important;">
                                            <h5 class="modal-title" id="exampleModalLabel">
                                                <?php echo lang('book_an_appointment'); ?>
                                            </h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body" style="border: transparent !important;">
                                            <form action="<?php echo site_url('frontend/addNew'); ?>" method="post">
                                                <form action="frontend/addNew" method="post">
                                                    <label for="exampleInputEmail1"> <?php echo lang('patient'); ?></label>
                                                    <select class="form-control m-bot15 js-example-basic-single pos_select" id="pos_select" name="patient" value=''> 
                                                        <option value=" ">Select .....</option>
                                                        <option value="patient_id" style="color: #41cac0 !important;"><?php echo lang('patient_id'); ?></option>
                                                        <option value="add_new" style="color: #41cac0 !important;"><?php echo lang('add_new'); ?></option>
                                                    </select>

                                                    <div class="pos_client_id clearfix">

                                                        <div class="col-md-12 payment pad_bot pull-right">
                                                            <div class="col-md-3 payment_label"> 
                                                                <label for="exampleInputEmail1"> <?php echo lang('patient'); ?> <?php echo lang('id'); ?></label>
                                                            </div>
                                                            <div class="col-md-9"> 
                                                                <input type="text" class="form-control pay_in" name="patient_id" placeholder="">
                                                            </div>
                                                        </div>

                                                    </div>

                                                    <div class="pos_client clearfix">

                                                        <label for=""><?php echo lang('patient'); ?> <?php echo lang('name'); ?></label>
                                                        <input type="text" class="form-control" name="p_name">
                                                        <label for=""><?php echo lang('patient'); ?> <?php echo lang('email'); ?></label>
                                                        <input type="email" class="form-control" name="p_email">
                                                        <label for=""><?php echo lang('patient'); ?> <?php echo lang('phone'); ?></label>
                                                        <input type="text" class="form-control" name="p_phone">
                                                        <!-- <label for="">HOSPITAL PHONE</label>
                                                         <input type="text" class="form-control">-->
                                                        <label for=""><?php echo lang('patient'); ?> <?php echo lang('gender'); ?></label>
                                                        <select class="form-control" name="p_gender">
                                                            <option value="Male" <?php
                                                            if (!empty($patient->sex)) {
                                                                if ($patient->sex == 'Male') {
                                                                    echo 'selected';
                                                                }
                                                            }
                                                            ?> > Male </option>   
                                                            <option value="Female" <?php
                                                            if (!empty($patient->sex)) {
                                                                if ($patient->sex == 'Female') {
                                                                    echo 'selected';
                                                                }
                                                            }
                                                            ?> > Female </option>
                                                            <option value="Others" <?php
                                                            if (!empty($patient->sex)) {
                                                                if ($patient->sex == 'Others') {
                                                                    echo 'selected';
                                                                }
                                                            }
                                                            ?> > Others </option>
                                                        </select>
                                                    </div>
                                                    <label for=""> <?php echo lang('doctor'); ?></label>
                                                    <select class="form-control" name="doctor" id="adoctors">
                                                        <option value="">Select .....</option>
                                                        <?php foreach ($doctors as $doctor) { ?>
                                                            <option value="<?php echo $doctor->id; ?>"<?php
                                                            if (!empty($payment->doctor)) {
                                                                if ($payment->doctor == $doctor->id) {
                                                                    echo 'selected';
                                                                }
                                                            }
                                                            ?>><?php echo $doctor->name; ?> </option>
                                                                <?php } ?>

                                                    </select>

                                                    <label for=""><?php echo lang('date'); ?></label>
                                                    <input type="text" class="form-control default-date-picker" readonly="" id="date" name="date" id="" value='' placeholder="">
                                                    <label for=""><?php echo lang('available_slots'); ?></label>
                                                    <select class="form-control m-bot15" name="time_slot" id="aslots" value=''> 

                                                    </select>
                                                    <label for=""> <?php echo lang('remarks'); ?></label>
                                                    <input type="text" class="form-control" name="remarks" id="" value='' placeholder="">
                                                    <input type="hidden" name="request" value=''>

                                                    <button type="submit" name="submit" class="btn btn-primary mt-3 pull-right"> <?php echo lang('submit'); ?></button>

                                                </form>
                                        </div>

                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6 text-center">
                        <img loading="lazy" src="<?php echo $settings->appointment_img_url; ?>" class="img-fluid" alt="Doctor" />
                    </div>
                </div>
            </div>
        </div>
        <!---------------- End Why Choose Us ---------------->

        <!---------------- Start Featured Area ---------------->
        <div class="container">
        <div id="featured" class="text-white">
                 <?php
            $gridCount = 0;
            foreach ($gridsections as $gridsection) {
                $gridCount++;
                $remainder = $gridCount % 2;
                if ($remainder == 0) {
                    ?>

                    <div class="featured_bottom">
                        <div class="row">
                            <div class="col-md-6 d-flex align-items-center">
                                <div class="text-center px-5">
                                    <h6><?php echo $gridsection->category; ?></h6>
                                    <h3><?php echo $gridsection->title; ?></h3>
                                    <p>
                                        <?php echo $gridsection->description; ?>
                                    </p>
                                </div>
                            </div>
                            <div class="col-md-6" style="padding: 0;">
                                <img  src="<?php echo $gridsection->img; ?>" class="img-fluid float-right" alt="grid" />
                            </div>
                        </div>
                    </div>
                    <?php
                } else {
                    ?>
                    <div class="featured_top">
                        <div class="row">
                            <div class="col-md-6" style="padding: 0;">
                                <img   src="<?php echo $gridsection->img; ?>" class="img-fluid" alt="grid" />
                            </div>
                            <div class="col-md-6 d-flex align-items-center">
                                <div class="text-center px-5">
                                    <h6><?php echo $gridsection->category; ?></h6>
                                    <h3><?php echo $gridsection->title; ?></h3>
                                    <p>
                                        <?php echo $gridsection->description; ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div> 

                <?php }
                ?>

            <?php } ?>
            </div>
        </div>
        <!---------------- End Featured Area ---------------->

        <!---------------- Start Featured Services ---------------->
        <div id="featured_services" class="text-center my-5" style="padding-top: 25px !important">
            <div class="container">
                <div class="row">
                    <div class="col-md-12 mb-4 text-center">
                        <h1><?php echo lang('OUR_SERVICES'); ?></h1>
                        <h6 class="lead"><?php echo $settings->service_block__text_under_title; ?></h6>
                    </div>
                    <?php foreach ($services as $service) { ?>
                        <div class="col-md-4 mb-4">
                            <img loading="lazy" src="<?php echo $service->img_url; ?>" class="img-fluid" alt="" width="350px" height="350px" alt="service" />
                            <h3 class="mt-3"><?php echo $service->title; ?></h3>
                            <p><?php echo $service->description; ?></p>
                        </div>
                    <?php } ?>

                </div>
            </div>
        </div>
        <!---------------- End Featured Services ---------------->

        <!---------------- Start Featured Doctor ---------------->
        <div id="doctor" class="text-center my-5">
            <div class="container">
                <h3><?php echo lang('Feature_Doctors'); ?></h3>
                <h6>
                    <?php echo $settings->doctor_block__text_under_title; ?>
                </h6>
                <div class="row mt-5">
                    <?php
                    $count = count($featureds);
                    $i = 1;
                    foreach ($featureds as $featured) {
                        ?>
                        <div class="col-md-4 mb-4">
                            <img loading="lazy" src="<?php echo $featured->img_url; ?>" height="200px" alt="featured" />
                            <h4 class="mt-3"><?php echo $featured->name; ?></h4>
                            <p>
                                <?php echo $featured->description; ?>    
                            </p>
                        </div>
                        <?php
                        $i = $i + 1;
                    }
                    ?>

                </div>
            </div>
        </div>
        <!---------------- End Featured Doctor ---------------->

        <!---------------- Start Gallery area ---------------->
        <div id="gallery" class="bg-light text-center my-4">
            <div class="container">
                <div class="row">
                    <?php foreach ($images as $image) { ?>
                        <div class="col-md-4 mb-4">
                            <a href="<?php echo $image->img; ?>" class="gallery-item">
                                <img loading="lazy" src="<?php echo $image->img; ?>" class="img-fluid" alt="gallery-item" />
                            </a>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>
        <!---------------- End Gallery area ---------------->

        <!---------------- Start Testimonials Slider Area ---------------->
        <div id="portfolio" class="my-5">
            <div class="portfolio-testimonials">
                <h2><?php echo lang('trusted_by_some_biggest_names'); ?></h2>
                <div class="owl-carousel owl-carousel1 owl-theme">
                    <?php foreach ($reviews as $review) { ?>
                        <div>
                            <div class="card text-center">
                                <img loading="lazy" class="card-img-top" src="<?php echo $review->img; ?>" alt="review" />
                                <div class="card-body">
                                    <h5>
                                        <?php echo $review->name; ?> <br />
                                        <span> <?php echo $review->designation; ?> </span>
                                    </h5>
                                    <p class="card-text">
                                        <?php echo $review->review; ?>
                                    </p>
                                </div>
                            </div>
                        </div>
                    <?php } ?>
                </div>
            </div>
        </div>

        <!---------------- End Testimonials Slider Area ---------------->

        <!---------------- Start Footer Area ---------------->
        <div id="footer" class="text-white py-5">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 mb-3">
                        <img src="<?php echo $settings->logo; ?>" class="img-fluid" alt="logo">

                    </div>
                    <div class="col-md-3 mb-3">
                        <h6 class="my-2"><?php echo lang('about_us'); ?></h6>
                        <p class="footer-description">
                            <?php echo $settings->description; ?>
                        </p>
                    </div>
                    <div class="col-md-3 mb-3">
                        <div class="social-media text-center">
                            <h6 class="my-2"><?php echo lang('STAY_CONNECTED'); ?></h6>
                            <div class="social-icon">

                                <?php if (!empty($settings->facebook_id)) { ?>
                                    <a href="<?php echo $settings->facebook_id; ?>"><div class=""><i class="fa fa-facebook"></i></div></a> <?php } ?>
                                <?php if (!empty($settings->google_id)) { ?>
                                    <a href="<?php echo $settings->google_id; ?>"><div><i class="fa fa-google-plus"></i></div></a> <?php } ?>
                                <?php if (!empty($settings->twitter_id)) { ?>
                                    <a href="<?php echo $settings->twitter_id; ?>"><div><i class="fa fa-twitter"></i></div></a> <?php } ?>
                                <?php if (!empty($settings->youtube_id)) { ?>
                                    <a href="<?php echo $settings->youtube_id; ?>"><div><i class="fa fa-youtube"></i></div></a> <?php } ?>

                            </div>

                        </div>
                        <div class="working-hours">
                            <h6 class="my-2">Working Hours</h6>
                            <p>
                                <span>Monday</span> : 8am - 7pm
                            </p>
                            <p>
                                <span>Tuesday</span> : 8am - 7pm
                            </p>
                            <p>
                                <span>Wednesday</span> : 8am - 7pm
                            </p>
                            <p>
                                <span>Thursday</span> : 8am - 7pm
                            </p>
                            <p>
                                <span>Friday</span> : 8am - 7pm
                            </p>
                            <p>
                                <span>Saturday</span> : 8am - 5pm
                            </p>
                            <p>
                                <span>Sunday</span> : Closed
                            </p>
                        </div>
                    </div>
                    <div class="col-md-3">
                        <h6 class="my-2"><?php echo lang('CONTACT_INFO'); ?></h6>
                        <address>
                            <strong><?php echo lang('address'); ?>: <?php echo $settings->address; ?></strong><br />
                            <strong><?php echo lang('phone'); ?>: <?php echo $settings->phone; ?></strong><br />
                            <strong><?php echo lang('email'); ?>: <?php echo $settings->email; ?></strong>
                        </address>
                    </div>
                </div>
                <!-- Copyright Text -->
                <div class="d-flex justify-content-end">
                    <p>Copyright &copy; <script>document.write(new Date().getFullYear())</script> The Pyramid Dental Clinic</p>
                </div>
            </div>
        </div>
        <div>
        <!-- <iframe src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3988.78968085266!2d36.782975214754025!3d-1.301073999051046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMcKwMTgnMDMuOSJTIDM2wrA0NycwNi42IkU!5e0!3m2!1sen!2ske!4v1680761898929!5m2!1sen!2ske" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe> -->
            
        <iframe title="google maps" loading="lazy" src="https://www.google.com/maps/embed?pb=!1m17!1m12!1m3!1d3988.78968085266!2d36.782975214754025!3d-1.301073999051046!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m2!1m1!2zMcKwMTgnMDMuOSJTIDM2wrA0NycwNi42IkU!5e0!3m2!1sen!2ske!4v1680761898929!5m2!1sen!2ske" width="100%" height="300" style="border:0;" allowfullscreen="" ></iframe>
        </div>
        <!---------------- End Footer Area ---------------->

        <!-- Bootstrap core JavaScript  -->
        <script src="<?php echo site_url('front/site_assets/vendor/jquery/jquery.min.js'); ?>"></script>
        <script src="<?php echo site_url('front/site_assets/vendor/jquery/popper.min.js'); ?>"></script>
        <script src="<?php echo site_url('front/site_assets/vendor/bootstrap/js/bootstrap.min.js'); ?>"></script>
        <script src="<?php echo site_url('front/site_assets/vendor/owl-carousel/owl.carousel.min.js'); ?>"></script>
        <script src="<?php echo site_url('front/site_assets/vendor/magnific-popup/jquery.magnific-popup.min.js'); ?>"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
        <!-- JS Main File -->
        <script src="<?php echo site_url('front/site_assets/js/main.js'); ?>"></script>
        <script src="<?php echo site_url('common/toastr/toastr.js'); ?>"></script>
        <!-- <link rel="stylesheet" href="<?php echo site_url('common/toastr/toastr.js'); ?>" />-->
       <!--<script src="front/js/jquery.js"></script>-->
        <script src="front/js/bootstrap/bootstrap.min.js"></script>
        <script src="<?php echo site_url('front/js/wow/wow.min.js'); ?>"></script>
        <script src="front/js/smoothscroll/jquery.smoothscroll.min.js"></script>
        <script src="<?php echo site_url('front/js/script.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo site_url('common/assets/bootstrap-datepicker/js/bootstrap-datepicker.js'); ?>"></script>
        <script type="text/javascript" src="<?php echo site_url('common/assets/bootstrap-timepicker/js/bootstrap-timepicker.js'); ?>"></script>
        <script src="<?php echo site_url('front/assets/fancybox/source/jquery.fancybox.pack.js'); ?>"></script>

                    <!--<script type="text/javascript" src="<?php echo site_url('front/assets/revolution_slider/rs-plugin/js/jquery.themepunch.plugins.min.js'); ?>"></script>
                    <script type="text/javascript" src="<?php echo site_url('front/assets/revolution_slider/rs-plugin/js/jquery.themepunch.revolution.min.js'); ?>"></script>
                    <script src="front/js/revulation-slide.js"></script>-->
        <script>
<?php if ($this->session->flashdata('success')) { ?>
            toastr.success("<?php echo $this->session->flashdata('success'); ?>");
<?php } ?>
    <?php if ($this->session->flashdata('warning')) { ?>
            toastr.warning("<?php echo $this->session->flashdata('warning'); ?>");
<?php } ?>
        </script>
        <script>
            $('.default-date-picker').datepicker({
                format: 'dd-mm-yyyy',
                autoclose: true
            });
            $('#date').on('changeDate', function () {
                $('#date').datepicker('hide');
            });
            $('#date1').on('changeDate', function () {
                $('#date1').datepicker('hide');
            });</script>

        <script>
            $(document).ready(function () {
                $('.timepicker-default').timepicker({defaultTime: 'value'});
            });</script>




        <script>
            $(document).ready(function () {
                $('.pos_client').hide();
                $('.pos_client_id').hide();
                $(document.body).on('change', '#pos_select', function () {

                    var v = $("select.pos_select option:selected").val()
                    if (v == 'add_new') {
                        $('.pos_client').show();
                        $('.pos_client_id').hide();
                    } else if (v == 'patient_id') {
                        $('.pos_client_id').show();
                        $('.pos_client').hide();
                    } else {
                        $('.pos_client_id').hide();
                        $('.pos_client').hide();
                    }
                });
            });</script>


        <script>
            $(document).ready(function () {
                $('.appointment').hide();
                $(document.body).on('click', '#appointment', function () {

                    if ($('.appointment').is(":hidden")) {
                        $('.appointment').show();
                    } else {
                        $('.appointment').hide();
                    }
                });
            });</script>






        <script type="text/javascript">
            $(document).ready(function () {
                $("#adoctors").change(function () {
                    // Get the record's ID via attribute  
                    var id = $('#appointment_id').val();
                    var date = $('#date').val();
                    var doctorr = $('#adoctors').val();
                    $('#aslots').find('option').remove();
                    // $('#default').trigger("reset");
                    $.ajax({
                        url: 'frontend/getAvailableSlotByDoctorByDateByJason?date=' + date + '&doctor=' + doctorr,
                        method: 'GET',
                        data: '',
                        dataType: 'json',
                    }).done(function (response) {
                        var slots = response.aslots;
                        $.each(slots, function (key, value) {
                            $('#aslots').append($('<option>').text(value).val(value)).end();
                        });
                        //   $("#default-step-1 .button-next").trigger("click");
                        if ($('#aslots').has('option').length == 0) {                    //if it is blank. 
                            $('#aslots').append($('<option>').text('No Available Time Slots').val('Not Selected')).end();
                        }
                        // Populate the form fields with the data returned from server
                        //  $('#default').find('[name="staff"]').val(response.appointment.staff).end()
                    });
                });
            });
            $(document).ready(function () {
                var id = $('#appointment_id').val();
                var date = $('#date').val();
                var doctorr = $('#adoctors').val();
                $('#aslots').find('option').remove();
                // $('#default').trigger("reset");
                $.ajax({
                    url: 'frontend/getAvailableSlotByDoctorByDateByJason?date=' + date + '&doctor=' + doctorr,
                    method: 'GET',
                    data: '',
                    dataType: 'json',
                }).done(function (response) {
                    var slots = response.aslots;
                    $.each(response.aslots, function (key, value) {
                        $('#aslots').append($('<option>').text(value).val(value)).end();
                    });
                    $("#aslots").val(response.current_value)
                            .find("option[value=" + response.current_value + "]").attr('selected', true);
                    //   $("#default-step-1 .button-next").trigger("click");
                    if ($('#aslots').has('option').length == 0) {                    //if it is blank. 
                        $('#aslots').append($('<option>').text('No Available Time Slots').val('Not Selected')).end();
                    }
                    // Populate the form fields with the data returned from server
                    //  $('#default').find('[name="staff"]').val(response.appointment.staff).end()
                });
            });
            $(document).ready(function () {
                $('#date').datepicker({
                    format: "dd-mm-yyyy",
                    autoclose: true,
                })
                        //Listen for the change even on the input
                        .change(dateChanged)
                        .on('changeDate', dateChanged);
            });
            function dateChanged() {
                // Get the record's ID via attribute  
                var id = $('#appointment_id').val();
                var date = $('#date').val();
                var doctorr = $('#adoctors').val();
                $('#aslots').find('option').remove();
                // $('#default').trigger("reset");
                $.ajax({
                    url: 'frontend/getAvailableSlotByDoctorByDateByJason?date=' + date + '&doctor=' + doctorr,
                    method: 'GET',
                    data: '',
                    dataType: 'json',
                }).done(function (response) {
                    var slots = response.aslots;
                    $.each(response.aslots, function (key, value) {
                        $('#aslots').append($('<option>').text(value).val(value)).end();
                    });
                    //   $("#default-step-1 .button-next").trigger("click");
                    if ($('#aslots').has('option').length == 0) {                    //if it is blank. 
                        $('#aslots').append($('<option>').text('No Available Time Slots').val('Not Selected')).end();
                    }


                    // Populate the form fields with the data returned from server
                    //  $('#default').find('[name="staff"]').val(response.appointment.staff).end()
                });
            }

        </script>

        <script>

            $(document).ready(function () {
                $('.caption img').removeAttr('style');
                var windowH = $(window).width();
                $('.caption img').css('width', (windowH) + 'px');
                $('.caption img').css('height', '500px');
            });

        </script>
        <script>

            RevSlide.initRevolutionSlider();
            $(window).load(function () {
                $('[data-zlname = reverse-effect]').mateHover({
                    position: 'y-reverse',
                    overlayStyle: 'rolling',
                    overlayBg: '#fff',
                    overlayOpacity: 0.7,
                    overlayEasing: 'easeOutCirc',
                    rollingPosition: 'top',
                    popupEasing: 'easeOutBack',
                    popup2Easing: 'easeOutBack'
                });
            });
            $(window).load(function () {
                $('.flexslider').flexslider({
                    animation: "slide",
                    start: function (slider) {
                        $('body').removeClass('loading');
                    }
                });
            });
            //    fancybox
            jQuery(".fancybox").fancybox();
            $(function () {
                $('a[href*=#]:not([href=#])').click(function () {
                    if (location.pathname.replace(/^\//, '') == this.pathname.replace(/^\//, '') && location.hostname == this.hostname) {
                        var target = $(this.hash);
                        target = target.length ? target : $('[name=' + this.hash.slice(1) + ']');
                        if (target.length) {
                            $('html,body').animate({
                                scrollTop: target.offset().top
                            }, 1000);
                            return false;
                        }
                    }
                });
            });
        </script>
        <script>
            $(document).ready(function () {
                $('.headerSlider').owlCarousel({
                    loop: true,
                    autoplay: true,
                    autoplayTimeout: 5000,
                    autoplayHoverPause: false,
                    dots: true,
                    nav: true,
                    navigation: true,
                    pagination: true,
                    responsiveClass: true,
                    responsive: {
                        0: {
                            items: 1,
                            loop: true
                        },
                        600: {
                            items: 1,
                            loop: true
                        },
                        1000: {
                            items: 1,
                            loop: true
                        }
                    }
                })
            });
        </script>
    </body>
</html>
