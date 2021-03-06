<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.ArrayList" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
    HashMap<String, ArrayList<String>> errors = (HashMap<String, ArrayList<String>>) request.getAttribute("errors");
%>
<div class="container">
    <h1 style="padding: 10px 0 35px 0;">Add Product</h1>
    <form action="/admin/add-fruit" method="post" class="col-md-8 " id="formAddProduct">
        <div class="form-row">
            <div class="form-group col-md-12">
                <label>Name</label>
                <input type="text" name="name" class="form-control" >
                <%
                    if(errors!=null && errors.containsKey("name")){
                %>
                <p class="error">* <%=errors.get("name").get(0)%></p>
                <%
                    }
                %>
            </div>
            <div class="form-group col-md-12">
                <label>Description</label>
                <textarea rows="4" cols="50" type="text" name="description" class="form-control " style="margin-top: 0px; margin-bottom: 0px; height: 129px;" ></textarea>
                <%
                    if(errors!=null && errors.containsKey("description")){
                %>
                <p class="error">* <%=errors.get("description").get(0)%></p>
                <%
                    }
                %>
            </div>
        </div>
        <div class="form-group ">
            <label>Price</label>
            <input type="number" name="price" class="form-control" >
            <%
                if(errors!=null && errors.containsKey("price")){
            %>
            <p class="error">* <%=errors.get("price").get(0)%></p>
            <%
                }
            %>
        </div>
        <div class="form-row"><div class="form-group col-md-6">
            <label>Unit</label>
            <input type="text" name="unit" class="form-control" >
            <%
                if(errors!=null && errors.containsKey("unit")){
            %>
            <p class="error">* <%=errors.get("unit").get(0)%></p>
            <%
                }
            %>
        </div>
            <div class="form-group col-md-6">
            <label>Category</label>
                <div>
                    <select name="categoryId" class="form form-control">
                        <c:forEach var="cate" items="${requestScope.listCate}">
                            <option value="${cate.id}" >${cate.name}</option>
                        </c:forEach>

                    </select>
                </div>
            </div>
        </div>

        <div class="form-row">
            <div class="form-group col-md-6">
                <label>Origin</label>
                <input type="text" name="origin" class="form-control" >
            </div>
            <%
                if(errors!=null && errors.containsKey("origin")){
            %>
            <p class="error">* <%=errors.get("origin").get(0)%></p>
            <%
                }
            %>

            <div class="form-group col-md-6">
                <label>Thumbnail</label>
                <div class="custom-file">
                    <input type="text" class="custom-file-input col-md-6" name="thumbnail" >
                    <%
                        if(errors!=null && errors.containsKey("thumbnail")){
                    %>
                    <p class="error">* <%=errors.get("thumbnail").get(0)%></p>
                    <%
                        }
                    %>
                    <label id="upload_widget"  class="custom-file-label" for="upload_widget">Choose file</label>
                    <img id="preview" width="180px" src=""/>

                </div>

            </div>

        </div>

        <button type="submit" class="btn btn-primary" id="btnAdd">Add Product</button>
    </form>
</div>
