var name = "";
var email = "";
var comment = "";
var phone = "";
var pid;
var start = 1;
var end = 10;
var table1;
var table2;
var table3;
var table4;
var number;
function timeSince(date) {

    var seconds = Math.ceil((new Date() - date) / 1000);

    var interval = Math.ceil(seconds / 31536000);
    if (interval > 1) {
        return interval + " years ago";
    }
    interval = Math.ceil(seconds / 2592000);
    if (interval > 1) {
        return interval + " months ago";
    }
    interval = Math.ceil(seconds / 86400);
    if (interval > 1) {
        return interval + " days ago";
    }
    interval = Math.ceil(seconds / 3600);
    if (interval > 1) {
        return interval + " hours ago";
    }
    interval = Math.ceil(seconds / 60);
    if (interval > 1) {
        return interval + " minutes ago";
    }
    return "Just now";
}
function load() {
    $.ajax({
        type: "POST",
        url: "Plandetails.aspx/comm",
        data: JSON.stringify({ pid: pid, start: start, end: end }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess
    });
}
function gc() {
    $.ajax({
        type: "POST",
        url: "Plandetails.aspx/comm1",
        data: JSON.stringify({ pid: pid }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: getcount
    });
}
function getcount(response) {
    number = response.d;
    if (number <= end)
        $("#Button2").fadeOut(100);
    else
        $("#Button2").fadeIn(100);
    if (start > 1)
        $("#Button3").fadeIn(100);
    else
        $("#Button3").fadeOut(100);
}
function OnSuccess(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    if (table1 == null)
        table1 = $("#show .single-promo").eq(0).clone(true);
    $("#show .single-promo").remove();
    customers.each(function () {
        var customer = $(this);
        $("#Label1", table1).html(customer.find("Name").text());
        $("#Label3", table1).html(customer.find("comment").text());
        $("#Label2", table1).html(timeSince(new Date( customer.find("time").text())));
        $("#HiddenField2", table1).val(customer.find("time").text());
        $(table1).show();
        $("#show").append(table1);
        table1 = $("#show .single-promo").eq(0).clone(true);
    });
    gc();
}
function reloadtime() {
    $("#show .row").each(function () {
        $(this).find("#Label2").html(timeSince(new Date( $(this).find("#HiddenField2").val())));
    });
}
function insert() {
    name = $("#Name").val();
    email = $("#Email").val();
    phone = $("#TextBox2").val();
    comment = $("#TextBox1").val();
    var dt = new Date();
    if (start > 1) {
        start = 1;
        end = 10;
        load();
        $('html, body').animate({
            scrollTop: $("#show2").offset().top
        }, 500);
    }
    $.ajax({
        type: "POST",
        url: "Plandetails.aspx/comm2",
        async: false,
        data: JSON.stringify({ name: name, email: email, mobile: phone, comment: comment, pid: pid }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (r) {
            $("#Label1", table1).html(name);
            $("#Label3", table1).html(comment);
            $("#Label2", table1).html(timeSince(dt));
            $("#HiddenField2", table1).val(dt);
            $(table1).show();
            $("#show").prepend(table1);
            table1 = $("#show .single-promo").eq(0).clone(true);
            $("#show .single-promo").eq(0).hide().slideDown(500);
            $('html, body').animate({
                scrollTop: $("#show2").offset().top
            }, 500);
        }
    });
    var no = $("#show .single-promo").length;
    if (no > 10) {
        $("#show .single-promo").last().remove();
        gc();
    }
}
function populatetable() {
    $.ajax({
        type: "POST",
        url: "Plandetails.aspx/comm3",
        data: JSON.stringify({ pid: pid }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess1
    });
}
function OnSuccess1(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    if (table2 == null)
        table2 = $("#table1 #tocopy").eq(0).clone(true);
    $("#table1 #tocopy").remove();
    customers.each(function () {
        var customer = $(this);
        $("#item", table2).html(customer.find("Type").text());
        $("#quan", table2).html(customer.find("Quantity").text());
        $(table2).show();
        $("#table1").append(table2);
        table2 = $("#table1 #tocopy").eq(0).clone(true);
    });
}

function populatetable1() {
    $.ajax({
        type: "POST",
        url: "Plandetails.aspx/comm4",
        data: JSON.stringify({ pid: pid }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess5
    });
}
function OnSuccess5(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    if (table3 == null)
        table3 = $("#table2 #tocopy2").eq(0).clone(true);
    if (table4 == null)
        table4 = $("#table2 #add").eq(0).clone(true);
    $("#table2 #tocopy2").remove();
    $("#table2 #add").remove();
    customers.each(function () {
        var customer = $(this);
        $("#item2", table3).html(customer.find("Type").text());
        $("#quan2", table3).html(customer.find("Quantity").text());
        $(table3).show();
        if (customer.find("Type").text().toLowerCase() == "alternate")
        {
            $(table4).show();
            $("#table2").append(table4);
            table4 = $("#table2 #add").eq(0).clone(true);
        }
        else
            $("#table2").append(table3);
        table3 = $("#table2 #tocopy2").eq(0).clone(true);
    });
}
function evn() {
    $("#menu").hide();
    $("#show3").click(function () {
        $("#menu").slideToggle();
    });
    $("#orderbutton").click(function () {
        window.location.href = "Order.aspx";
    });
    pid = $("#HiddenField1").val();
    populatetable();
    populatetable1();
    $("#Commentbox").hide();
    $("#Button3").hide();
    $("#Button2").hide();
    gc();
    $("#Button2").click(function () {
        gc();
        if (number > end) {
            start += 10;
            end += 10;
            gc();
            load();
            $('html, body').animate({
                scrollTop: $("#show2").offset().top
            }, 500);
        }
    });
    $("#Button3").click(function () {
        if (start > 1) {
            start -= 10;
            end -= 10;
            load();
            gc();
            $('html, body').animate({
                scrollTop: $("#show2").offset().top
            }, 500);
        }
    });
    $("#haha").click(function () {
        $("#Commentbox").slideToggle(500);

    });
    $('#Button1').click(function (e) {
        if ($("#Name").val() != "" && $("#Email").val() != "" && $("#TextBox2").val() != "" && $("#cc").val() != "") {
            e.preventDefault();
            insert();
        }
    });
    load();
    $(function () {
        setInterval(reloadtime, 5000);
    });
}
$(document).ready(evn);
