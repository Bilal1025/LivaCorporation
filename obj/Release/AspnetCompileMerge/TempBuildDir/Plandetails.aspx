<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Plandetails.aspx.cs" Inherits="WebApplication6.Plandetails" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="cache-control" content="max-age=43200" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Plan Details - Liva Corporations</title>
    <link rel="icon" href="img/icon.png"/>
    <!-- Google Fonts -->
    <link href='http://fonts.googleapis.com/css?family=Titillium+Web:400,200,300,700,600' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.googleapis.com/css?family=Raleway:400,100' rel='stylesheet' type='text/css'>

    <!-- Bootstrap -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

    <!-- Font Awesome -->
    <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css">

    <!-- Custom CSS -->
    <link rel="stylesheet" href="css/owl.carousel.css">
    <link rel="stylesheet" href="style.css">
    <link rel="stylesheet" href="css/responsive.css">
    <style>
        .single-product-area .zigzag-bottom {
            background: url(img/crossword.png) repeat scroll 0 0 #1ABC9C;
        }
    </style>
    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        @import "http://fonts.googleapis.com/css?family=Montserrat:300,400,700";

        .rwd-table {
            margin: 1em 0;
        }

            .rwd-table tr {
                border-top: 1px solid #ddd;
                border-bottom: 1px solid #ddd;
            }

            .rwd-table th {
                display: none;
            }

            .rwd-table td {
                display: block;
            }

                .rwd-table td:first-child {
                    padding-top: .5em;
                }

                .rwd-table td:last-child {
                    padding-bottom: .5em;
                }

                .rwd-table td:before {
                    content: attr(data-th) " ";
                    font-weight: bold;
                    width: 6.5em;
                    display: inline-block;
                }

        @media (min-width: 750px) {
            .rwd-table td:before {
                display: none;
            }
        }

        .rwd-table th, .rwd-table td {
            text-align: center;
        }

        @media (min-width: 750px) {
            .rwd-table th, .rwd-table td {
                display: table-cell;
                padding: .25em .5em;
            }

                .rwd-table th:first-child, .rwd-table td:first-child {
                    padding-left: 0;
                }

                .rwd-table th:last-child, .rwd-table td:last-child {
                    padding-right: 0;
                }
        }


        h1 {
            font-weight: normal;
            letter-spacing: -1px;
            color: #34495E;
        }

        .rwd-table {
            background: #34495E;
            color: #fff;
            border-radius: .4em;
            overflow: hidden;
        }

            .rwd-table tr {
                border-color: #46637f;
            }

            .rwd-table th, .rwd-table td {
                margin: .5em 1em;
            }

        @media (min-width: 750px) {
            .rwd-table th, .rwd-table td {
                padding: 1em !important;
            }
        }

        @media (max-width: 750px) {
            #temp1 {
                margin-left: 40% !important;
                margin-top: -35px;
            }

            #toh {
                display: none;
                visibility: hidden;
            }

            #temp {
                font-size: large !important;
                margin-left: 10%;
            }

            .rwd-table th, .rwd-table td {
                text-align: left !important;
            }
        }

        .rwd-table th, .rwd-table td:before {
            color: #dd5;
        }
    </style>
    <link href="css/Custom.css" rel="stylesheet" />
