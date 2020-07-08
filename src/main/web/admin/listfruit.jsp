<%@include file="/common/taglib.jsp" %>
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <div class="row">
                <div class="col-9">
                    <h6 class="m-0 font-weight-bold text-primary">Tables Fruit</h6>
                </div>
                <div class="col-3">
                    <select type="search" class="select-table-filter" data-table="order-table">
                        <option value="">Category</option>
                        <option value="Imported Fruit">Imported Fruit</option>
                        <option value="Domestic Fruit">Domestic Fruit</option>
                    </select>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table id="example" class="order-table display" style="width:100%">
                    <thead>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Desc</th>
                        <th>Price</th>
                        <th>Unit</th>
                        <th>Origin</th>
                        <th>Thumbnail</th>
                        <th>Category</th>
                        <th>Action</th>
                    </tr>
                    </thead>
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
                            <td><b>${fruit.category.name}</b></td>
                            <td>
                                <a href="${pageContext.request.contextPath}/admin-update-fruit?id=<c:out value='${fruit.id}'/>"
                                   style="text-decoration: none">Edit</a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/admin-delete-fruit?id=<c:out value='${fruit.id}'/>"
                                   style="text-decoration: none">Delete</a>
                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                    <tfoot>
                    <tr>
                        <th>ID</th>
                        <th>Name</th>
                        <th>Desc</th>
                        <th>Price</th>
                        <th>Unit</th>
                        <th>Origin</th>
                        <th>Thumbnail</th>
                        <th>Category</th>
                        <th>Action</th>
                    </tr>
                    </tfoot>
                </table>
            </div>
        </div>
    </div>
</div>

<script>
    (function (document) {
        'use strict';
        var LightTableFilter = (function (Arr) {
            var _select;

            function _onSelectEvent(e) {
                _select = e.target;
                var tables = document.getElementsByClassName(_select.getAttribute('data-table'));
                Arr.forEach.call(tables, function (table) {
                    Arr.forEach.call(table.tBodies, function (tbody) {
                        Arr.forEach.call(tbody.rows, _filterSelect);
                    });
                });
            }

            function _filterSelect(row) {

                var text_select = row.textContent.toLowerCase(),
                    val_select = _select.options[_select.selectedIndex].value.toLowerCase();
                row.style.display = text_select.indexOf(val_select) === -1 ? 'none' : 'table-row';

            }

            return {
                init: function () {
                    var selects = document.getElementsByClassName('select-table-filter');
                    Arr.forEach.call(selects, function (select) {
                        select.onchange = _onSelectEvent;
                    });
                }
            };
        })(Array.prototype);

        document.addEventListener('readystatechange', function () {
            if (document.readyState === 'complete') {
                LightTableFilter.init();
            }
        });

    })(document);
</script>