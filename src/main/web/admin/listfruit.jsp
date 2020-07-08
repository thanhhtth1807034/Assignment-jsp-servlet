<%@include file="/common/taglib.jsp"%>
<div class="container-fluid">

    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Tables</h1>


    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Tables Fruit</h6>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Desc</th>
                        <th>Price</th>
                        <th>Unit</th>
                        <th>Origin</th>
                        <th>Thumbnail</th>
                        <th>CategoryId</th>
                        <th></th>
                    </tr>
                    </thead>
                    <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Desc</th>
                        <th>Price</th>
                        <th>Unit</th>
                        <th>Origin</th>
                        <th>Thumbnail</th>
                        <th>CategoryId</th>
                            <th></th>
                    </tr>
                    </tfoot>
                    <tbody>
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
                            <td>
                                <a href="${pageContext.request.contextPath}/admin/update-fruit?id=<c:out value='${fruit.id}'/>">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/admin/delete-fruit?id=<c:out value='${fruit.id}'/>">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>




                    </tbody>
                </table>
            </div>
        </div>
    </div>

</div>