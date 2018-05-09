<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Aboutus.aspx.cs" Inherits="WebApplication6.Aboutus" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="cache-control" content="max-age=43200" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>About Us - Liva Corporations</title>
    <link rel="icon" href="img/icon.png"/>
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css'>

    <link rel="stylesheet" href="css/style2.css">
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
    <style>
        @media only screen and (max-width: 1000px) {
            #desc {
                font-size: medium !important;
                font-weight: normal !important;
            }

            .picc {
                height: 200px !important;
            }

            .picc1 {
                margin-left: 5% !important;
                margin-right: 5% !important;
            }

            .pics1 {
                width: 22% !important;
                height: 85% !important;
                margin-left: 1% !important;
                margin-top: 2% !important;
                float: left !important;
            }

            h2 {
                font-size: large !important;
                font-weight: bold !important;
            }

            h3 {
                font-size: medium !important;
                font-weight: bold;
            }

            h4 {
                font-size: small !important;
                font-weight: normal !important;
            }

            h5 {
                font-size: smaller !important;
                font-weight: normal !important;
            }
        }

        @media only screen and (max-width: 668px) {
            #desc {
                display: none !important;
            }

            .picc {
                height: 180px !important;
            }

            .picc1 {
                margin-left: 5% !important;
                margin-right: 5% !important;
            }

            .pics1 {
                width: 25% !important;
                margin-top: 2% !important;
            }
        }

        @media only screen and (max-width: 568px) {
            .picc {
                height: 160px !important;
            }

            .pics {
                width: 30% !important;
            }

            .picc1 {
                margin-left: 5% !important;
                margin-right: 5% !important;
            }

            .pics1 {
                width: 26% !important;
                margin-top: 3% !important;
            }
        }
        @media only screen and (max-width: 468px) {
            .picc {
                height: 140px !important;
            }

            .pics {
                width: 32% !important;
            }

            .picc1 {
                margin-left: 5% !important;
                margin-right: 5% !important;
            }

            .pics1 {
                width: 30% !important;
                margin-top: 4% !important;
            }
        }
    </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <link href="css/Custom.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#menu").hide();
            $("#show").click(function () {
                $("#menu").slideToggle();
            });
        });
    </script>
