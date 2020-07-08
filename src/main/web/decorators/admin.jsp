<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@include file="/common/taglib.jsp" %>

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
    <link href="<c:url value='/assert/admin/vendor/fontawesome-free/css/all.min.css'/>" rel="stylesheet"
          type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
          rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="<c:url value='/assert/admin/css/sb-admin-2.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/assert/admin/css/jquery.dataTables.min.css'/>" rel="stylesheet">
    <link href="<c:url value='/assert/admin/vendor/datatables/dataTables.bootstrap4.css'/>" rel="stylesheet">

    <style>
        .error {
            color: #f30000 !important;
            font-size: 12px !important;
            position: relative;
            line-height: 1.5;
            width: 100%;
        }
    </style>
</head>

<body id="page-top">

<!-- Page Wrapper -->
<div id="wrapper">

    <!-- Sidebar -->
    <%--header--%>
    <%@include file="/common/admin/header.jsp" %>
    <%--header--%>

    <div id="content-wrapper" class="d-flex flex-column">

        <!-- Main Content -->
        <%@include file="/common/admin/nav.jsp" %>

        <div id="content">
            <dec:body/>
        </div>
    </div>

    <%--footer--%>

    <%--footer--%>


</div>
<%@include file="/common/admin/footer.jsp" %>
<!-- End of Page Wrapper -->

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<!-- Bootstrap core JavaScript-->
<script src="<c:url value='/assert/admin/vendor/jquery/jquery.min.js'/>"></script>
<script src="<c:url value='/assert/admin/vendor/bootstrap/js/bootstrap.bundle.min.js'/>"></script>

<!-- Core plugin JavaScript-->
<script src="<c:url value='/assert/admin/vendor/jquery-easing/jquery.easing.min.js'/>"></script>

<!-- Custom scripts for all pages-->
<script src="<c:url value='/assert/admin/js/sb-admin-2.min.js'/>"></script>

<!-- Page level plugins -->
<script src="<c:url value='/assert/admin/vendor/chart.js/Chart.min.js'/>"></script>
<script type="text/javascript" src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.13.1/jquery.validate.min.js"></script>

<!-- Page level custom scripts -->
<script src="<c:url value='/assert/admin/js/demo/chart-area-demo.js'/>"></script>
<script src='<c:url value="/assert/admin/js/demo/chart-pie-demo.js"/>'></script>

<script src="<c:url value='/assert/admin/js/demo/datatables-demo.js'/>"></script>
<script src="<c:url value='/assert/admin/vendor/datatables/dataTables.bootstrap4.js'/>"></script>
<script src="<c:url value='/assert/admin/vendor/datatables/jquery.dataTables.js'/>"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $("#formAddProduct").validate({
            rules: {
                name: "required",
                description: "required",
                price: {
                    required: true,
                    number: true,
                    min: 0
                },
                unit: "required",
                origin: "required",
                thumbnail: "required"
            },
            messages:{
                name: "Please enter name product",
                description: "Please enter description product",
                price: {
                    required: "Please select a price for the product",
                    number: "The price must be a number",
                    min: "The price must be greater than 0"
                },
                unit: "Please enter unit product",
                origin: "Please enter origin product",
                thumbnail: "Please select the product image file"
            }
        });
        $("#formAddCate").validate({
            rules: {
                name: "required"
            },
            messages:{
                name: "Please enter name category"
            }
        });
    });
</script>
<script src="https://widget.cloudinary.com/v2.0/global/all.js" type="text/javascript"></script>

<script type="text/javascript">
    var myWidget = cloudinary.createUploadWidget({
            cloudName: 'kuramakyubi',
            uploadPreset: 'vzg8snty',

        },
        (error, result) => {
            if (!error && result && result.event === "success") {
                var url = "https://res.cloudinary.com/kuramakyubi/image/upload/c_fill,h_315,w_510/v1593177061/" + result.info.public_id + "." + result.info.format;
                $("#preview").attr("src", url);
                $("input[name ='thumbnail']").val(url);
            }
        }
    );
    document.getElementById("upload_widget").addEventListener("click",
        function () {
            myWidget.open();
        },
        false);
</script>

<script src="<c:url value='/assert/admin/js/demo/jquery.dataTable.min.js'/>"></script>

</body>

</html>
