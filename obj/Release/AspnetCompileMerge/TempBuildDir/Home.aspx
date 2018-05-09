<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="WebApplication6.Home" %>

<!DOCTYPE html>
<html lang="en" xmlns="http://www.w3.org/1999/xhtml" xmlns:fb="http://ogp.me/ns/fb#">
<head>

    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta http-equiv="cache-control" content="max-age=43200" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="icon" href="img/icon.png"/>
    <title>Liva Corporations</title>

    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css' />
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css' />

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" />

    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" />
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel="stylesheet" href="css/owl.carousel.css" />
    <link rel="stylesheet" href="style.css" />
    <link rel="stylesheet" href="css/responsive.css" />
    <link rel='stylesheet prefetch' href='http://cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.3/animate.min.css' />
    <link rel="stylesheet" href="css/style2.css" />
    <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
    <script src='http://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/js/bootstrap.min.js'></script>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        @media only screen and (max-width: 768px) {
            .namechng {
                margin-left: 35% !important;
            }

            .hero {
                margin-left: 5% !important;
                width: 85% !important;
            }

            h1 {
                font-size: medium !important;
            }

            h4 {
                font-size: smaller !important;
                font-weight: normal !important;
            }
        }
    </style>
    <link href="css/Custom.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#menu").hide();
            $("#show").click(function () {
                $("#menu").slideToggle();
            });
        });
    </script>
    <meta property="og:image" content="http://livacorporations.com/img/slide-1.jpg" />
    <meta property="og:title" content="Liva Corporations" />
    <meta property="og:description" content="We give you full time opportunity to light up your house by alternative power systems. You don’t have to worry about anything. everything is covered in our plans. we set you free. you only have to click and that’s it" />
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
        <div id="carousel-example-generic" style="height: 650px" class="carousel slide carousel-fade carousel-animate carousel-bg slider-area" data-ride="carousel">
            <!-- Indicators -->
            <div class="zigzag-bottom"></div>
            <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1"></li>
                <li data-target="#carousel-example-generic" data-slide-to="2"></li>
            </ol>
            <!-- Wrapper for slides -->
            <div class="carousel-inner" role="listbox" style="height: 100%">
                <div class="item active" style="background-image: url('/img/slide-1.jpg'); background-repeat: no-repeat; height: 100%;">
                    <div class="carousel-caption" style="padding-bottom: 120px;">
                        <div class="hero" style="margin-left: 45%; letter-spacing: 2px; text-transform: none; top: -50px!important; background-color: black; opacity: .7; height: auto;">
                            <hgroup class="zoomInDown animated">
                                <h1 class="fadeInLeft animated" style="padding-top: 15px; word-break: break-all; word-wrap: normal">Introduction</h1>
                                <h4 class="slideInRight animated" style="font-weight: normal; padding-left: 15px; padding-right: 15px; padding-bottom: 15px;">We give you full time opportunity to light up your house by alternative power systems. You don’t have to worry about anything. everything is covered in our plans. we set you free. you only have to click and that’s it</h4>
                            </hgroup>
                        </div>
                    </div>
                </div>
                <div class="item" style="background-image: url('/img/slide-2.jpg'); background-repeat: no-repeat; height: 100%;">
                    <div class="carousel-caption" style="padding-bottom: 120px; opacity: .7">
                        <div class="hero fadeInUp animated" style="margin-left: 45%; letter-spacing: 2px; text-transform: none; top: -50px!important; background-color: black; opacity: .5; height: auto">
                            <hgroup>
                                <h1 class="fadeInLeft animated" style="padding-top: 15px; word-break: break-all; word-wrap: normal">Liva Corporations</h1>
                                <h4 class="slideInRight animated" style="font-weight: normal; padding-left: 15px; padding-right: 15px; padding-bottom: 15px;">Finally, a perfect moment to illuminate your houses awaits you. Our uncanny alternative power resources shall leave you dumbfounded. you are just one click away to avail such mesmerizing opportunity.</h4>
                            </hgroup>
                        </div>
                    </div>
                </div>
                <div class="item" style="background-image: url('/img/slide-3.jpg'); background-repeat: no-repeat; height: 100%;">
                    <div class="carousel-caption" style="padding-bottom: 120px; opacity: .7">
                        <div class="hero rollIn animated" style="margin-left: 45%; letter-spacing: 2px; text-transform: none; top: -50px!important; background-color: black; opacity: .8; height: auto">
                            <hgroup class="rotateInDownRight animated">
                                <h1 class="fadeInLeft animated" style="padding-top: 15px; word-break: break-all; word-wrap: normal">Why us?</h1>
                                <h4 class="slideInRight animated" style="font-weight: normal; padding-left: 15px; padding-right: 15px; padding-bottom: 15px;">We Have:</h4>
                                <h4 class="slideInRight animated" style="font-weight: normal; padding-left: 15px; padding-right: 15px; padding-bottom: 15px;">Best Quality.</h4>
                                <h4 class="slideInRight animated" style="font-weight: normal; padding-left: 15px; padding-right: 15px; padding-bottom: 15px;">Economical Price.</h4>
                                <h4 class="slideInRight animated" style="font-weight: normal; padding-left: 15px; padding-right: 15px; padding-bottom: 15px;">Different Budget Proposals.</h4>
                                <h4 class="slideInRight animated" style="font-weight: normal; padding-left: 15px; padding-right: 15px; padding-bottom: 15px;">Free Maintenance</h4>
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
        <!-- End slider area -->

        <div class="promo-area" style="z-index: 100">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo">
                            <i class="fa fa-refresh"></i>
                            <p>1 Year Warranty</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo">
                            <i class="fa fa-truck"></i>
                            <p>Reliable shipping</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo">
                            <i class="fa fa-lock"></i>
                            <p>Secure payments</p>
                        </div>
                    </div>
                    <div class="col-md-3 col-sm-6">
                        <div class="single-promo">
                            <i class="fa fa-gift"></i>
                            <p>Free Maintenance</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End promo area -->

        <div class="maincontent-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="latest-product">
                            <h2 class="section-title">Latest Plans</h2>
                            <div class="product-carousel">
                                <asp:Repeater ID="Repeater1" runat="server">
                                    <ItemTemplate>
                                        <div class="single-product" style="width: auto">
                                            <div class="product-f-image">
                                                <img src='/imagedata/<%# DataBinder.Eval(Container.DataItem, "img") %>' style="width: 500px; height: 290px;" alt="">
                                                <div class="product-hover">
                                                    <a id="haha" onclick="return false" href="#" class="add-to-cart-link"><i class="fa fa-shopping-cart"></i>Order</a>
                                                    <a id="haha1" href="#" onclick="return false" class="view-details-link"><i class="fa fa-link"></i>See details</a>
                                                </div>
                                            </div>
                                            <asp:Label ID="Label3" Style="visibility: hidden" class="tt" runat="server" Text='<%#Eval("plan") %>'></asp:Label>
                                            <h2 class="namechng" style="margin-left: 15%"><a href="#" onclick="return false">
                                                <asp:Label ID="Label1" runat="server" Text='<%#Eval("name") %>'></asp:Label></a></h2>

                                            <div class="product-carousel-price">
                                                <ins class="namechng" style="margin-left: 16%">
                                                    <asp:Label ID="Label2" runat="server" Text='<%#Eval("price") %>'></asp:Label></ins>
                                            </div>
                                        </div>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- End main content area -->

        <div class="brands-area">
            <div class="zigzag-bottom" style="background-color: goldenrod"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <div class="brand-wrapper">
                            <h2 class="section-title" style="color: goldenrod">Brands</h2>
                            <div class="brand-list">
                                <img height="200" style="height: 200px" src="img/services_logo__1.jpg" alt="">
                                <img height="200" style="height: 200px" src="img/services_logo__2.jpg" alt="">
                                <img height="200" style="height: 200px" src="img/services_logo__3.jpg" alt="">
                                <img height="200" style="height: 200px" src="img/services_logo__4.jpg" alt="">
                                <img height="200" style="height: 200px" src="img/services_logo__1.jpg" alt="">
                                <img height="200" style="height: 200px" src="img/services_logo__2.jpg" alt="">
                                <img height="200" style="height: 200px" src="img/services_logo__3.jpg" alt="">
                                <img height="200" style="height: 200px" src="img/services_logo__4.jpg" alt="">
                            </div>
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
        <script src="js/JavaScript2.js"></script>
    </form>
</body>
</html>