</head>
<body style="background-color: beige;">
    <form runat="server">
        <asp:HiddenField ID="HiddenField1" runat="server" />
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
                        <button id="show3" type="button" class="navbar-toggle">
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
                            <h2>Shop</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>


        <div class="single-product-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8" style="width: 100%!important">
                        <div class="product-content-right">

                            <div class="row">
                                <div class="col-sm-6">
                                    <div class="product-images">
                                        <div class="product-main-img">
                                            <asp:Image ID="Image1" Style="width: 500px; height: 500px;" runat="server" />
                                        </div>
                                    </div>
                                </div>

                                <div class="col-sm-6">
                                    <div class="product-inner">
                                        <h2 class="product-name">
                                            <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label></h2>
                                        <div class="product-inner-price" style="margin-left: 1%;">
                                            <ins>
                                                <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label></ins>
                                        </div>



                                        <div role="tabpanel" style="margin-top: 10px">
                                            <ul class="product-tab" role="tablist">
                                                <li role="presentation" class="active"><a href="#home" aria-controls="home" role="tab" data-toggle="tab">Description</a></li>
                                                <li role="presentation"><a href="#profile1" aria-controls="profile1" role="tab" data-toggle="tab">Comes With</a></li>
                                                <li role="presentation"><a href="#profile2" aria-controls="profile2" role="tab" data-toggle="tab">Manages</a></li>
                                                <li role="presentation"><a href="#profile" aria-controls="profile" role="tab" data-toggle="tab">Reviews</a></li>
                                            </ul>
                                            <div class="tab-content">
                                                <div role="tabpanel" class="tab-pane fade in active" id="home">
                                                    <h2>
                                                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                                                    </h2>
                                                    <p style="margin-left: 5px;">
                                                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                                    </p>
                                                </div>
                                                <div role="tabpanel" class="tab-pane fade" id="profile1">
                                                    <table id="table1" class="rwd-table" style="margin-left: 1%; width: 98%;">
                                                        <tr style="background: #333; color: #fff;">
                                                            <th>Item</th>
                                                            <th>Quantity</th>
                                                        </tr>
                                                        <tr id="tocopy">
                                                            <td id="item" data-th="Item">Loading</td>
                                                            <td id="quan" data-th="Quantity"></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div role="tabpanel" class="tab-pane fade" id="profile2">
                                                    <table id="table2" class="rwd-table" style="margin-left: 1%; width: 98%;">
                                                        <tr style="background: #333; color: #fff;">
                                                            <th>Item</th>
                                                            <th>Quantity</th>
                                                        </tr>
                                                        <tr id="add" style="background: #333; color: #fff;">
                                                            <td id="temp" style="color: yellow;">
                                                                <div id="temp1" style="margin-left: 80%">Alternate</div>
                                                            </td>
                                                            <td id="toh"></td>
                                                        </tr>
                                                        <tr id="tocopy2">
                                                            <td id="item2" data-th="Item">Loading</td>
                                                            <td id="quan2" data-th="Quantity"></td>
                                                        </tr>
                                                    </table>
                                                </div>
                                                <div role="tabpanel" class="tab-pane fade" id="profile">
                                                    <h2>Reviews</h2>
                                                    <div class="submit-review">
                                                        <p>
                                                            <label for="name">Name</label>
                                                            <input id="Name" required="required" name="name" type="text">
                                                        </p>
                                                        <p>
                                                            <label for="email">Email</label>
                                                            <input id="Email" required="required" name="email" type="email">
                                                        </p>
                                                        <p>
                                                            <label for="mobile">Phone</label>
                                                            <input id="TextBox2" required="required" name="name" type="text">
                                                        </p>
                                                        <p>
                                                            <label for="review">Your review</label>
                                                            <textarea name="review" required="required" id="TextBox1" cols="30" rows="10"></textarea>
                                                        </p>
                                                        <p>
                                                            <button class="add_to_cart_button" style="margin-left: 50%;" id="Button1" type="submit">Submit</button>
                                                        </p>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>
                                    <button id="orderbutton" class="add_to_cart_button" style="float: right" type="submit">Order Now!</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div id="show2" class="promo-area">
            <div class="zigzag-bottom"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8" style="width: 100%!important">
                        <div class="single-promo" style="background-color: black">
                            <div id="show1" style="margin-top: 10px;">
                                <span style="font-size: x-large">Reviews</span>
                            </div>
                        </div>
                        <div id="show">
                            <div class="single-promo">
                                <div style="margin-top: 10px;">
                                    <div class="row">
                                        <div class="col-md-12" style="text-align: left">
                                            <asp:HiddenField ID="HiddenField2" runat="server" />
                                            <img id="Image7" style="position: relative; border-radius: 50px; width: 60px; height: 60px;" src="Solar-Modules.png" />
                                            <asp:Label ID="Label1" Style="position: relative; top: -10px; margin-left: 5px;" runat="server" Font-Bold="true" Text="Loading"></asp:Label>
                                            <asp:Label ID="Label2" Style="float: right; font-size: small" runat="server" Text=""></asp:Label>
                                        </div>
                                        <div style="float: left; font-weight: bold; font-size: medium; margin-left: 89px; margin-right: 15px; margin-top: -18px; margin-bottom: 10px; word-wrap: normal; word-break: break-all;">
                                            <asp:Label ID="Label3" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="row" style="margin-top: 10px; z-index: 1000">
                            <asp:Button ID="Button3" OnClientClick="return false" runat="server" Style="margin-left: 2%;" Text="Load Previous" />
                            <asp:Button ID="Button2" OnClientClick="return false" Style="float: right; margin-right: 2%;" runat="server" Text="Load Next" />
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
        <script src="js/JavaScript.js"></script>
    </form>
</body>
</html>
