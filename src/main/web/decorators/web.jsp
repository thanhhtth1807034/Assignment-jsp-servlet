<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>
<html>
<head>
    <title><dec:title default="Trang chu"/></title>
    <meta charset="UTF-8">
    <meta name="description" content="Ogani Template">
    <meta name="keywords" content="Ogani, unica, creative, html">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Cairo:wght@200;300;400;600;900&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="<c:url value='/assert/web/css/bootstrap.min.css' />" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/assert/web/css/font-awesome.min.css' />" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/assert/web/css/elegant-icons.css' />" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/assert/web/css/nice-select.css' />" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/assert/web/css/jquery-ui.min.css' />" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/assert/web/css/owl.carousel.min.css' />" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/assert/web/css/slicknav.min.css' />" type="text/css" media="all">
    <link rel="stylesheet" href="<c:url value='/assert/web/css/style.css' />" type="text/css" media="all">

</head>
<body>
<%--header--%>
<%@include file="/common/web/header.jsp" %>
<%--header--%>

<div>
    <dec:body/>
</div>

<%--footer--%>
<%@include file="/common/web/footer.jsp" %>
<%--footer--%>

<script type="text/javascript" src="<c:url value="/assert/web/js/jquery-3.3.1.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assert/web/js/bootstrap.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assert/web/js/jquery.nice-select.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assert/web/js/jquery-ui.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assert/web/js/jquery.slicknav.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assert/web/js/mixitup.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assert/web/js/owl.carousel.min.js"/>"></script>
<script type="text/javascript" src="<c:url value="/assert/web/js/main.js"/>"></script>
<script>

    $("#update").click(function () {
        var quantity = $("#quantity").val();
        var fruitid = $("#fruitid").val();
        $.ajax({
            url: "/update-cart",
            type: "POST",
            dataType: "json",
            data: {
                'frurtid': fruitid,
                'quantity': quantity
            },
            success: function (res) {
                if (!res == false) {
                    window.location.reload();
                }
            },
            error: function () {
                window.location.reload();
            }
        });
    })

    function toDetail(id) {
        location.href = '/shop-details?id=' + id;
    }

    function addcart(id) {
        var quantity = $("#quantitydetail").val()
        location.href = '/Add-Cart?frurtid='+id+"&&quantity="+quantity;

    }

    function updatecart1(id) {
        var quantity = $("#quantity_"+id).val()
        var curentquantity=parseInt(quantity)-1
        if(curentquantity>0) {
            $.ajax({
                url: "/update-cart",
                type: "POST",
                dataType: "json",
                data: {
                    'frurtid': id,
                    'quantity': curentquantity
                },
                success: function (res) {
                    if (!res == false) {
                        window.location.reload();
                    }
                },
                error: function () {
                    $("#tb").load("/shoping-cart #tb");
                    $(".hi").load("/shoping-cart .shoping__checkout");

                }
            });s
        }
    }
    function updatecart2(id) {
        var quantity = $("#quantity_"+id).val()
        var curentquantity=parseInt(quantity)+1
        $.ajax({
            url: "/update-cart",
            type: "POST",
            dataType: "json",
            data: {
                'frurtid': id,
                'quantity': curentquantity
            },
            success: function (res) {
                if (!res == false) {
                    window.location.reload();
                }
            },
            error: function () {
                $("#tb").load("/shoping-cart #tb");
                $(".hi").load("/shoping-cart .shoping__checkout");

            }
        });
    }
</script>
</body>
</html>
