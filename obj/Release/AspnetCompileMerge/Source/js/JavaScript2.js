$(document).ready(function () {
    $(".single-product").click(function (e) {
        if (e.target.id=='haha1')
        {
            var plan = $(this).find(".tt").html();
            $.ajax({
                type: "POST",
                url: "Home.aspx/addSession",
                data: "{'plan':'" + plan + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.href= "Plandetails.aspx";
                }
            });
        }
        if (e.target.id == 'haha') {
            var plan = $(this).find(".tt").html();
            $.ajax({
                type: "POST",
                url: "Home.aspx/addSession",
                data: "{'plan':'" + plan + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.href = "Order.aspx";
                }
            });
        }
    });
    $(".redirect").click(function (e) {
        if (e.target.id == 'haha1') {
            var plan = $(this).find(".tt").html();
            $.ajax({
                type: "POST",
                url: "Home.aspx/addSession",
                data: "{'plan':'" + plan + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.href = "Order.aspx";
                }
            });
        }
        if (e.target.id == 'haha') {
            var plan = $(this).find(".tt").html();
            $.ajax({
                type: "POST",
                url: "Home.aspx/addSession",
                data: "{'plan':'" + plan + "'}",
                contentType: "application/json; charset=utf-8",
                dataType: "json",
                success: function (msg) {
                    window.location.href = "Plandetails.aspx";
                }
            });
        }
    });
});