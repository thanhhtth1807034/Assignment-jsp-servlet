<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800">Update Fruit</h1>
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Form Update Fruit</h6>

        </div>
        <div class="card-body">
            <form action="admin-update-fruit" method="post">
                <input type="hidden" name="id" value="${requestScope.fruitId}">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label >Name</label>
                        <input type="text" name="name" value="${requestScope.fruits.name}" class="form-control" >
                    </div>
                    <div class="form-group col-md-6">
                        <label >Description</label>
                        <input type="text" name="description" value="${requestScope.fruits.description}" class="form-control" >
                    </div>
                </div>
                <div class="form-group">
                    <label >Price</label>
                    <input type="number" name="price" value="${requestScope.fruits.price}" class="form-control" >
                </div>
                <div class="form-group">
                    <label >Unit</label>
                    <input type="text" name="unit" value="${requestScope.fruits.unit}" class="form-control" >
                </div>
                <div class="form-row">
                    <div class="form-group col-md-4">
                        <label >Origin</label>
                        <input type="text" name="origin" value="${requestScope.fruits.origin}" class="form-control" >
                    </div>


        <div class="form-group col-md-4">
            <label >Thumbnail</label>
<%--            <input type="text" name="thumbnail" value="${requestScope.fruits.thumbnail}" class="form-control" >--%>
            <div class="custom-file">
                <input type="text" value="${requestScope.fruits.thumbnail}" class="custom-file-input col-md-6" name="thumbnail" >
                <label id="upload_widget"  class="custom-file-label" for="upload_widget">Choose file</label>
                <img id="preview" width="180px" src="${requestScope.fruits.thumbnail}"/>

            </div>
        </div>
        <div class="form-group col-md-4">
            <label >Category</label>
            <select name="categoryId" class="form form-control">

                            <c:forEach var="cate" items="${requestScope.listCate}">
                                <option value="${cate.id}" selected = "${requestScope.fruits.categoryId == cate.id ? "selected" : null}" >${cate.name}</option>
                            </c:forEach>
                        </select>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Save Product</button>
            </form>
        </div>
    </div>
</div>
