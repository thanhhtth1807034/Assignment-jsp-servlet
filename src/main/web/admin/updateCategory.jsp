<form action="/admin/add-category" method="post">
    <input type="hidden" name="id" value="${requestScope.categoryId}">
    <div class="form-row">
        <div class="form-group col-md-6">
            <label >Name</label>
            <input type="text" class="form-control" name="name" value="${requestScope.categories.name}" placeholder="Name">
        </div>
    </div>

    <button type="submit" class="btn btn-primary">Save category</button>
</form>