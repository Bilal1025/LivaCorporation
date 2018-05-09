var table1;
var table2;
var table3;
var pid;
var handler = 0;
var item;
var quantity;
var planid;
var table4
var table5;
var table6;
var table7;
var table8;
var table9;
var table10;
var table11;
var table12;
var table13;
var table14;
var table15;
var table16;
var fload;
var start = 1;
var end = 10;
function load1() {
    $.ajax({
        type: "POST",
        url: "Admin.aspx/comm",
        data: JSON.stringify({ id: 1 }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess1
    });
}
function load5() {
    $.ajax({
        type: "POST",
        url: "Plandetails.aspx/comm",
        data: JSON.stringify({ pid: fload, start: start, end: end }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess5
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
        $("#Button4").fadeOut(100);
    else
        $("#Button4").fadeIn(100);
    if (start > 1)
        $("#Button3").fadeIn(100);
    else
        $("#Button3").fadeOut(100);
}
function OnSuccess5(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    if (table6 == null)
        table6 = $("#comments #comments1").eq(0).clone(true);
    $("#comments #comments1").remove();
    customers.each(function () {
        var customer = $(this);
        $("#Label2", table6).html(customer.find("Name").text());
        $("#Label4", table6).html(customer.find("comment").text());
        $("#Label5", table6).html(customer.find("mobile").text());
        $("#Label3", table6).html(customer.find("email").text());
        $("#Label6", table6).html(customer.find("rid").text());
        $(table6).show();
        $("#comments").append(table6);
        table6 = $("#comments #comments1").eq(0).clone(true);
    });
}
function OnSuccess1(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    if (table2 == null)
        table2 = $("#table2 #tocopye").eq(0).clone(true);
    $("#table2 #tocopye").remove();
    customers.each(function () {
        var customer = $(this);
        $("#id1", table2).html(customer.find("id").text());
        $("#Text1", table2).val(customer.find("Type").text());
        $("#Text2", table2).val(customer.find("Quantity").text());
        $(table2).show();
        $("#table2 tr:first-child").after(table2);
        table2 = $("#table2 #tocopye").eq(0).clone(true);
    });
}
function load2() {
    $.ajax({
        type: "POST",
        url: "Admin.aspx/comm1",
        data: JSON.stringify({ plan: fload }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess2
    });
}
function OnSuccess2(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    customers.each(function () {
        var customer = $(this);
        $("#TextBox3").val(customer.find("name").text());
        $("#TextBox4").val(customer.find("price").text());
        $("#TextBox5").val(customer.find("descrp").text());
        $("#loadlink").html("Plandetails.aspx?id=" + customer.find("plan").text());
        $("#loadlink").attr('href', "Plandetails.aspx?id=" + customer.find("plan").text());
        $("#orderlink").html("Order.aspx?id=" + customer.find("plan").text());
        $("#orderlink").attr('href', "Order.aspx?id=" + customer.find("plan").text());
        $("#imgt").attr('src', "/imagedata/" + customer.find("img").text());
        $("#planno").val(customer.find("plan").text());
        pid = customer.find("plan").text();
        $.ajax({
            type: "POST",
            url: "Admin.aspx/comm",
            data: JSON.stringify({ id: pid }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var xmlDoc1 = $.parseXML(response.d);
                var xml1 = $(xmlDoc1);
                var customers1 = xml1.find("Table");
                if (table1 == null)
                    table1 = $("#table1 #tocopy", table3).eq(0).clone(true);
                $("#table1 #tocopy", table3).remove();
                customers1.each(function () {
                    var customer1 = $(this);
                    $("#HiddenField1", table1).val(customer1.find("id").text());
                    $("#TextBox1", table1).val(customer1.find("Type").text());
                    $("#TextBox2", table1).val(customer1.find("Quantity").text());
                    $(table1).show();
                    $("#table1 tr:last-child", table3).before(table1);
                    table1 = $("#table1 #tocopy", table3).eq(0).clone(true);
                });
            }
        });
        $.ajax({
            type: "POST",
            url: "Admin.aspx/comm50",
            data: JSON.stringify({ id: pid }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (response) {
                var xmlDoc1 = $.parseXML(response.d);
                var xml1 = $(xmlDoc1);
                var customers1 = xml1.find("Table");
                if (table8 == null)
                    table8 = $("#table2 #tocopy2", table3).eq(0).clone(true);
                $("#table2 #tocopy2", table3).remove();
                customers1.each(function () {
                    var customer1 = $(this);
                    $("#HiddenField4", table8).val(customer1.find("id").text());
                    $("#TextBox9", table8).val(customer1.find("Type").text());
                    $("#TextBox10", table8).val(customer1.find("Quantity").text());
                    $(table8).show();
                    $("#table2 tr:last-child", table3).before(table8);
                    table8 = $("#table2 #tocopy2", table3).eq(0).clone(true);
                });
            }
        });
        start = 1;
        end = 10;
        load5();
        gc();
    });
}
function plandrop() {
    $.ajax({
        type: "POST",
        url: "Admin.aspx/comm9",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var xmlDoc1 = $.parseXML(response.d);
            var xml1 = $(xmlDoc1);
            var customers1 = xml1.find("Table");
            if (table5 == null)
                table5 = $("#haha2 #haha3").eq(0).clone(true);
            $("#haha2 #haha3").remove();
            customers1.each(function () {
                var customer1 = $(this);
                $("#name", table5).html(customer1.find("name").text());
                $("#HiddenField2", table5).val(customer1.find("plan").text());
                fload = customer1.find("plan").text();
                $(table5).show();
                $("#haha2").append(table5);
                table5 = $("#haha2 #haha3").eq(0).clone(true);
            });
            if (fload == null)
                fload = 0;
            load2();
        }
    });
}
function loadorders() {
    $.ajax({
        type: "POST",
        url: "Admin.aspx/comm11",
        data: JSON.stringify({}),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var temp;
            var xmlDoc = $.parseXML(response.d);
            var xml = $(xmlDoc);
            var customers = xml.find("Table");
            if (table7 == null)
                table7 = $("#k2 #temp2").eq(0).clone(true);
            $("#k2 #temp2").remove();
            customers.each(function () {
                var customer = $(this);
                $("#Label22", table7).html(new Date(customer.find("time").text()));
                $("#Label8", table7).html(customer.find("firstname").text());
                $("#Label9", table7).html(customer.find("lastname").text());
                $("#Label10", table7).html(customer.find("company").text());
                $("#Label11", table7).html(customer.find("city").text());
                $("#Label12", table7).html(customer.find("address").text());
                $("#Label13", table7).html(customer.find("apartment").text());
                $("#Label14", table7).html(customer.find("country").text());
                $("#Label15", table7).html(customer.find("postcode").text());
                $("#Label16", table7).html(customer.find("email").text());
                $("#Label17", table7).html(customer.find("phone").text());
                $("#Label18", table7).html(customer.find("plan").text());
                $("#Label19", table7).html(customer.find("price").text());
                $("#Label20", table7).html(customer.find("status").text());
                $("#Label21", table7).html(customer.find("orderid").text());
                temp = customer.find("status").text();
                if (customer.find("plan").text() == "Custom Plan")
                    $("#customdetails", table7).show();
                else
                    $("#customdetails", table7).hide();
                $(table7).css('background-color', 'aquamarine');
                if (temp == 2)
                    $(table7).css('background-color', 'green');
                if (temp == 3)
                    $(table7).css('background-color', 'red');
                $(table7).show();
                $("#k2").append(table7);
                table7 = $("#k2 #temp2").eq(0).clone(true);
            });
        }
    });
}
function loademails() {
    $.ajax({
        type: "POST",
        url: "Admin.aspx/comm60",
        data: "{}",
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (response) {
            var xmlDoc1 = $.parseXML(response.d);
            var xml1 = $(xmlDoc1);
            var customers1 = xml1.find("Table");
            if (table11 == null)
                table11 = $("#table3 #tocopy3").eq(0).clone(true);
            $("#table3 #tocopy3").remove();
            customers1.each(function () {
                var customer1 = $(this);
                $("#HiddenField5", table11).val(customer1.find("eid").text());
                $("#TextBox11", table11).val(customer1.find("email").text());
                $(table11).show();
                $("#table3 tr:last-child").before(table11);
                table11 = $("#table3 #tocopy3").eq(0).clone(true);
            });
        }
    });
}
function loadcustomin() {
    $.ajax({
        type: "POST",
        url: "DesignPlan.aspx/comm2",
        data: JSON.stringify({}),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: customloadapp
    });
}
function customloadapp(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    var i = 0;
    if (table12 == null)
        table12 = $("#show4 #tocopy4").eq(0).clone(true);
    $("#show4 #tocopy4").remove();
    customers.each(function () {
        var customer = $(this);
        $("#TextBox12", table12).val(customer.find("watt").text());
        $("#TextBox13", table12).val(customer.find("hybrid").text());
        $("#TextBox14", table12).val(customer.find("batterydry").text());
        $("#TextBox15", table12).val(customer.find("ledacitebattery").text());
        $("#TextBox16", table12).val(customer.find("wirehybrid").text());
        $("#TextBox17", table12).val(customer.find("wirenon").text());
        $("#TextBox18", table12).val(customer.find("stand").text());
        $("#TextBox19", table12).val(customer.find("othersh").text());
        $("#TextBox20", table12).val(customer.find("othersn").text());
        $("#TextBox21", table12).val(customer.find("solarwire").text());
        $("#TextBox22", table12).val(customer.find("ups").text());
        $("#TextBox23", table12).val(customer.find("batterycount").text());
        $("#TextBox39", table12).val(customer.find("solarrate").text());
        $("#TextBox40", table12).val(customer.find("inverter").text());
        $("#TextBox41", table12).val(customer.find("charger").text());
        $("#TextBox45", table12).val(customer.find("chargecontroller").text());
        $("#HiddenField6", table12).val(customer.find("cid").text());
        $("#show4 #appbefore").before(table12);
        table12 = $("#show4 #tocopy4").eq(0).clone(true);
    });
}
function customitems() {
    $.ajax({
        type: "POST",
        url: "DesignPlan.aspx/comm1",
        data: JSON.stringify({}),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: customitemsapp
    });
}
function customitemsapp(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    if (table13 == null)
        table13 = $("#table5 #tocopy5").eq(0).clone(true);
    $("#table5 #tocopy5").remove();
    customers.each(function () {
        var customer = $(this);
        $("#HiddenField7", table13).val(customer.find("cid").text());
        $("#TextBox36", table13).val(customer.find("name").text());
        $("#TextBox37", table13).val(customer.find("normalload").text());
        $("#TextBox38", table13).val(customer.find("maxload").text());
        table13.show();
        $("#table5 tr:last-child").before(table13);
        table13 = $("#table5 #tocopy5").eq(0).clone(true);
    });
}
function loadcustominfo(orderid) {
    $.ajax({
        type: "POST",
        url: "Admin.aspx/comm81",
        data: JSON.stringify({ orderid: orderid }),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: loadcustomdetails,
        error: function () {
            alert("error");
        }
    });
}
function loadcustomdetails(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    var ch = customers.first();
    var colNames = ch.children().map(function () {
        return this.tagName;
    }).get();
    if (table15 == null)
        table15 = $("#customorderinfo #toapp").eq(0).clone(true);
    if (table16 == null)
        table16 = $("#customorderinfo #toappst").eq(0).clone(true);
    $("#customorderinfo #toapp").remove();
    $("#customorderinfo #toappst").remove();
    for (var i = 0; i < colNames.length; i++) {
        if (parseFloat(ch.find(colNames[i].toString().replace(/\./g, "\\.")).text()) > 0) {
            var name1 = colNames[i].toString().replace("_x0020_", " ");
            name1 = name1.replace("_x0028_", "(");
            name1 = name1.replace("_x0029_", ")");
            $("#Label55", table15).html(name1);
            $("#Label56", table15).html(parseFloat(ch.find(colNames[i].toString().replace(/\./g, "\\.")).text()));
            $("#customorderinfo #appbefore1").before(table15);
            if (colNames[i] == "orderid")
                $("#customorderinfo #appbefore1").before(table16);
            table15 = $("#customorderinfo #toapp").eq(0).clone(true);
        }
    }
}
$(document).ready(function () {
    $.ajax({
        type: "POST",
        url: "Admin.aspx/getstandhandle",
        data: JSON.stringify({}),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (e) {
            $("#TextBox47").val(e.d);
        }
    });
    customitems();
    loademails();
    loadcustomin();
    $("#k2").hide();
    $("#k3").hide();
    $("#loadci").click(function () {
        $("#k5").show();
        $("#k4").hide();
        $("#k2").hide();
        $("#K").hide();
        $("#k1").hide();
        $("#k3").hide();
        $("#addplan").hide();
    });
    $("#loadc").click(function () {
        $("#k5").hide();
        $("#k4").show();
        $("#k2").hide();
        $("#K").hide();
        $("#k1").hide();
        $("#k3").hide();
        $("#addplan").hide();
    });
    $("#loado").click(function () {
        $("#k5").hide();
        $("#k4").hide();
        $("#k2").show();
        $("#K").hide();
        $("#k1").hide();
        $("#k3").hide();
        $("#addplan").hide();
        loadorders();
    });
    $("#loade").click(function () {
        $("#k5").hide();
        $("#k4").hide();
        $("#k3").show();
        $("#k2").hide();
        $("#K").hide();
        $("#k1").hide();
        $("#addplan").hide();
    });
    $("#loadp").click(function () {
        $("#k5").hide();
        $("#k4").hide();
        $("#K").show();
        $("#k2").hide();
        $("#k1").show();
        $("#k3").hide();
        $("#addplan").show();
    });
    $("#Button3").hide();
    $("#Button4").hide();
    $("#Button4").click(function () {
        gc();
        if (number > end) {
            start += 10;
            end += 10;
            gc();
            load5();
        }
    });
    $("#Button3").click(function () {
        if (start > 1) {
            start -= 10;
            end -= 10;
            load5();
            gc();
        }
    });
    plandrop();
    $(document).on("click", ".customitems", function (e) {
        if (e.target.id == 'haha8') {
            var name1 = $(this).find("#TextBox36").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/deletec",
                data: JSON.stringify({ name: name1 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });
            $(this).fadeOut(500);
        }
        if (e.target.id == 'haha9') {
            var name1 = $(this).find("#TextBox36").val();
            var minload = $(this).find("#TextBox37").val();
            var maxload = $(this).find("#TextBox38").val();
            var cid = $(this).find("#HiddenField7").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm70",
                data: JSON.stringify({ name: name1, normalload: minload, maxload: maxload, cid: cid }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    alert("Success");
                },
                error: function () {
                    alert("Please Check Again or Try Refreshing The Page");
                }
            });
        }
    });
    $("#standhandle").click(function (e) {
        var cid = $("#TextBox47").val();
        $.ajax({
            type: "POST",
            url: "Admin.aspx/standhandle",
            data: JSON.stringify({ rate: cid }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function (r) {
                alert("Success");
            },
            error: function () {
                alert("Please Check Again or Try Refreshing The Page");
            }
        });
    });

    $(document).on("click", ".customitemsadd", function (e) {
        if (e.target.id == 'add5') {
            var name1 = $(this).find("#additem5").val();
            var minload = $(this).find("#additem6").val();
            var maxload = $(this).find("#additem7").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm49",
                data: JSON.stringify({ name: name1, normalload: minload, maxload: maxload }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    $("#HiddenField7", table13).val(r.d);
                    $("#TextBox36", table13).val(name1);
                    $("#TextBox37", table13).val(minload);
                    $("#TextBox38", table13).val(maxload);
                    table13.show();
                    $("#table5 tr:last-child").before(table13);
                    table13 = $("#table5 #tocopy5").eq(0).clone(true);
                }
            });
        }
    });
    $(document).on("click", ".Kk1", function (e) {
        var temp = $(this).find("#HiddenField2").val();
        if (fload != temp) {
            fload = $(this).find("#HiddenField2").val();
            load2();
        }
    });
    $("#addplan").click(function () {
        $('html, body').animate({
            scrollTop: 0
        }, 500);
        $("#addnewplan").css("visibility", "visible");
        $("#effect").css("visibility", "visible");
    });

    $(document).on("click", "#cancelnew", function (e) {
        $("#addnewplan").css("visibility", "hidden");
        $("#effect").css("visibility", "hidden");
    });
    $(document).on("click", "#cancelnew1", function (e) {
        $("#editpicture").css("visibility", "hidden");
        $("#effect").css("visibility", "hidden");
    });
    $("#closecustom").click(function () {
        $("#customorderinfo").fadeOut(200);
    });
    $(document).on("click", ".orderclass", function (e) {
        if (e.target.id == 'confirmorder') {
            var t1 = $(this).find("#Label16").html();
            var t2 = $(this).find("#Label21").html();
            var t3 = $(this).find("#Label18").html();
            var t4 = $(this).find("#Label19").html();
            var t5 = $(this).find("#Label21").html();
            var t6 = $(this).find("#Label12").html();
            var t7 = $(this).find("#Label17").html();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/sendconf",
                data: JSON.stringify({ email: t1, plan: t2, name: t3, price: t4, orderid: t5, address: t6, phone: t7 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    alert("Success");
                },
                error: function () {
                    alert("Error");
                }
            });
            $(this).parent().parent().css('background-color', 'green');
        }
        if (e.target.id == 'cancelorder') {
            var t1 = $(this).find("#Label16").html();
            var t2 = $(this).find("#Label21").html();
            var t3 = $(this).find("#Label18").html();
            var t4 = $(this).find("#Label19").html();
            var t5 = $(this).find("#Label21").html();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/sendcanc",
                data: JSON.stringify({ email: t1, plan: t2, name: t3, price: t4, orderid: t5 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    alert("Success");
                }
            });
            $(this).parent().parent().css('background-color', 'red');
        }
        if (e.target.id == 'deleteorder') {
            var t2 = $(this).find("#Label21").html();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm55",
                async: false,
                data: JSON.stringify({ plan: t2 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    alert("Success");
                }
            });
            $(this).parent().parent().remove();
        }
        if (e.target.id == 'customdetails') {
            var t2 = $(this).find("#Label21").html();
            $("#customorderinfo").fadeIn(200);
            loadcustominfo(t2);
            $('html, body').animate({
                scrollTop: 0
            }, 500);
        }
    });
    $(document).on("click", ".commentf", function (e) {
        if (e.target.id == 'deletecomment') {
            var t4 = $(this).find("#Label6").html();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm10",
                data: JSON.stringify({ rid: t4 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    gc();
                    load5();
                }
            });
            $(this).fadeOut(500);
        }
    });
    $(document).on("click", ".emailta", function (e) {
        if (e.target.id == 'add3') {
            var tempemail = $(this).find("#additem3").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm62",
                async: false,
                data: JSON.stringify({ email: tempemail }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "Admin.aspx/comm63",
                        data: JSON.stringify({}),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (e) {
                            $("#HiddenField5", table11).val(e.d);
                        }
                    });
                    $("#TextBox11", table11).val(tempemail);
                    $(table11).show();
                    $("#table3 tr:last-child").before(table11);
                    table11 = $("#table3 #tocopy3").eq(0).clone(true);
                }
            });
        }
    });
    $(document).on("click", ".customedit", function (e) {
        if (e.target.id == 'editcustom') {
            var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
            var cid = $(this).find("#HiddenField6").val();
            a = $(this).find("#TextBox12").val();
            b = $(this).find("#TextBox13").val();
            c = $(this).find("#TextBox14").val();
            d = $(this).find("#TextBox15").val();
            e = $(this).find("#TextBox16").val();
            f = $(this).find("#TextBox17").val();
            g = $(this).find("#TextBox18").val();
            h = $(this).find("#TextBox19").val();
            i = $(this).find("#TextBox20").val();
            j = $(this).find("#TextBox21").val();
            k = $(this).find("#TextBox22").val();
            l = $(this).find("#TextBox23").val();
            m = $(this).find("#TextBox39").val();
            n = $(this).find("#TextBox40").val();
            o = $(this).find("#TextBox41").val();
            p = $(this).find("#TextBox45").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm48",
                async: false,
                data: JSON.stringify({ watt: a, hybrid: b, batteryd: c, batteryw: d, wireh: e, wiren: f, stand: g, othersh: h, othersn: i, solar: j, nonhybrid: k, batterycount: l, solarrate: m, inverter: n, charger: o, chargecontroller: p, cid: cid }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    alert("Success");
                },
                error: function () {
                    alert("Please Check The Values Or Try Again Later");
                }
            });
        }
        if (e.target.id == 'deletecustom') {
            var cid = $(this).find("#HiddenField6").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm47",
                data: JSON.stringify({ cid: cid }),
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });
            $(this).fadeOut(500);
        }
        if (e.target.id == 'addcustom') {
            var a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p;
            a = $(this).find("#TextBox24").val();
            b = $(this).find("#TextBox25").val();
            c = $(this).find("#TextBox26").val();
            d = $(this).find("#TextBox27").val();
            e = $(this).find("#TextBox28").val();
            f = $(this).find("#TextBox29").val();
            g = $(this).find("#TextBox30").val();
            h = $(this).find("#TextBox31").val();
            i = $(this).find("#TextBox32").val();
            j = $(this).find("#TextBox33").val();
            k = $(this).find("#TextBox34").val();
            l = $(this).find("#TextBox35").val();
            m = $(this).find("#TextBox42").val();
            n = $(this).find("#TextBox43").val();
            o = $(this).find("#TextBox44").val();
            p = $(this).find("#TextBox46").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm45",
                async: false,
                data: JSON.stringify({ watt: a, hybrid: b, batteryd: c, batteryw: d, wireh: e, wiren: f, stand: g, othersh: h, othersn: i, solar: j, nonhybrid: k, batterycount: l, solarrate: m, inverter: n, charger: o, chargecontroller: p }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "Admin.aspx/comm46",
                        data: JSON.stringify({}),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (e) {
                            $("#HiddenField6", table12).val(e.d);
                        }
                    });
                    $("#TextBox12", table12).val(a);
                    $("#TextBox13", table12).val(b);
                    $("#TextBox14", table12).val(c);
                    $("#TextBox15", table12).val(d);
                    $("#TextBox16", table12).val(e);
                    $("#TextBox17", table12).val(f);
                    $("#TextBox18", table12).val(g);
                    $("#TextBox19", table12).val(h);
                    $("#TextBox20", table12).val(i);
                    $("#TextBox21", table12).val(j);
                    $("#TextBox22", table12).val(k);
                    $("#TextBox23", table12).val(l);
                    $("#TextBox39", table12).val(m);
                    $("#TextBox40", table12).val(n);
                    $("#TextBox41", table12).val(o);
                    $("#TextBox45", table12).val(p);
                    $("#show4 #appbefore").before(table12);
                    table12 = $("#show4 #tocopy4").eq(0).clone(true);
                },
                error: function () {
                    alert("Please Check The Values Or Try Again Later");
                }
            });
        }
    });
    $(document).on("click", ".toapp", function (e) {
        if (e.target.id == 'add') {
            item = $(this).find("#additem").val();
            quantity = $(this).find("#addquant").val();
            planid = $(this).find("#planno").val();
            table4 = $(this).find("#table1");
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm2",
                async: false,
                data: JSON.stringify({ type: item, plan: planid, quant: quantity }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    $.ajax({
                        type: "POST",
                        async: false,
                        url: "Admin.aspx/comm3",
                        data: JSON.stringify({ plan: planid }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (e) {
                            $("#HiddenField1", table1).val(e.d);
                        }
                    });
                    $("#TextBox1", table1).val(item);
                    $("#TextBox2", table1).val(quantity);
                    $(table1).show();
                    $("tr:last-child", table4).before(table1);
                    table1 = $(".asd", table4).eq(0).clone(true);
                }
            });
        }
        if (e.target.id == 'add2') {
            item = $(this).find("#additem2").val();
            quantity = $(this).find("#addquant2").val();
            planid = $(this).find("#planno").val();
            table9 = $(this).find("#table2");
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm51",
                data: JSON.stringify({ type: item, plan: planid, quant: quantity }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (r) {
                    $.ajax({
                        type: "POST",
                        url: "Admin.aspx/comm52",
                        async: false,
                        data: JSON.stringify({ plan: planid }),
                        contentType: "application/json; charset=utf-8",
                        dataType: "json",
                        success: function (e) {
                            $("#HiddenField4", table8).val(e.d);
                        }
                    });
                    $("#TextBox9", table8).val(item);
                    $("#TextBox10", table8).val(quantity);
                    $(table8).show();
                    $("tr:last-child", table9).before(table8);
                    table8 = $(".asd", table9).eq(0).clone(true);
                }
            });
        }
    });
    $(document).on("click", ".asd", function (e) {
        if (e.target.id == 'haha7') {
            var did = $(this).find("#HiddenField5").val();
            var t1 = $(this).find("#TextBox11").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/com61",
                async: false,
                data: JSON.stringify({ email: t1, eid: did }),
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });
        }
        if (e.target.id == 'haha6') {
            var did = $(this).find("#HiddenField5").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm65",
                data: JSON.stringify({ eid: did }),
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });
            $(this).fadeOut(500);
        }
        if (e.target.id == 'haha') {
            var did = $(this).find("#HiddenField1").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm4",
                data: JSON.stringify({ id: did }),
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });
            $(this).fadeOut(500);
        }
        if (e.target.id == 'haha1') {
            var did = $(this).find("#HiddenField1").val();
            var t1 = $(this).find("#TextBox1").val();
            var t2 = $(this).find("#TextBox2").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm5",
                async: false,
                data: JSON.stringify({ quant: t2, id: did, type: t1 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });
        }
        if (e.target.id == 'haha4') {
            var did = $(this).find("#HiddenField4").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm53",
                data: JSON.stringify({ id: did }),
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });
            $(this).fadeOut(500);
        }
        if (e.target.id == 'haha5') {
            var did = $(this).find("#HiddenField4").val();
            var t1 = $(this).find("#TextBox9").val();
            var t2 = $(this).find("#TextBox10").val();
            $.ajax({
                type: "POST",
                async: false,
                url: "Admin.aspx/comm54",
                data: JSON.stringify({ quant: t2, id: did, type: t1 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json"
            });
        }
    });
    $(document).on("click", ".thumbnail", function (e) {
        if (e.target.id == 'editpic') {
            $('html, body').animate({
                scrollTop: 0
            }, 500);
            $("#editpicture").css("visibility", "visible");
            $("#effect").css("visibility", "visible");
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm1",
                data: JSON.stringify({ plan: fload }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (response) {
                    var xmlDoc1 = $.parseXML(response.d);
                    var xml1 = $(xmlDoc1);
                    var customers1 = xml1.find("Table");
                    customers1.each(function () {
                        var customer1 = $(this);
                        $("#Label7").html(customer1.find("name").text());
                        $("#HiddenField3").val(customer1.find("plan").text());
                        $("#imgtt").attr('src', "/imagedata/" + customer1.find("img").text());
                    });
                }
            });
        }
        if (e.target.id == 'EditButton') {
            var t1 = $(this).find("#TextBox3").val();
            var t2 = $(this).find("#TextBox4").val();
            var t3 = $(this).find("#TextBox5").val();
            var t4 = $(this).find("#planno").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm6",
                data: JSON.stringify({ name: t1, plan: t4, descrp: t3, price: t2 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    alert("Success");
                }
            });
        }
        if (e.target.id == 'Deletebutton') {
            var t4 = $(this).find("#planno").val();
            $.ajax({
                type: "POST",
                url: "Admin.aspx/comm8",
                data: JSON.stringify({ id: t4 }),
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function () {
                    alert("Deleted");
                    fload = null;
                    plandrop();
                }
            });
        }
    });
});