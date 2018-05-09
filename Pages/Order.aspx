<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Order.aspx.cs" Inherits="WebApplication6.Order" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="cache-control" content="max-age=43200" />
    <title>Place Order - Liva Corporations</title>
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
                            <h2>Order Plan</h2>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="single-product-area">
            <div class="zigzag-bottom" style="background: none repeat scroll 0 0 #333;"></div>
            <div class="container">
                <div class="row">
                    <div class="col-md-8" style="width: 100%;">
                        <div class="product-content-right">
                            <div class="woocommerce">
                                <div id="customer_details" class="col2-set" style="width: 100%">
                                    <div class="col-1" style="width: 100%">
                                        <div class="woocommerce-billing-fields" style="width: 100%;">
                                            <h3 style="color: goldenrod">Billing Details</h3>
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td>
                                                        <p id="billing_first_name_field" class="form-row form-row-first validate-required">
                                                            <label class="" for="billing_first_name">
                                                                First Name
                                                                <abbr title="required" class="required">*</abbr>
                                                            </label>
                                                            <asp:TextBox required="required" placeholder="First Name" runat="server" ID="TextBox1" Style="width: 60%;" class="input-text "></asp:TextBox>
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <p id="billing_last_name_field" class="form-row form-row-last validate-required">
                                                            <label class="" for="billing_last_name">
                                                                Last Name
                                                                <abbr title="required" class="required">*</abbr>
                                                            </label>
                                                            <asp:TextBox required="required" runat="server" placeholder="Last Name" ID="TextBox2" Style="width: 60%;" class="input-text "></asp:TextBox>
                                                        </p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p id="billing_company_field" class="form-row form-row-wide">
                                                            <label class="" for="billing_company">Company Name</label>
                                                            <asp:TextBox runat="server" ID="TextBox3" placeholder="Company" Style="width: 60%;" class="input-text "></asp:TextBox>
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <p id="billing_city_field" class="form-row form-row-wide address-field validate-required" data-o_class="form-row form-row-wide address-field validate-required">
                                                            <label class="" for="billing_city">
                                                                Town / City
                                                                <abbr title="required" class="required">*</abbr>
                                                            </label>
                                                            <asp:TextBox required="required" runat="server" placeholder="City" ID="TextBox4" Style="width: 60%;" class="input-text "></asp:TextBox>
                                                        </p>
                                                    </td>
                                            </table>
                                            <hr />
                                            <p id="billing_address_1_field" class="form-row form-row-wide address-field validate-required">
                                                <label class="" for="billing_address_1">
                                                    Address
                                                    <abbr title="required" class="required">*</abbr>
                                                </label>
                                                <asp:TextBox runat="server" required="required" placeholder="Current Address" TextMode="MultiLine" ID="TextBox5" Style="width: 40%;" class="input-text "></asp:TextBox>
                                            </p>

                                            <p id="billing_address_2_field" class="form-row form-row-wide address-field">
                                                <asp:TextBox runat="server" placeholder="Apartment Name (Optional)" TextMode="MultiLine" ID="TextBox6" Style="width: 40%;" class="input-text "></asp:TextBox>
                                            </p>
                                            <hr />
                                            <table style="width: 100%;">
                                                <tr>
                                                    <td>
                                                        <p id="billing_state_field" class="form-row form-row-first address-field validate-state" data-o_class="form-row form-row-first address-field validate-state">
                                                            <label class="" for="billing_state">County</label>
                                                            <asp:TextBox runat="server" required="required" ID="TextBox7" placeholder="Country" Text="Pakistan" ReadOnly="true" Style="width: 60%;" class="input-text "></asp:TextBox>
                                                        </p>
                                                    </td>
                                                    <td>
                                                        <p id="billing_postcode_field" class="form-row form-row-last address-field validate-required validate-postcode" data-o_class="form-row form-row-last address-field validate-required validate-postcode">
                                                            <label class="" for="billing_postcode">
                                                                Postcode
                                                            <abbr title="required" class="required">*</abbr>
                                                            </label>
                                                            <asp:TextBox required="required" placeholder="Postcode" runat="server" ID="TextBox8" Style="width: 60%;" class="input-text "></asp:TextBox>
                                                        </p>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td>
                                                        <p id="billing_email_field" class="form-row form-row-first validate-required validate-email">
                                                            <label class="" for="billing_email">
                                                                Email Address
                                                            <abbr title="required" class="required">*</abbr>
                                                            </label>
                                                            <asp:TextBox type="email" required="required" placeholder="Email" runat="server" ID="TextBox9" Style="width: 60%;" class="input-text "></asp:TextBox>
                                                        </p>
                                                        <asp:Label Style="margin-bottom: 10px;" ID="Label1" ForeColor="Red" runat="server" Text="You've Entered an Invalid Email Address."></asp:Label>
                                                    </td>
                                                    <td>
                                                        <p id="billing_phone_field" class="form-row form-row-last validate-required validate-phone">
                                                            <label class="" for="billing_phone">
                                                                Phone
                                                            <abbr title="required" class="required">*</abbr>
                                                            </label>
                                                            <asp:TextBox required="required" runat="server" placeholder="Phone" ID="TextBox10" Style="width: 60%;" class="input-text "></asp:TextBox>
                                                        </p>
                                                    </td>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <h3 id="order_review_heading" style="color: goldenrod">Your order</h3>
                                <div id="order_review" style="position: relative;">
                                    <table class="shop_table">
                                        <thead>
                                            <tr>
                                                <th class="product-name">Plan</th>
                                                <th class="product-total">Total</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <tr class="cart_item">
                                                <td class="product-name">
                                                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                                </td>
                                                <td class="product-total">
                                                    <span class="amount">
                                                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label></span> </td>
                                            </tr>
                                        </tbody>
                                        <tfoot>
                                            <tr class="cart-subtotal">
                                                <th>Cart Subtotal</th>
                                                <td><span class="amount">
                                                    <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label></span>
                                                </td>
                                            </tr>
                                            <tr class="shipping">
                                                <th>Shipping and Handling</th>
                                                <td>Free Shipping
                                                   
                                                    <input type="hidden" class="shipping_method" value="free_shipping" id="shipping_method_0" data-index="0" name="shipping_method[0]">
                                                </td>
                                            </tr>
                                            <tr class="order-total">
                                                <th>Order Total</th>
                                                <td><strong><span class="amount">
                                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label></span></strong> </td>
                                            </tr>
                                        </tfoot>
                                    </table>
                                    <div id="payment">
                                        <ul class="payment_methods methods">
                                            <li class="payment_method_cheque">
                                                <input type="radio" data-order_button_text="" checked="checked" value="cheque" name="payment_method" class="input-radio" id="payment_method_cheque">
                                                <label for="payment_method_cheque">Cheque Payment </label>
                                                <div style="display: none;" class="payment_box payment_method_cheque">
                                                    <p>Please send your cheque to Store Name, Store Street, Store Town, Store State / County, Store Postcode.</p>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="form-row place-order">
                                            <asp:Button runat="server" Text="Place Order" ID="Button1" class="button alt" OnClick="Button1_Click" />
                                        </div>
                                        <div class="clear"></div>
                                    </div>
                                </div>
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
    </form>
</body>
</html>
