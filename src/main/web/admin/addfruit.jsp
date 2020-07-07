<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Add Fruits</h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Form Add Fruit</h6>
        </div>
        <div class="card-body">
            <form action="admin-add-fruit" method="post">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label>Name</label>
                        <input type="text" name="name" class="form-control">
                    </div>
                    <div class="form-group col-md-6">
                        <label>Description</label>
                        <input type="text" name="description" class="form-control">
                    </div>
                </div>
                <div class="form-group">
                    <label>Price</label>
                    <input type="number" name="price" class="form-control">
                </div>
                <div class="form-group">
                    <label>Unit</label>
                    <input type="text" name="unit" class="form-control">
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label>Origin</label>
                        <input type="text" name="origin" class="form-control">
                    </div>

                    <div class="form-group col-md-4">
                        <label>Thumbnail</label>
                        <input type="text" name="thumbnail" class="form-control">
                    </div>
                    <div class="form-group col-md-4">
                        <label>CategoryId</label>
                        <select name="categoryId">
                            <c:forEach var="cate" items="${requestScope.listCate}">
                                <option value="${cate.id}" selected>${cate.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Save Product</button>
            </form>
        </div>
    </div>
</div>
