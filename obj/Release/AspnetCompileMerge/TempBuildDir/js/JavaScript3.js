var table;
var table1;
var watt = [], batterydry = [], ledacititebattery = [], hybrid = [], wirehybrid = [], wirenon = [], stand = [], othersh = [], othersn = [], solarwire = [], ups = [], batterycount = [], solarrate = [], inverter = [], charger = [], chargecontroller = [];
var count = 0;
var max1 = 0, max2 = 0, item, price = 0, global = 0, plates = 0;
var totalwatt = 0, tomul = 1, tomulwatt = 150;
var query;
var values;
var minstand;
var adjust;
var standmax = 0, standmin = 0, standrate = 0, solarwatt = 0;
function load1() {
    $.ajax({
        type: "POST",
        url: "DesignPlan.aspx/comm1",
        data: JSON.stringify({}),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess1
    });
}
function OnSuccess1(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    if (table == null)
        table = $("#toapp #tocopy").eq(0).clone(true);
    if (table1 == null)
        table1 = $("#toapp #border").eq(0).clone(true);
    $("#toapp #tocopy").remove();
    $("#toapp #border").remove();
    customers.each(function () {
        var customer = $(this);
        $("#Label1", table).html(customer.find("name").text());
        $("#slider1", table).val(0);
        $("#Text1", table).val(0);
        $(table).find("#HiddenField1").val(customer.find("normalload").text());
        $(table).find("#HiddenField2").val(customer.find("maxload").text());
        table.show();
        $("#toapp").append(table);
        table = $("#toapp #tocopy").eq(0).clone(true);
        count++;
        if (count == 4) {
            count = 0;
            $("#toapp").append(table1);
            table1 = $("#toapp #border").eq(0).clone(true);
        }
    });
}
function load2() {
    $.ajax({
        type: "POST",
        async: false,
        url: "DesignPlan.aspx/comm2",
        data: JSON.stringify({}),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess2
    });
}
function OnSuccess2(response) {
    var xmlDoc = $.parseXML(response.d);
    var xml = $(xmlDoc);
    var customers = xml.find("Table");
    var i = 0;
    customers.each(function () {
        var customer = $(this);
        watt[i] = customer.find("watt").text();
        hybrid[i] = customer.find("hybrid").text();
        batterydry[i] = customer.find("batterydry").text();
        ledacititebattery[i] = customer.find("ledacitebattery").text();
        wirehybrid[i] = customer.find("wirehybrid").text();
        wirenon[i] = customer.find("wirenon").text();
        stand[i] = customer.find("stand").text();
        othersh[i] = customer.find("othersh").text();
        othersn[i] = customer.find("othersn").text();
        solarwire[i] = customer.find("solarwire").text();
        ups[i] = customer.find("ups").text();
        batterycount[i] = customer.find("batterycount").text();
        solarrate[i] = customer.find("solarrate").text();
        inverter[i] = customer.find("inverter").text();
        charger[i] = customer.find("charger").text();
        chargecontroller[i] = customer.find("chargecontroller").text();
        i++;
    });
}
function loadvalues(i) {
    price = 0;
    if (parseInt($("#sliderch1").val()) < batterycount[i])
        $("#sliderch1").val(batterycount[i]);
    $("#sliderch1").attr('min', batterycount[i]);
    $("#sliderch1").attr('step', batterycount[i]);
    if ($("#Radio4").prop('checked') && parseInt($("#sliderch1").val())) {
        price += parseInt(parseInt(ledacititebattery[i]) * parseInt($("#sliderch1").val()));
    }
    else if (parseInt($("#sliderch1").val())) {
        price += parseInt(parseInt(batterydry[i]) * parseInt($("#sliderch1").val()));
    }
    if ($("#Radio1").prop('checked')) {
        price += parseInt(hybrid[i]);
        price += parseInt(othersh[i]);
    }
    else if ($("#Radio2").prop('checked')) {
        price += parseInt(ups[i]);
        price += parseInt(othersn[i]);
    }
    else {
        price += parseInt(inverter[i]);
        price += parseInt(othersn[i]);
    }
    if ($("#check1").prop('checked')) {
        tomul = 1;
        if (totalwatt <= 700)
            tomulwatt = 150;
        else
            tomulwatt = 300;
        var final = tomulwatt, i1 = tomul;
        while (final < totalwatt) {
            final = parseInt(tomulwatt) * parseInt(i1);
            i1 += parseInt(tomul);
        }
        price += parseInt(parseInt(final) * parseFloat(solarrate[i]));
        solarwatt = final;
        plates = i1 - 1;
        if ($("#Radio1").prop('checked') == false) {
            price += parseInt(chargecontroller[i]);
        }
        var toadds = 300, toadds1 = 150;
        if (totalwatt > 700)
            toadds = 300;
        if (toadds > final)
            toadds = 0;
        else if (totalwatt > 700) {
            while ((toadds + 300) <= final) {
                toadds += 300;
            }
        }
        else {
            while ((toadds + 300) <= final) {
                toadds += 300;
            }
        }
        if ((toadds + toadds1) > final)
            toadds1 = 0;
        else while ((toadds + toadds1) < final) {
            toadds1 += 150;
        }
        if (totalwatt > 700)
            toadds /= 300;
        else
            toadds /= 300;
        toadds1 /= 150;
        standmax = toadds;
        standmin = toadds1;
        standrate = parseInt(stand[i] * toadds) + parseInt(minstand * toadds1);
        price += parseInt(stand[i] * toadds);
        price += parseInt(minstand * toadds1);
        price += parseInt(solarwire[i]);
    }
    else if ($("#Radio5").prop('checked') || $("#Radio6").prop('checked'))
        price += parseInt(charger[i]);
    if ($("#sliderch").val() && $("#Radio1").prop('checked')) {
        price += parseInt($("#sliderch").val()) * parseFloat(wirehybrid[i]);
    }
    else if ($("#sliderch").val()) {
        price += parseInt($("#sliderch").val()) * parseFloat(wirenon[i]);
    }
    if (price)
        while (parseInt(price) % 100 != 0)
            price++;
    $("#Label2").html("Price: " + price);
}
$(document).ready(function () {
    $.ajax({
        type: "POST",
        async: false,
        url: "Admin.aspx/getstandhandle",
        data: JSON.stringify({}),
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: function (e) {
            minstand = e.d;
        }
    });
    $("#sliderch").val(20);
    $("#Radio1").prop('checked', false);
    $("#Radio2").prop('checked', true);
    $("#Radio4").prop('checked', true);
    $("#Radio5").prop('checked', false);
    $("#Radio5").prop('checked', false);
    $("#Radio6").prop('checked', false);

    $("#Radio3").click(function () {
        $("#Radio4").prop('checked', false);
        loadvalues(global);
    });
    $("#Radio4").click(function () {
        $("#Radio3").prop('checked', false);
        loadvalues(global);
    });
    $(".hybrid").click(function () {
        $("#Radio1").prop('checked', true);
        $("#Radio2").prop('checked', false);
        $("#Radio5").prop('checked', false);
        $("#Radio6").prop('checked', false);
        loadvalues(global);
    });
    $(".nhybrid").click(function () {
        $("#Radio1").prop('checked', false);
        $("#Radio2").prop('checked', true);
        $("#Radio5").prop('checked', false);
        $("#Radio6").prop('checked', false);
        loadvalues(global);
    });
    $(".inverterr").click(function () {
        $("#Radio1").prop('checked', false);
        $("#Radio2").prop('checked', false);
        $("#Radio5").prop('checked', true);
        $("#Radio6").prop('checked', true);
        loadvalues(global);
    });
    $(".inverterl").click(function () {
        $("#Radio1").prop('checked', false);
        $("#Radio2").prop('checked', false);
        $("#Radio5").prop('checked', true);
        $("#Radio6").prop('checked', true);
        loadvalues(global);
    });
    $("#check1").click(function () {
        if ($("#check1").prop('checked')) {
            $("#Radio2").prop('checked', false);
            $("#Radio1").prop('checked', true);
            $("#Radio5").prop('checked', false);
            $("#Radio6").prop('checked', false);
            $(".hybrid").show();
            $(".inverterl").hide();
            $(".inverterr").show();
            $(".nhybrid").hide();
        }
        else {
            $("#Radio2").prop('checked', true);
            $("#Radio1").prop('checked', false);
            $("#Radio5").prop('checked', false);
            $("#Radio6").prop('checked', false);
            $(".hybrid").hide();
            $(".inverterl").show();
            $(".inverterr").hide();
            $(".nhybrid").show();
        }
        loadvalues(global);
    });
    $("#sliderch").click(function () {
        loadvalues(global);
    });
    $("#sliderch").keyup(function () {
        loadvalues(global);
    });
    $("#sliderch1").keyup(function () {
        loadvalues(global);
    });
    $("#sliderch1").click(function () {
        loadvalues(global);
    });
    load1();
    load2();
    loadvalues(0);
    var max = watt[watt.length - 1];
    var check = false;
    $("#Button1").click(function () {
        values = watt[global] + ",";
        if ($("#Radio1").prop('checked'))
            values += hybrid[global].toString() + ",";
        else
            values += "0,";
        if ($("#Radio3").prop('checked'))
            values += batterydry[global] + ",0,";
        else
            values += "0," + ledacititebattery[global] + ",";
        if ($("#Radio1").prop('checked'))
            values += (wirehybrid[global] * $("#sliderch").val()) + ",";
        else
            values += (wirenon[global] * $("#sliderch").val()) + ",";
        if ($("#Radio1").prop('checked'))
            values += othersh[global] + ",";
        else
            values += othersn[global] + ",";
        values += solarwire[global] + ",";
        if ($("#Radio2").prop('checked'))
            values += ups[global] + ",";
        else
            values += "0,";
        values += $("#sliderch1").val() + ",";
        values += solarrate[global] + ",";
        if ($("#check1").prop('checked'))
            values += plates + ",";
        else
            values += "0,";
        values += solarwatt + ",";
        values += parseInt(plates * tomulwatt * solarrate[global]) + ",";
        if ($("#Radio5").prop('checked') || $("#Radio5").prop('checked'))
            values += inverter[global] + "," + charger[global] + ",";
        else
            values += "0,0,";
        if ($("#check1").prop('checked')) {
            if ($("#Radio1").prop('checked') == false)
                values += chargecontroller[global] + ",";
            else
                values += "0,";
        }
        else
            values += "0,";
        values += price + ",";
        values += standmax + ",";
        values += standmin + ",";
        values += standrate + ",";
        query = "watt,hybrid,batterydry,ledacitebattery,wire,others,solarwire,ups,batterycount,solarrate,solarplates,solarwatt,solarprice,inverter,charger,chargecontroller,price,standmax,standmin,standrate,";
        $(".dif").not(":last").each(function () {
            query += "[" + $(this).find("#Label1").html() + "],";
            values += $(this).find("#slider1").val() + ",";
        });
        query += "[" + $(".dif").last().find("#Label1").html() + "]";
        values += $(".dif").last().find("#slider1").val();
        $.ajax({
            type: "POST",
            url: "DesignPlan.aspx/addSession",
            data: JSON.stringify({ query: query, values: values, price: price }),
            contentType: "application/json; charset=utf-8",
            dataType: "json",
            success: function () {
                window.location.href = "Order.aspx";
            }
        });
    });
    $("#Label2").click(function () {
        set();
        check = true;
    });
    $(".dif").on("change mousemove keyup touchmove",function (e) {
        if (e.target.id == 'Text1')
            if ($(this).find("#Text1").val())
                $(this).find("#slider1").val($(this).find("#Text1").val());
            else
                $(this).find("#slider1").val(0), $(this).find("#Text1").val(0);
        else
            $(this).find("#Text1").val($(this).find("#slider1").val());
        var current = max;
        var sum = 0;
        max1 = 0, max2 = 0;
        $(".dif").each(function () {
            var temp = parseInt($(this).find("#HiddenField1").val());
            var temp1 = parseInt($(this).find("#slider1").val());
            if ($(this).find("#Text1").val() > 0 && $(this).find("#HiddenField2").val() > parseInt(max1))
            {
                max1 = $(this).find("#HiddenField2").val();
                max2 = temp;
            }
            sum += parseInt(temp1 * temp);
        });
        adjust = global;
        global = 0;
        totalwatt = sum + (parseInt(max1) - parseInt(max2));
        while (totalwatt > watt[global] && global < watt.length - 1) {
            global++;
        }
        if (adjust != global)
            $("#sliderch1").val(batterycount[global]);
        loadvalues(global);
        $(".dif").each(function () {
            var temp2 = $(this).find("#HiddenField1").val();
            var temp3 = $(this).find("#slider1").val();
            var final = parseInt(current - (sum - (temp2 * temp3)) - (parseInt(max1) - parseInt(max2)));
            if (final < 0)
                final = parseInt(0);
            $(this).find("#slider1").attr('max', Math.floor(final/ temp2));
            $(this).find("#Text1").attr('max', Math.floor(final/ temp2));
        });
        if (parseInt($(this).find("#slider1").attr('max')) < parseInt($(this).find("#slider1").val()))
            $(this).find("#slider1").val($(this).find("#slider1").attr('max'));
        if (parseInt($(this).find("#Text1").attr('max')) < parseInt($(this).find("#Text1").val()))
            $(this).find("#Text1").val($(this).find("#Text1").attr('max'));
    });
    $("#sliderch1").on("change mousemove keyup touchmove", function () {
        var ad = batterycount[global];
        if ($("#sliderch1").val()) {
            ad = Math.ceil($("#sliderch1").val() / parseInt(ad)) * parseInt(batterycount[global]);
        }
        $(this).val(ad);
        loadvalues(global);
    });
});