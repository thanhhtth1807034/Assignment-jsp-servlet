<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List Fruit</title>
</head>
<body>
<div align="center">
    <table border="1" cellpadding="5">
        <caption>
            <h2>List Of Categories</h2>
        </caption>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Desc</th>
            <th>Price</th>
            <th>Unit</th>
            <th>Origin</th>
            <th>Thumbnail</th>
            <th>CategoryId</th>
<%--            <th>Actions</th>--%>
        </tr>
        <c:forEach var="fruit" items="${requestScope.fruits}">
            <tr>
                <td>${fruit.id}</td>
                <td>${fruit.name}</td>
                <td>${fruit.description}</td>
                <td>${fruit.price}</td>
                <td>${fruit.unit}</td>
                <td>${fruit.origin}</td>
                <td>${fruit.thumbnail}</td>
                <td>${fruit.categoryId}</td>
                    <%--                <td>--%>
                    <%--                    <a href="${pageContext.request.contextPath}/update?id=<c:out value='${cate.id}'/>">Edit</a>--%>
                    <%--                    &nbsp;&nbsp;&nbsp;&nbsp;--%>
                    <%--                    <a href="${pageContext.request.contextPath}/delete?id=<c:out value='${cate.id}'/>">Delete</a>--%>
                    <%--                </td>--%>
            </tr>
        </c:forEach>
    </table>
</div>

</body>
</html>
