<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>SB Admin 2 - Dashboard</title>

    <!-- Custom fonts for this template-->
    <link href="../assert/admin/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="../assert/admin/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <%--header--%>
    <%@include file="/common/admin/header.jsp"%>
    <%--header--%>

    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <%@include file="/common/admin/nav.jsp"%>

        <div id="content">
        <dec:body />
    </div>
    </div>

    <%--footer--%>

    <%--footer--%>



</div>
<%@include file="/common/admin/footer.jsp"%>
<!-- End of Page Wrapper -->

<!-- Scroll to Top Button-->

<!-- Bootstrap core JavaScript-->
<script src="../assert/admin/vendor/jquery/jquery.min.js"></script>
<script src="../assert/admin/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- Core plugin JavaScript-->
<script src="..//assert/admin/vendor/jquery-easing/jquery.easing.min.js"></script>

<!-- Custom scripts for all pages-->
<script src="../assert/admin/js/sb-admin-2.min.js"></script>

<!-- Page level plugins -->
<script src="../assert/admin/vendor/chart.js/Chart.min.js"></script>

<!-- Page level custom scripts -->
<script src="../assert/admin/js/demo/chart-area-demo.js"></script>
<script src="../assert/admin/js/demo/chart-pie-demo.js"></script>

</body>

</html>
