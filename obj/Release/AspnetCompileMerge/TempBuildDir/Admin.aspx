<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="WebApplication6.Admin" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <meta http-equiv="cache-control" content="max-age=43200" />

    <title>Admin</title>
    <link rel="icon" href="img/icon.png"/>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/JavaScript1.js"></script>
    <!-- Bootstrap Core CSS -->
    <!-- Custom CSS -->
    <link href="css/bootstrap.css" rel="stylesheet" />
    <link href="css/shop-homepage.css" rel="stylesheet" />
    <link href="css/bootstrap.min.css" rel="stylesheet" />

    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
        <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
        <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <style>
        /*body {
            background-image: -webkit-gradient( linear, left top, left bottom, color-stop(0, rgb(94, 188, 217)), color-stop(1, rgb(200, 127, 255)), color-stop(1, rgb(168, 255, 248)), color-stop(1, rgb(202, 255, 255)) );
            background-image: -o-linear-gradient(bottom, rgb(94, 188, 217) 0%, rgb(200, 127, 255) 100%, rgb(168, 255, 248) 100%, rgb(202, 255, 255) 100%);
            background-image: -moz-linear-gradient(bottom, rgb(94, 188, 217) 0%, rgb(200, 127, 255) 100%, rgb(168, 255, 248) 100%, rgb(202, 255, 255) 100%);
            background-image: -webkit-linear-gradient(bottom, rgb(94, 188, 217) 0%, rgb(200, 127, 255) 100%, rgb(168, 255, 248) 100%, rgb(202, 255, 255) 100%);
            background-image: -ms-linear-gradient(bottom, rgb(94, 188, 217) 0%, rgb(200, 127, 255) 100%, rgb(168, 255, 248) 100%, rgb(202, 255, 255) 100%);
            background-image: linear-gradient(to bottom, rgb(94, 188, 217) 0%, rgb(200, 127, 255) 100%, rgb(168, 255, 248) 100%, rgb(202, 255, 255) 100%);
        }*/
        * {
            box-sizing: border-box;
        }

        .row1::after {
            content: "";
            clear: both;
            display: block;
        }

        [class*="col-"] {
            float: left;
            padding: 15px;
        }

        html {
            font-family: "Lucida Sans", sans-serif;
        }

        .header {
            background-color: #9933cc;
            color: #ffffff;
            padding: 15px;
        }

        .menu ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }

        .menu a {
            padding: 8px;
            margin-bottom: 7px;
            background-color: #33b5e5;
            color: #ffffff;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
        }

        .menu li:hover {
            background-color: #0099cc;
        }

        .aside {
            background-color: #33b5e5;
            padding: 15px;
            color: #ffffff;
            text-align: center;
            font-size: 14px;
            box-shadow: 0 1px 3px rgba(0,0,0,0.12), 0 1px 2px rgba(0,0,0,0.24);
        }

        .footer {
            background-color: #0099cc;
            color: #ffffff;
            text-align: center;
            font-size: 12px;
            padding: 15px;
        }
        /* For desktop: */
        .col-1 {
            width: 8.33%;
        }

        .col-2 {
            width: 16.66%;
        }

        .col-3 {
            width: 12%;
        }

        .col-4 {
            width: 33.33%;
        }

        .col-5 {
            width: 41.66%;
        }

        .col-6 {
            width: 50%;
        }

        .col-7 {
            width: 58.33%;
        }

        .col-8 {
            width: 66.66%;
        }

        .col-9 {
            width: 75%;
        }

        .col-10 {
            width: 83.33%;
        }

        .col-11 {
            width: 91.66%;
        }

        .col-12 {
            width: 100%;
        }

        a {
            display: block;
        }

        .container {
            margin-left: 220px !important;
        }

        @media only screen and (max-width: 768px) {
            [class*="col-"] {
                width: 100%;
            }

            .list {
                width: 100% !important;
            }

            .container {
                margin-left: auto !important;
            }

            .Kk {
                margin-left: 4% !important;
            }

            #FileUpload1 {
                margin-left: 40% !important;
            }

            #FileUpload2 {
                margin-left: 45% !important;
                margin-bottom: 10px !important;
            }

            #pice {
                float: left;
                margin-left: 47% !important;
                margin-bottom: 10px !important;
            }

            #cancelnew1 {
                float: left;
                margin-left: 47% !important;
            }

            .list {
                margin-left: 0 !important;
            }

            .appl {
                width: 90% !important;
            }
        }

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
                    content: attr(data-th);
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

            .after {
                margin-left: 4%;
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

            .after {
                margin-left: 4%;
            }
        }

        @media (max-width: 750px) {
            .rwd-table th, .rwd-table td {
                text-align: left !important;
            }

            .after {
                margin-left: 4%;
            }
            #customorderinfo{
                margin-left:0!important;
                width:100%!important;
            }
        }

        .rwd-table th, .rwd-table td:before {
            color: #dd5;
        }

        .auto-style1 {
            width: 160px;
        }

        #effect {
            background-color: lightblue;
            display: block;
            -webkit-filter: blur(20px);
            -moz-filter: blur(15px);
            -ms-filter: blur(15px);
            filter: blur(15px);
            opacity: 0.75;
        }

        /*#show4 .rwd-table th,#show4 .rwd-table td {
            display: block;
            padding: .25em .5em;
        }

        #show4 .rwd-table td:before {
            display: none;
        }

            #show4 .rwd-table td:before {
                display: none;
            }

            #show4 .rwd-table td:before {
                content: attr(data-th);
                font-weight: bold;
                width: 6.5em;
                display: inline-block;
            }
           #show4 .rwd-table th {
                display: none;
            }*/
        .custom {
            display: block;
            float: left;
            padding: 10px;
            width: 45%;
        }

        .custom1 {
            display: inline-block;
            padding: 10px;
            width: 45%;
        }

            .custom span, .custom1 span {
                width: 100px;
                word-wrap: break-word;
                word-break: break-word;
                display: inline-block;
            }
    </style>
