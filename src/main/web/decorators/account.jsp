<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/>
    <meta charset="utf-8"/>
    <title>Login and Register</title>

    <meta name="description" content="User login page"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0"/>

    <!-- bootstrap & fontawesome -->
    <link rel="stylesheet" href="<c:url value='/assert/login/css/bootstrap.min.css'/>"/>

    <!-- text fonts -->
    <link rel="stylesheet" href="<c:url value='/assert/login/css/fonts.googleapis.com.css'/>"/>
    <link rel="stylesheet" href="<c:url value='/assert/login/font-awesome/css/font-awesome.min.css'/>"/>
    <link rel="stylesheet" href="<c:url value='/assert/admin/vendor/fontawesome-free/css/fontawesome.min.css'/>"/>
    <link rel="stylesheet" href="<c:url value='/assert/admin/vendor/fontawesome-free/css/all.min.css'/>"/>

    <!-- ace styles -->
    <link rel="stylesheet" href="<c:url value='/assert/login/css/ace.min.css'/>"/>

    <link rel="stylesheet" href="<c:url value="/assert/login/css/ace-rtl.min.css"/>"/>
</head>

<body class="login-layout light-login">

<dec:body />

<!--[if !IE]> -->
<script src="<c:url value="/assert/login/js/jquery-2.1.4.min.js"/>"></script>

<!-- inline scripts related to this page -->
<script type="text/javascript">
    jQuery(function ($) {
        $(document).on('click', '.toolbar a[data-target]', function (e) {
            e.preventDefault();
            var target = $(this).data('target');
            $('.widget-box.visible').removeClass('visible');//hide others
            $(target).addClass('visible');//show target
        });
    });


    //you don't need this, just used for changing background
    jQuery(function ($) {
        $('#btn-login-light').on('click', function (e) {
            $('body').attr('class', 'login-layout light-login');
            $('#id-text2').attr('class', 'grey');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });

        $('#btn-login-dark').on('click', function (e) {
            $('body').attr('class', 'login-layout');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'blue');

            e.preventDefault();
        });

        $('#btn-login-blur').on('click', function (e) {
            $('body').attr('class', 'login-layout blur-login');
            $('#id-text2').attr('class', 'white');
            $('#id-company-text').attr('class', 'light-blue');

            e.preventDefault();
        });

    });
</script>
</body>
</html>