</head>
<body style="background-color: beige;">
    <form runat="server">
        <div class="site-branding-area" style="background: black">
            <div class="container">
                <div class="row">
                    <div class="col-sm-6">
                        <div class="logo">
                            <h1><a href="Home.aspx">
                                <img alt="" src="img/logo.png" style="height: 60px" /></a></h1>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End site branding area -->

        <div class="mainmenu-area">
            <div class="container">
                <div class="row">
                    <div class="navbar-header">
                        <button id="show" type="button" class="navbar-toggle">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div id="menu" class="navbar-collapse collapse">
                        <ul class="nav navbar-nav">
                            <li><a href="Home.aspx">Home</a></li>
                            <li><a href="Plans.aspx">Plans</a></li>
                            <li><a href="DesignPlan.aspx">Design Plan</a></li>
                            <li><a href="Aboutus.aspx">About Us</a></li>
                            <li><a href="Contactus.aspx">Contact Us</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        <!-- End mainmenu area -->

        <div class="product-big-title-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="product-bit-title text-center">
                            <h2>About Us</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="carousel-example-generic" class="carousel slide carousel-fade carousel-animate carousel-bg" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox">
                <div class="item active" style="background-image: url('/img/PrintFront.jpg'); background-repeat: no-repeat;">
                    <div class="carousel-caption">
                        <div class="hero">
                            <hgroup class="zoomInDown animated">
                                <h1 class="fadeInLeft animated">Liva</h1>
                                <h3 class="slideInRight animated">Let's Move On To The Future</h3>
                            </hgroup>
                        </div>
                    </div>
                </div>
                <div class="item" style="background-image: url('/img/PrintFront.jpg'); background-repeat: no-repeat;">
                    <div class="carousel-caption">
                        <div class="hero fadeInUp animated">
                            <hgroup>
                                <h1>Liva</h1>
                                <h3>Let's Brighten Your Life</h3>
                            </hgroup>
                        </div>
                    </div>
                </div>
                <div class="item" style="background-image: url('/img/PrintFront.jpg'); background-repeat: no-repeat;">
                    <div class="carousel-caption">
                        <div class="hero rollIn animated">
                            <hgroup class="rotateInDownRight animated">
                                <h1>Liva</h1>
                                <h3>Let's Make Life Easier</h3>
                            </hgroup>
                        </div>
                    </div>
                </div>
            </div>
            <!-- Controls -->
            <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
                <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
                <span class="sr-only">Next</span>
            </a>
        </div>
        <div class="container">
            <div class="row" style="border-bottom: 1px solid #ccc!important;">
                <div class="col-md-12 picc" style="border-bottom: 1px solid #ccc!important; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 300px; margin-bottom: 15px; margin-top: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics" alt="" style="float: left; width: 20%; height: 100%; margin-left: -15px" src="img/ceo.jpg" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Engr. Saleem Javaid Paracha</h3>
                            <h4 style="margin-top: 10px;">C.E.O</h4>
                            <h5 style="margin-top: 10px;">+923340468844</h5>
                            <h5 style="margin-top: 10px; word-break: break-all; word-wrap: break-word">SaleemParacha2015@gmail.com</h5>
                            <h4 id="desc" style="padding-left: 30%; padding-right: 10%;">Pakistan is lacking in generation of new power sources. My aim is to make people able eliminate this issue on their own by not depending on the conventions and having their own power generation units at minute to mega level.</h4>
                        </div>
                    </div>
                </div>
            </div>
            <h2 style="margin-top: 10px; color: goldenrod">Executive Members.</h2>
            <div class="row">
                <div class="col-md-4 picc picc1" style="border-bottom: 1px solid #ccc!important; margin-left: 10%; margin-right: 15%; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 350px; margin-top: 5px; margin-bottom: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics1" alt="" style="border-radius: 80px; margin-left: 29%; width: 42%; height: 50%; margin-top: 5%; margin-bottom: 10px" src="img/raza.jpg" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Engr. Muhammad Raza Maneka</h3>
                            <h4 style="margin-top: 10px;">C.M.O</h4>
                            <h5 style="margin-top: 10px;">+923126071888</h5>
                            <h5 style="margin-top: 10px; word-break: break-all; word-wrap: break-word">Razamaneka@yahoo.com</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 picc picc1" style="border-bottom: 1px solid #ccc!important; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 350px; margin-top: 5px; margin-bottom: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics1" alt="" style="border-radius: 80px; margin-left: 29%; width: 42%; height: 50%; margin-top: 5%; margin-bottom: 10px" src="img/cdo.jpg" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Engr. Abdul Islam</h3>
                            <h4 style="margin-top: 10px;">C.D.O</h4>
                            <h5 style="margin-top: 10px;">+923009430863</h5>
                            <h5 style="margin-top: 10px; word-break: break-all; word-wrap: break-word">Abdul.Islam1121@gmail.com</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row" style="border-bottom: 1px solid #ccc!important;">
                <div class="col-md-4 picc picc1" style="border-bottom: 1px solid #ccc!important; margin-left: 10%; margin-right: 15%; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 350px; margin-top: 15px; margin-bottom: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics1" alt="" style="border-radius: 80px; margin-left: 29%; width: 42%; height: 50%; margin-top: 5%; margin-bottom: 10px" src="img/cfo.jpg" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Nosherwan Asad</h3>
                            <h4 style="margin-top: 10px;">C.F.O</h4>
                            <h5 style="margin-top: 10px;">+923046917613</h5>
                            <h5 style="margin-top: 10px; word-break: break-all; word-wrap: break-word">Nosherwan.Asad92@gmail.com</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 picc picc1" style="border-bottom: 1px solid #ccc!important; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 350px; margin-top: 15px; margin-bottom: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics1" alt="" style="border-radius: 80px; margin-left: 29%; width: 42%; height: 50%; margin-top: 5%; margin-bottom: 10px" src="img/Advisor.jpg" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Sarim Jalil</h3>
                            <h4 style="margin-top: 10px;">Advisor</h4>
                            <h5 style="margin-top: 10px;">+923406268107</h5>
                            <h5 style="margin-top: 10px; word-break: break-all; word-wrap: break-word">Sarimjalil@hotmail.com</h5>
                        </div>
                    </div>
                </div>
            </div>
            <h2 style="margin-top: 10px; color: goldenrod">Incorporation With.</h2>
            <div class="row">
                <div class="col-md-4 picc picc1" style="border-bottom: 1px solid #ccc!important; margin-left: 10%; margin-right: 15%; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 350px; margin-top: 5px; margin-bottom: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics1" alt="" style="border-radius: 80px; margin-left: 29%; width: 42%; height: 50%; margin-top: 5%; margin-bottom: 10px" src="Solar-Modules.png" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Muhammad Bilal</h3>
                            <h4 style="margin-top: 10px;">Web Developer</h4>
                            <h5 style="margin-top: 10px;">+923060791027</h5>
                            <h5 style="margin-top: 10px; word-break: break-all; word-wrap: break-word">mbilal1980@hotmail.com</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 picc picc1" style="border-bottom: 1px solid #ccc!important; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 350px; margin-top: 5px; margin-bottom: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics1" alt="" style="border-radius: 80px; margin-left: 29%; width: 42%; height: 50%; margin-top: 5%; margin-bottom: 10px" src="img/logodesigner.jpg" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Abdul Mannan</h3>
                            <h4 style="margin-top: 10px;">Brand Designer</h4>
                            <h5 style="margin-top: 10px;">+923126071888</h5>
                        </div>
                    </div>
                </div>
            </div>
            <div class="row">
                <div class="col-md-4 picc picc1" style="border-bottom: 1px solid #ccc!important; margin-left: 10%; margin-right: 15%; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 350px; margin-top: 15px; margin-bottom: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics1" alt="" style="border-radius: 80px; margin-left: 29%; width: 42%; height: 50%; margin-top: 5%; margin-bottom: 10px" src="img/blog.jpg" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Muaz Maqbool</h3>
                            <h4 style="margin-top: 10px;">Content Writer</h4>
                            <h5 style="margin-top: 10px;">+923350075530</h5>
                            <h5 style="margin-top: 10px; word-break: break-all; word-wrap: break-word">muazmaqbool65@gmail.com</h5>
                        </div>
                    </div>
                </div>
                <div class="col-md-4 picc picc1" style="border-bottom: 1px solid #ccc!important; border-top: 1px solid #ccc!important; border-left: 1px solid #ccc!important; border-radius: 5px; color: white; height: 350px; margin-top: 15px; margin-bottom: 15px; background: url(img/crossword.png) repeat scroll 0 0 black">
                    <img class="pics1" alt="" style="border-radius: 80px; margin-left: 29%; width: 42%; height: 50%; margin-top: 5%; margin-bottom: 10px" src="img/blog1.jpg" />
                    <div class="row">
                        <div style="position: relative; text-align: center">
                            <h3 style="margin-top: 10px;">Muhammad Ahmad</h3>
                            <h4 style="margin-top: 10px;">Content Writer</h4>
                            <h5 style="margin-top: 10px;">+923244657341</h5>
                            <h5 style="margin-top: 10px; word-break: break-all; word-wrap: break-word">Ahmadrockit30@gmail.com</h5>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-top-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="footer-about-us">
                            <h2>Liva<span>Corporations</span></h2>
                            <p>We give you full time opportunity to light up your house by alternative power systems. You don’t have to worry about anything. everything is covered in our plans. we set you free. you only have to click and that’s it</p>
                            <div class="footer-social">
                                <a href="https://www.facebook.com/livacorporations/?fref=ts" target="_blank"><i class="fa fa-facebook"></i></a>
                                <a href="https://twitter.com/LivaCorporation" target="_blank"><i class="fa fa-twitter"></i></a>
                                <a href="https://www.linkedin.com/in/liva-corporations-805199128?trk=hp-identity-photo" target="_blank"><i class="fa fa-linkedin"></i></a>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <div class="footer-menu">
                            <h2 class="footer-wid-title">User Navigation </h2>
                            <ul>
                                <li><a href="Home.aspx">Front page</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-md-4 col-sm-6">
                        <div class="footer-menu">
                            <h2 class="footer-wid-title">Categories</h2>
                            <ul>
                                <li><a href="Plans.aspx">Plans</a></li>
                                <li><a href="DesignPlan.aspx">Custom Plans</a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-bottom-area">
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <div class="copyright">
                            <p>&copy; 2015 LivaCorporations. All Rights Reserved.</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Latest jQuery form server -->
        <script src="https://code.jquery.com/jquery.min.js"></script>

        <!-- Bootstrap JS form CDN -->
        <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

        <!-- jQuery sticky menu -->
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/jquery.sticky.js"></script>

        <!-- jQuery easing -->
        <script src="js/jquery.easing.1.3.min.js"></script>

        <!-- Main Script -->
        <script src="js/main.js"></script>
    </form>
</body>
</html>
