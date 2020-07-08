<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String code = String.valueOf(request.getAttribute("code"));
    String message = String.valueOf(request.getAttribute("message"));
%>
<html>
<head>
    <title>Error page</title>
</head>
<body>
<h1><%= "Error " + code%> - <%= message%></h1>
</body>
</html>