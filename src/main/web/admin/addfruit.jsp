<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<form action="/admin/add-fruit" method="post">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label >Name</label>
            <input type="text" name="name" class="form-control" >
        </div>
        <div class="form-group col-md-6">
            <label >Description</label>
            <input type="text" name="description" class="form-control" >
        </div>
    </div>
    <div class="form-group">
        <label >Price</label>
        <input type="number" name="price" class="form-control" >
    </div>
    <div class="form-group">
        <label >Unit</label>
        <input type="text" name="unit" class="form-control" >
    </div>
    <div class="form-row">
        <div class="form-group col-md-4">
            <label >Origin</label>
            <input type="text" name="origin" class="form-control" >
        </div>

        <div class="form-group col-md-4">
            <label >Thumbnail</label>
            <input type="text" name="thumbnail" class="form-control" >
        </div>
        <div class="form-group col-md-4">
            <label >CategoryId</label>
            <select name="categoryId" >
                <c:forEach var="cate" items="${requestScope.listCate}">
                    <option value="${cate.id}" selected>${cate.name}</option>
                </c:forEach>
            </select>
        </div>
    </div>

    <button type="submit" class="btn btn-primary">Save Product</button>
</form>