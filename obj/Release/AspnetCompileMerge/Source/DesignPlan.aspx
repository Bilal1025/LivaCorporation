<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DesignPlan.aspx.cs" Inherits="WebApplication6.DesignPlan" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="cache-control" content="max-age=43200" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Custom Plan - Liva Corporations</title>
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
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.4.2/jquery.min.js"></script>
    <link href="css/Custom.css" rel="stylesheet" />
    <script type="text/javascript">
        $(document).ready(function () {
            $("#menu").hide();
            $("#show").click(function () {
                $("#menu").slideToggle();
            });
        });
    </script>
    <script src="js/JavaScript3.js"></script>
    <style>
        .hybrid {
            display: none;
        }

        #toapp {
            margin-bottom: 20px;
        }

        .inverterr {
            display: none;
        }

        @media only screen and (max-width:1000px) {
            .buttonset {
                margin-right: 0% !important;
                margin-left: 6% !important;
            }
        }

        @media only screen and (max-width:1000px) {
            #toset {
                margin-left: 0 !important;
            }
        }
    </style>
</head>
<body style="background-color: beige">
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
                            <h2>Custom Plan</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="single-product-area">
            <div class="zigzag-bottom" style="background: none repeat scroll 0 0 #333;"></div>
            <div id="toapp" class="container">
                <div id="tocopy" class="col-md-5 other" style="padding-left: 10%;">
                    <div class="dif" style="margin-left: 0%; width: 100%; margin-bottom: 35px;">
                        <asp:HiddenField ID="HiddenField1" runat="server" Value="100" />
                        <asp:HiddenField ID="HiddenField2" runat="server" Value="100" />
                        <asp:Label ID="Label1" runat="server" Style="float: left; width: 100px; word-break: break-all;" Font-Size="Larger" Font-Bold="true" Text="Loading."></asp:Label>
                        <input id="slider1" style="float: left; margin-left: 15px; margin-top: 8px;z-index:100; width: 30%" type="range" value="0" />
                        <input id="Text1" style="margin-left: 10px;z-index:100; width: 15%;" type="number" value="0" min="0" />
                    </div>
                </div>
                <div id="border" style="margin-top: 30px; margin-bottom: 30px; width: 100%; display: -webkit-inline-box; border-bottom: dotted">
                </div>
            </div>
            <div class="container" style="padding: 5px;">
                <div id="toset" class="col-md-6" style="margin-left: 20%;">
                    <div style="width: 100%; display: block; margin-bottom: 10px;">
                        <asp:Label class="hybrid" Font-Bold="true" ID="Label3" Style="margin-left: 10px;" runat="server" Text="Hybrid"></asp:Label>
                        <input class="hybrid" style="float: left" id="Radio1" type="radio" />
                        <asp:Label class="nhybrid" Font-Bold="true" Style="float: right" ID="Label4" runat="server" Text="Non-Hybrid"></asp:Label>
                        <input class="nhybrid" style="float: right; margin-right: 10px" id="Radio2" type="radio" checked="checked" />
                        <asp:Label class="inverterl" Font-Bold="true" ID="Label10" Style="margin-left: 10px;" runat="server" Text="Inverter"></asp:Label>
                        <input class="inverterl" style="float: left" id="Radio5" type="radio" />
                        <asp:Label class="inverterr" Font-Bold="true" Style="float: right" ID="Label11" runat="server" Text="Inverter"></asp:Label>
                        <input class="inverterr" style="float: right; margin-right: 10px" id="Radio6" type="radio" />
                    </div>
                    <div style="width: 100%; display: block; margin-bottom: 10px;">
                        <asp:Label Font-Bold="true" ID="Label7" Style="margin-left: 10px;" runat="server" Text="Dry"></asp:Label>
                        <input style="float: left" id="Radio3" type="radio" />
                        <asp:Label Font-Bold="true" Style="float: right" ID="Label8" runat="server" Text="Led-Acitite"></asp:Label>
                        <input style="float: right; margin-right: 10px" id="Radio4" type="radio" checked="checked" />
                    </div>
                    <div style="width: 100%; display: block; text-align: center; margin-bottom: 10px;">
                        <asp:Label Font-Bold="true" ID="Label5" Style="margin-right: 10px;" runat="server" Text="Include Solar"></asp:Label>
                        <input id="check1" type="checkbox" />
                    </div>
                    <div style="width: 100%; display: block; text-align: center; margin-bottom: 10px;">
                        <asp:Label Font-Bold="true" Style="margin-right: 10px;" ID="Label6" runat="server" Text="Wire (m)"></asp:Label>
                        <input id="sliderch" min="0" value="20" style="width: 50px;" type="number" />
                    </div>
                    <div style="width: 100%; display: block; text-align: center; margin-bottom: 10px;">
                        <asp:Label Font-Bold="true" Style="margin-right: 12px;" ID="Label9" runat="server" Text="Battery"></asp:Label>
                        <input id="sliderch1" min="0" value="0" style="width: 50px;" type="number" />
                    </div>
                </div>
            </div>
            <div style="text-align: center; display: block; padding: 10px;" class="buttonset">
                <asp:Label ID="Label2" Style="margin-right: 6%;" Font-Size="Larger" Font-Bold="true" runat="server" Text="Label"></asp:Label>
            </div>
            <div style="text-align: center; display: block; padding: 10px;" class="buttonset">
                <input id="Button1" onclick="return false" type="submit" style="margin-right: 6%" value="Order Now!" />
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
