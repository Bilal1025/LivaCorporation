<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contactus.aspx.cs" Inherits="WebApplication6.Contactus" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta http-equiv="cache-control" content="max-age=43200" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Contact Us - Liva Corporations</title>
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
    <style>
        .promo-area {
            background: url(img/crossword.png) repeat scroll 0 0 black;
        }

        .single-promo:hover {
            background: url(img/crossword.png) repeat scroll 0 0 goldenrod;
            color: black;
            font-weight: bold;
        }
    </style>
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
                            <h2>Contact Us</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d1701.3136563484327!2d74.29761776857336!3d31.479436715605274!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x0%3A0x41fb050743490a35!2sAl-Sufa+Homes+Hostel!5e0!3m2!1sen!2s!4v1475130519268" height="450" style="border: 0; width: 100%;"></iframe>
        <div class="single-product-area" style="margin-top: 1px;">
            <div class="zigzag-bottom" style="background: none repeat scroll 0 0 #333;"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8">
                        <h2 style="font-size: x-large; text-align: center; color: goldenrod">Get In Touch With Us Now
                        </h2>
                        <div class="custom" style="font-size: medium; height: auto; border-radius: 5px; margin-bottom: 20px">
                            <div class="submit-review" style="font-weight: bold">
                                <p>
                                    <label for="name">Name</label>
                                    <asp:TextBox ID="TextBox3" Style="color: black; width: 80%" placeholder="Name" required="required" name="name" type="text" runat="server"></asp:TextBox>
                                </p>
                                <p>
                                    <label for="email">Email</label>
                                    <asp:TextBox ID="TextBox2" Style="color: black; width: 80%" required="required" placeholder="Email" name="email" type="email" runat="server"></asp:TextBox>
                                    <br />
                                    <asp:Label Style="font-weight: normal;" ID="Label1" runat="server" Text="Pro Tip. We can't contact you if you provide us a fake Email."></asp:Label>
                                </p>
                                <p>
                                    <label for="review">Query</label>
                                    <asp:TextBox ID="TextBox4" runat="server" Style="color: black; width: 80%" name="review" required="required" placeholder="Suggestions or Query" TextMode="MultiLine"></asp:TextBox>
                                    <br />
                                    <asp:Label Visible="false" Style="font-weight: normal;" ID="Label2" runat="server" Text="Thank You!. Your Query has been noted and will be proceeded shortly. In Mean time you can goto homepage and check our Latest Plans!!"></asp:Label>
                                </p>
                                <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
                            </div>
                        </div>
                        <p class="text-right">
                        </p>
                    </div>
                    <div class="widget widget-text col-md-3">
                        <address>
                            <span><strong>Phone:</strong>(+92) 334 046 8856</span>
                            <span><strong>Email:</strong><a href="mailto:Livacorporations@hotmail.com">Livacorporations@hotmail.com</a></span>
                        </address>
                        <div class="small-border"></div>
                        <address>
                            <span><strong>Phone:</strong>(+92) 300 943 0863</span>
                            <span><strong>Email:</strong><a href="mailto:Livacorporations@outlook.com">Livacorporations@outlook.com</a></span>
                        </address>
                        <div class="small-border"></div>
                        <address>
                            <span><strong>Phone:</strong>(+92) 312 607 1888</span>
                            <span><strong>Email:</strong><a href="mailto:Livacorporations@gmail.com">Livacorporations@gmail.com</a></span>
                        </address>


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
