<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.HashMap" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    HashMap<String, ArrayList<String>> errors = (HashMap<String, ArrayList<String>>) request.getAttribute("errors");
%>
<style>
    .error {
        color: red;
    }
</style>

<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Add Categories</h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Form Add Categories</h6>
        </div>
        <div class="card-body">
            <form action="/admin/add-category" method="post" class="col-md-8 " id="formAddCategory">
                <div class="form-row">
                    <div class="form-group col-md-6">

                        <label>Category Name</label>
                        <input type="text" class="form-control" name="name"  placeholder="Name">
                        <%
                            if(errors!=null && errors.containsKey("name")){
                        %>
                        <p class="error">* <%=errors.get("name").get(0)%></p>
                        <%
                            }
                        %>
                    </div>
                </div>

                <button type="submit" class="btn btn-primary">Save Category</button>
            </form>
        </div>
    </div>
</div>
