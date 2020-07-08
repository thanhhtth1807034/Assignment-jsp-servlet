<div class="container-fluid">
    <!-- Page Heading -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Form Add Fruit</h6>
        </div>
        <div class="card-body">
            <form action="admin-add-category" method="post">
                <input type="hidden" name="id" value="${requestScope.categoryId}">
                <div class="form-row">
                    <div class="form-group col-md-6">
                        <label >Name</label>
                        <input type="text" class="form-control" name="name" value="${requestScope.categories.name}" placeholder="Name">
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Save category</button>
            </form>
        </div>
    </div>
</div>