</head>
<body>
    <form runat="server">
        <div id="customorderinfo" style="display: none; position: absolute; z-index: 1000; margin-left: 20%; width: 60%; overflow: auto; background-color: white; border: solid 1px #292929; height: 500px; padding: 20px">
            <div style="text-align: center; margin-bottom: 20px; border-bottom: solid 2px">
                <h3>Details
                </h3>
            </div>
            <div id="toapp" style="width: 100%; margin-bottom: 10px;">
                <asp:Label ID="Label55" runat="server" Style="margin-left: 15%; width: 30%; word-break: break-word; word-wrap: break-word; display: -webkit-inline-box" Text="Label"></asp:Label>
                <asp:Label ID="Label56" Style="display: -webkit-inline-box; margin-left: 10%; text-align: center;word-wrap:break-word;word-break:break-word" runat="server" Text="Label"></asp:Label>
            </div>
            <div id="toappst" style="width: 100%; text-align: center; border-top: solid 2px; border-bottom: solid 2px; margin-bottom: 10px">
                <h3>Items</h3>
            </div>
            <div id="appbefore1" style="text-align: center;">
                <input id="closecustom" type="button" value="Close" />
            </div>
        </div>
        <div id="editpicture" style="visibility: hidden; z-index: 100; overflow: auto; position: absolute; left: 10%; z-index: 100; background-color: white; width: 80%; height: 650px; border: ridge;">
            <div style="margin-top: 3%">
                <asp:HiddenField ID="HiddenField3" runat="server" />
                <span style="font-size: x-large; margin-left: 10%">Plan: </span>
                <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
            </div>
            <asp:Image ID="imgtt" Style="width: 80%; height: 70%; margin-left: 10%; margin-bottom: 10px; margin-top: 2%;" runat="server" />
            <div class="text-right">
                <asp:FileUpload ID="FileUpload2" runat="server" Style="float: left; margin-left: 70%; width: 92px;" />
                <asp:Button Style="margin-right: 1%;" ID="pice" OnClick="pice_Click" runat="server" Text="Save" />
                <a id="cancelnew1" style="margin-right: 10%;" class="btn btn-success">Cancel</a>
            </div>
        </div>
        <div id="effect" style="visibility: hidden; position: fixed; left: 0; right: 0; top: 0; bottom: 0; z-index: 90">
        </div>
        <div id="addnewplan" style="visibility: hidden; overflow: auto; position: absolute; left: 10%; z-index: 100; background-color: white; width: 80%; height: 500px; border: ridge;">
            <table style="width: 90%; margin-left: 5%; margin-top: 10px; color: black; overflow: auto; table-layout: auto; border-collapse: separate; border-spacing: 20px; empty-cells: show; caption-side: top;">
                <tr>
                    <td style="font-size: large; color: black">Name</td>
                    <td>
                        <asp:TextBox class="appl" ID="TextBox6" Style="width: 30%;" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: large; color: black">Price</td>
                    <td>
                        <asp:TextBox class="appl" ID="TextBox7" Style="width: 30%;" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: large; color: black">Description</td>
                    <td>
                        <asp:TextBox class="appl" ID="TextBox8" Style="width: 50%; height: 80px;" TextMode="MultiLine" runat="server"></asp:TextBox>
                    </td>
                </tr>
            </table>
            <div class="text-right">
                <asp:FileUpload Style="float: left; margin-left: 60%; margin-bottom: 15px; width: 93px;" ID="FileUpload1" runat="server" />
                <asp:Button OnClick="Button1_Click" Style="margin-right: 8%; margin-bottom: 15px;" ID="Button1" runat="server" Text="Add Plan" />
                <a id="cancelnew" style="float: right; margin-right: 7%;" class="btn btn-success">Cancel</a>
            </div>
        </div>
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">

            <div class="container" style="top: 70px">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="Home.aspx">Home</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="#">About</a>
                        </li>
                        <li>
                            <a href="#">Services</a>
                        </li>
                        <li>
                            <a href="#" style="margin-right: 50px;">
                                <asp:Button ID="Button2" BackColor="#222222" BorderColor="#222222" OnClick="Button2_Click" ForeColor="#9d9d99" runat="server" Text="Logout" />
                            </a>
                        </li>
                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- Page Content -->
        <div class="col-3 menu" style="position: relative; z-index: 50">
            <a id="loadp" href="#" style="text-decoration: none; z-index: 100; color: white; text-align: center;">Plans & Comments</a>
            <a id="loado" href="#" style="text-decoration: none; z-index: 100; color: white; text-align: center;">Orders</a>
            <a id="loade" href="#" style="text-decoration: none; color: white; z-index: 100; text-align: center;">Emails</a>
            <a id="loadc" href="#" style="text-decoration: none; color: white; z-index: 100; text-align: center;">Custom Info</a>
            <a id="loadci" href="#" style="text-decoration: none; color: white; z-index: 100; text-align: center;">Custom Items</a>
        </div>
        <div class="row1">
            <div id="K" style="position: relative" class="dropdown">
                <button style="margin-left: 4%;" class="btn btn-primary dropdown-toggle" type="button" data-toggle="dropdown">
                    Plans
                    <span class="caret"></span>
                </button>
                <ul id="haha2" class="dropdown-menu Kk" style="position: absolute; margin-left: 16%; overflow: auto; max-height: 100px">
                    <li id="haha3" class="Kk1"><a id="name" onclick="return false" href="#">HTML</a>
                        <asp:HiddenField ID="HiddenField2" runat="server" />
                    </li>
                </ul>
            </div>
            <div id="k1" class="container">
                <div id="temp" class="col-sm-4 col-lg-4 col-md-4 list" style="width: 100%;">
                    <div class="thumbnail">
                        <div id="temp1" class="caption toapp" style="height: auto; width: auto">
                            <table style="width: 90%; margin-left: 5%; margin-top: 10px; color: black; overflow: auto; table-layout: auto; border-collapse: separate; border-spacing: 20px; empty-cells: show; caption-side: top;">
                                <tr>
                                    <td style="font-size: large; color: black">Name</td>
                                    <td>
                                        <asp:TextBox class="appl" ID="TextBox3" Style="width: 30%;" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: large; color: black">Price</td>
                                    <td>
                                        <asp:TextBox class="appl" ID="TextBox4" Style="width: 30%;" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: large; color: black">Description</td>
                                    <td>
                                        <asp:TextBox class="appl" ID="TextBox5" Style="width: 50%; height: 80px;" TextMode="MultiLine" runat="server"></asp:TextBox>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: large; color: black">Link</td>
                                    <td>
                                        <a id="loadlink" href="#">Loading</a>
                                    </td>
                                </tr>
                                <tr>
                                    <td style="font-size: large; color: black">Order Link</td>
                                    <td>
                                        <a id="orderlink" href="#">Loading</a>
                                    </td>
                                </tr>
                            </table>
                            <asp:Label ID="Label1" runat="server" Style="margin-left: 7%" Font-Size="Larger" Font-Bold="true" Text="Image:"></asp:Label>
                            <img alt="" id="imgt" src="Solar-Modules.jpg" style="margin-left: 25%; margin-bottom: 10px; width: 100px; height: 100px;" />
                            <div class="text-right" style="margin-right: 4%;">
                                <a id="editpic" style="margin-bottom: 15px" class="btn btn-success">Edit Picture</a>
                                <a id="Deletebutton" style="margin-bottom: 15px" class="btn btn-success">Delete Plan</a>
                                <a id="EditButton" style="margin-bottom: 15px" class="btn btn-success">Save Changes</a>
                            </div>
                            <asp:HiddenField ID="planno" runat="server" />
                            <span style="font-size: x-large">Comes With:</span>
                            <div id="show1">
                                <table id="table1" class="rwd-table" style="margin-left: 1%; width: 98%;">
                                    <tr style="background: #333; color: #fff;">
                                        <th>Item</th>
                                        <th>Load</th>
                                        <th>Delete</th>
                                        <th>Edit</th>
                                    </tr>
                                    <tr id="tocopy" class="asd" style="color: black">
                                        <asp:HiddenField ID="HiddenField1" runat="server" />
                                        <td data-th="Item">
                                            <asp:TextBox class="appl" Style="text-align: center" ID="TextBox1" runat="server"></asp:TextBox>
                                        </td>
                                        <td data-th="Load">
                                            <asp:TextBox class="appl" ID="TextBox2" Style="text-align: center; width: 100px" runat="server"></asp:TextBox>
                                        </td>
                                        <td data-th="Delete"><a id="haha" class="btn btn-success qwe">Delete</a></td>
                                        <td data-th="Edit"><a id="haha1" class="btn btn-success qwe">Save</a></td>
                                    </tr>
                                    <tr id="addnew" style="color: black">
                                        <td id="itemadd" data-th="Item">
                                            <input class="appl" id="additem" type="text" style="width: 190px; text-align: center" /></td>
                                        <td id="quantityadd" data-th="Quantity">
                                            <input class="appl" id="addquant" style="width: 100px; text-align: center" type="text" /></td>
                                        <td data-th="Edit"><a id="add" class="btn btn-success">Add</a></td>
                                    </tr>
                                </table>
                            </div>
                            <span style="font-size: x-large">Manages:</span>
                            <div id="show2">
                                <table id="table2" class="rwd-table" style="margin-left: 1%; width: 98%;">
                                    <tr style="background: #333; color: #fff;">
                                        <th>Item</th>
                                        <th>Quantity</th>
                                        <th>Delete</th>
                                        <th>Edit</th>
                                    </tr>
                                    <tr id="tocopy2" class="asd" style="color: black">
                                        <asp:HiddenField ID="HiddenField4" runat="server" />
                                        <td data-th="Item">
                                            <asp:TextBox class="appl" Style="text-align: center" ID="TextBox9" runat="server"></asp:TextBox>
                                        </td>
                                        <td data-th="Quantity">
                                            <asp:TextBox class="appl" ID="TextBox10" Style="text-align: center; width: 100px" runat="server"></asp:TextBox>
                                        </td>
                                        <td data-th="Delete"><a id="haha4" class="btn btn-success qwe">Delete</a></td>
                                        <td data-th="Edit"><a id="haha5" class="btn btn-success qwe">Save</a></td>
                                    </tr>
                                    <tr id="addnew2" style="color: black">
                                        <td id="itemadd2" data-th="Item">
                                            <input class="appl" id="additem2" type="text" style="width: 190px; text-align: center" /></td>
                                        <td id="quantityadd2" data-th="Quantity">
                                            <input class="appl" id="addquant2" style="width: 100px; text-align: center" type="text" /></td>
                                        <td data-th="Edit"><a id="add2" class="btn btn-success">Add</a></td>
                                    </tr>
                                </table>
                            </div>
                            <span style="font-size: x-large;">Comments:</span>
                            <div id="comments" style="margin-top: 10px;">
                                <div id="comments1" class="row commentf">
                                    <div class="col-md-12" style="text-align: left">
                                        <table style="width: 100%; margin-left: 5%;">
                                            <tr>
                                                <td class="auto-style1">Comment ID: </td>
                                                <td>
                                                    <asp:Label ID="Label6" runat="server" Text="Loading"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style1">Name: </td>
                                                <td>
                                                    <asp:Label ID="Label2" runat="server" Text="Loading"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style1">Email: </td>
                                                <td>
                                                    <asp:Label ID="Label3" runat="server" Text="Loading"></asp:Label></td>
                                            </tr>
                                            <tr>
                                                <td class="auto-style1">Phone: </td>
                                                <td>
                                                    <asp:Label ID="Label5" runat="server" Text="Loading"></asp:Label></td>
                                            </tr>
                                        </table>
                                    </div>
                                    <div style="float: left; font-size: medium; margin-left: 6%; margin-right: 15px; margin-top: -15px; margin-bottom: 10px; word-wrap: normal; word-break: break-all;">
                                        Comment:
                                        <asp:Label ID="Label4" runat="server" Text="Loading"></asp:Label>
                                    </div>
                                    <a style="float: right; margin-right: 3%" id="deletecomment" class="btn btn-success">Delete</a>
                                </div>
                            </div>
                            <div class="row" style="margin-top: 10px; z-index: 1000">
                                <a id="Button3" class="btn btn-success" onclick="return false" style="margin-left: 2%;">Load Previous</a>
                                <a id="Button4" class="btn btn-success" onclick="return false" style="float: right; margin-right: 2%;">Load Next</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="k2" class="container" style="display: none">
                <div id="temp2" class="col-sm-4 col-lg-4 col-md-4 list" style="width: 40%; background-color: aquamarine; margin-left: 7%; margin-bottom: 20px;">
                    <div class="thumbnail">
                        <div id="temp3" class="caption orderclass" style="height: 500px; overflow-y: auto; width: auto; font-size: medium; word-wrap: hyphenate; word-break: break-word;">
                            <table style="width: 100%; margin-left: 2%;">
                                <tr>
                                    <td class="auto-style1">Order ID: </td>
                                    <td>
                                        <asp:Label ID="Label21" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">First Name: </td>
                                    <td>
                                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Last Name: </td>
                                    <td>
                                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Company: </td>
                                    <td>
                                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">City: </td>
                                    <td>
                                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Address: </td>
                                    <td>
                                        <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Apartment: </td>
                                    <td>
                                        <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Country: </td>
                                    <td>
                                        <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Post Code: </td>
                                    <td>
                                        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Email: </td>
                                    <td>
                                        <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Phone: </td>
                                    <td>
                                        <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Plan: </td>
                                    <td>
                                        <asp:Label ID="Label18" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Price: </td>
                                    <td>
                                        <asp:Label ID="Label19" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Time: </td>
                                    <td>
                                        <asp:Label ID="Label22" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                                <tr>
                                    <td class="auto-style1">Status: </td>
                                    <td>
                                        <asp:Label ID="Label20" runat="server" Text="Label"></asp:Label></td>
                                </tr>
                            </table>
                            <div class="text-right" style="margin-right: 2%;">
                                <a id="confirmorder" class="btn btn-success">Confirm</a>
                                <a id="cancelorder" class="btn btn-success">Cancel</a>
                                <a id="deleteorder" class="btn btn-success">Delete</a>
                                <a id="customdetails" style="display: none; float: right; margin-left: 5px;" class="btn btn-success">Custom Details</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="k3" class="container" style="display: none">
                <div id="temp4" class="col-sm-12 col-lg-12 col-md-12 list" style="margin-bottom: 20px;">
                    <div class="thumbnail">
                        <div id="show3">
                            <h3 style="margin-left: 10px;">Emails:</h3>
                            <table id="table3" class="rwd-table emailta" style="margin-left: 1%; width: 98%;">
                                <tr style="background: #333; color: #fff;">
                                    <th>Email</th>
                                    <th>Delete</th>
                                    <th>Edit</th>
                                </tr>
                                <tr id="tocopy3" class="asd" style="color: black">
                                    <asp:HiddenField ID="HiddenField5" runat="server" />
                                    <td data-th="Email">
                                        <asp:TextBox class="appl" Style="text-align: center" ID="TextBox11" runat="server"></asp:TextBox>
                                    </td>
                                    <td data-th="Delete"><a id="haha6" class="btn btn-success qwe">Delete</a></td>
                                    <td data-th="Edit"><a id="haha7" class="btn btn-success qwe">Save</a></td>
                                </tr>
                                <tr id="addnew3" style="color: black">
                                    <td id="itemadd3" data-th="Email">
                                        <input class="appl" id="additem3" type="email" style="width: 190px; text-align: center" /></td>
                                    <td data-th="Edit"><a id="add3" class="btn btn-success">Add</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
            <div id="k4" class="container" style="display: none">
                <div id="temp5" class="col-sm-12 col-lg-12 col-md-12 list" style="margin-bottom: 20px;">
                    <div class="thumbnail">
                        <div id="show4">
                            <h3 style="margin-left: 10px;">Custom Plan Information:</h3>
                            <asp:Label ID="Label57" runat="server" Text="Stand Rate(Min):"></asp:Label>
                            <asp:TextBox ID="TextBox47" runat="server"></asp:TextBox>
                            <input id="standhandle" onclick="return false" type="button" value="save" />
                            <div id="tocopy4" class="col-md-12 customedit">
                                <asp:HiddenField ID="HiddenField6" runat="server" />
                                <div class="custom" style="padding: 10px">
                                    <asp:Label ID="Label23" runat="server" Text="Watt:"></asp:Label>
                                    <asp:TextBox ID="TextBox12" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label24" runat="server" Text="Hybrid Ups:"></asp:Label>
                                    <asp:TextBox ID="TextBox13" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label25" runat="server" Text="Battery Dry:"></asp:Label>
                                    <asp:TextBox ID="TextBox14" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label26" runat="server" Text="Lead Acid:"></asp:Label>
                                    <asp:TextBox ID="TextBox15" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label27" runat="server" Text="Wire(Hyb) R.P.M:"></asp:Label>
                                    <asp:TextBox ID="TextBox16" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label28" runat="server" Text="Wire(Non) R.P.M:"></asp:Label>
                                    <asp:TextBox ID="TextBox17" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label29" runat="server" Text="Stand Rate(Max):"></asp:Label>
                                    <asp:TextBox ID="TextBox18" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label30" runat="server" Text="Electrition + Rent(Hyb):"></asp:Label>
                                    <asp:TextBox ID="TextBox19" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label31" runat="server" Text="Electrition + Rent(Non):"></asp:Label>
                                    <asp:TextBox ID="TextBox20" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label32" runat="server" Text="Solar Extra Wiring:"></asp:Label>
                                    <asp:TextBox ID="TextBox21" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label33" runat="server" Text="Non-Hybrid:"></asp:Label>
                                    <asp:TextBox ID="TextBox22" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label34" runat="server" Text="Minimum Battery:"></asp:Label>
                                    <asp:TextBox ID="TextBox23" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label47" runat="server" Text="Solar Price/Watt:"></asp:Label>
                                    <asp:TextBox ID="TextBox39" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label48" runat="server" Text="Inverter:"></asp:Label>
                                    <asp:TextBox ID="TextBox40" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label49" runat="server" Text="Charger:"></asp:Label>
                                    <asp:TextBox ID="TextBox41" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label53" runat="server" Text="Charge Controller:"></asp:Label>
                                    <asp:TextBox ID="TextBox45" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div style="display: block; text-align: center; padding: 15px;">
                                    <input id="editcustom" style="margin-right: 10px;" type="button" value="Save" />
                                    <input id="deletecustom" style="margin-right: 50px" type="button" value="Delete" />
                                </div>
                                <div style="width: 100%; border: solid 1px; position: relative">
                                </div>
                            </div>
                            <div id="appbefore" class="col-md-12 customedit">
                                <div class="custom" style="padding: 10px">
                                    <asp:Label ID="Label35" runat="server" Text="Watt:"></asp:Label>
                                    <asp:TextBox ID="TextBox24" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label36" runat="server" Text="Hybrid Ups:"></asp:Label>
                                    <asp:TextBox ID="TextBox25" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label37" runat="server" Text="Battery Dry:"></asp:Label>
                                    <asp:TextBox ID="TextBox26" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label38" runat="server" Text="Lead Acid:"></asp:Label>
                                    <asp:TextBox ID="TextBox27" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label39" runat="server" Text="Wire(Hyb) R.P.M:"></asp:Label>
                                    <asp:TextBox ID="TextBox28" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label40" runat="server" Text="Wire(Non) R.P.M:"></asp:Label>
                                    <asp:TextBox ID="TextBox29" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label41" runat="server" Text="Stand Rate(Max):"></asp:Label>
                                    <asp:TextBox ID="TextBox30" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label42" runat="server" Text="Electrition + Rent(Hyb):"></asp:Label>
                                    <asp:TextBox ID="TextBox31" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label43" runat="server" Text="Electrition + Rent(Non):"></asp:Label>
                                    <asp:TextBox ID="TextBox32" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label44" runat="server" Text="Solar Extra Wiring:"></asp:Label>
                                    <asp:TextBox ID="TextBox33" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label45" runat="server" Text="Non-Hybrid:"></asp:Label>
                                    <asp:TextBox ID="TextBox34" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label46" runat="server" Text="Minimum Battery:"></asp:Label>
                                    <asp:TextBox ID="TextBox35" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label50" runat="server" Text="Solar Price/Watt:"></asp:Label>
                                    <asp:TextBox ID="TextBox42" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label51" runat="server" Text="Inverter:"></asp:Label>
                                    <asp:TextBox ID="TextBox43" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom">
                                    <asp:Label ID="Label52" runat="server" Text="Charger:"></asp:Label>
                                    <asp:TextBox ID="TextBox44" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div class="custom1">
                                    <asp:Label ID="Label54" runat="server" Text="Charge Controller:"></asp:Label>
                                    <asp:TextBox ID="TextBox46" Style="width: 70%; margin-left: 5px;" runat="server"></asp:TextBox>
                                </div>
                                <div style="display: block; text-align: center; padding: 15px;">
                                    <input id="addcustom" style="margin-right: 60px" type="button" value="Add" />
                                </div>
                                <div style="width: 100%; border: solid 1px; position: relative">
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div id="k5" class="container" style="display: none">
                <div id="temp6" class="col-sm-12 col-lg-12 col-md-12 list" style="margin-bottom: 20px;">
                    <div class="thumbnail">
                        <div id="show5">
                            <h3 style="margin-left: 10px;">Custom Plan Items:</h3>
                            <table id="table5" class="rwd-table" style="margin-left: 1%; width: 98%;">
                                <tr style="background: #333; color: #fff;">
                                    <th>Name</th>
                                    <th>Min Load</th>
                                    <th>Max Load</th>
                                    <th>Delete</th>
                                    <th>Edit</th>
                                </tr>
                                <tr id="tocopy5" class="customitems" style="color: black">
                                    <asp:HiddenField ID="HiddenField7" runat="server" />
                                    <td data-th="Name">
                                        <asp:TextBox class="appl" Style="text-align: center" ID="TextBox36" runat="server"></asp:TextBox>
                                    </td>
                                    <td data-th="Min Load">
                                        <asp:TextBox class="appl" Style="text-align: center" ID="TextBox37" runat="server"></asp:TextBox>
                                    </td>
                                    <td data-th="Max Load">
                                        <asp:TextBox class="appl" Style="text-align: center" ID="TextBox38" runat="server"></asp:TextBox>
                                    </td>
                                    <td data-th="Delete"><a id="haha8" class="btn btn-success qwe">Delete</a></td>
                                    <td data-th="Edit"><a id="haha9" class="btn btn-success qwe">Save</a></td>
                                </tr>
                                <tr id="addnew5" class="customitemsadd" style="color: black">
                                    <td id="itemadd5" data-th="Name">
                                        <input class="appl" id="additem5" type="email" style="width: 190px; text-align: center" /></td>
                                    <td id="itemadd6" data-th="Min ">
                                        <input class="appl" id="additem6" type="email" style="width: 190px; text-align: center" /></td>
                                    <td id="itemadd7" data-th="Email">
                                        <input class="appl" id="additem7" type="email" style="width: 190px; text-align: center" /></td>
                                    <td data-th="Edit"><a id="add5" class="btn btn-success">Add</a></td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <a id="addplan" style="float:right;margin-right:20%;" class="btn btn-success qwe">Add Plan</a>
        <!-- /.container -->

        <div class="container">

            <hr>

            <!-- Footer -->
            <footer>
                <div class="row">
                    <div class="col-lg-12">
                        <p>Copyright &copy; Liva Corporations</p>
                    </div>
                </div>
            </footer>

        </div>
        <!-- /.container -->

        <!-- jQuery -->
        <script src="js/jquery.js"></script>

        <!-- Bootstrap Core JavaScript -->
        <script src="js/bootstrap.min.js"></script>
    </form>
</body>

</html>
