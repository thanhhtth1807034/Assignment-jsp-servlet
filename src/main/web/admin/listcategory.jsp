<%@include file="/common/taglib.jsp"%>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Tables</h1>


    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">DataTables Example</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th></th>
                    </tr>
                    </tfoot>
                    <tbody>
                    <c:forEach var="cate" items="${requestScope.categories}">
                        <tr>
                            <td>${cate.id}</td>
                            <td>${cate.name}</td>
                                <%--                <td>--%>
                                <%--                    <a href="${pageContext.request.contextPath}/update?id=<c:out value='${cate.id}'/>">Edit</a>--%>
                                <%--                    &nbsp;&nbsp;&nbsp;&nbsp;--%>
                                <%--                    <a href="${pageContext.request.contextPath}/delete?id=<c:out value='${cate.id}'/>">Delete</a>--%>
                                <%--                </td>--%>
                        </tr>
                    </c:forEach>


                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>