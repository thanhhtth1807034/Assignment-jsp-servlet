
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<div class="container">
    <h1 style="padding: 10px 0 35px 0;">Update Fruit</h1>
    <form action="/admin/update-fruit" method="post" class="col-md-8 " id="formAddProduct">
        <input type="hidden" name="id" value="${requestScope.fruitId}">
        <div class="form-row">
            <div class="form-group col-md-12">
                <label>Name</label>
                <input type="text" value="${requestScope.fruits.name}"  name="name" class="form-control" >

            </div>
            <div class="form-group col-md-12">
                <label>Description</label>
                <textarea rows="4" cols="50"   type="text" name="description" class="form-control " style="margin-top: 0px; margin-bottom: 0px; height: 129px;" >
                    ${requestScope.fruits.description}
                </textarea>

            </div>
        </div>
        <div class="form-group ">
            <label>Price</label>
            <input type="number" value="${requestScope.fruits.price}" name="price" class="form-control" >

        </div>
        <div class="form-row"><div class="form-group col-md-6">
            <label>Unit</label>
            <input type="text" value="${requestScope.fruits.unit}" name="unit" class="form-control" >

        </div>
            <div class="form-group col-md-6">
                <label>Category</label>
                <div>
                    <select name="categoryId" class="form form-control">
                        <c:forEach var="cate" items="${requestScope.listCate}">
                            <option value="${cate.id}" selected=${cate.id==requestScope.fruits.categoryId ? "selected":null} >${cate.name}</option>
                        </c:forEach>

                    </select>
                </div>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Origin</label>
                <input type="text" value="${requestScope.fruits.origin}" name="origin" class="form-control" >
            </div>

            <div class="form-group col-md-6">
                <label>Thumbnail</label>
                <div class="custom-file">
                    <input type="text" value="${requestScope.fruits.thumbnail}" class="custom-file-input col-md-6" name="thumbnail" >
                    <label id="upload_widget"  class="custom-file-label" for="upload_widget">Choose file</label>
                    <img id="preview" width="180px" src="${requestScope.fruits.thumbnail}"/>

                </div>

            </div>

        </div>

        <button type="submit" class="btn btn-primary" id="btnAdd">Update Product</button>
    </form>
</div>
