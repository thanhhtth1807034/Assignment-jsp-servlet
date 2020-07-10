<%@include file="/common/taglib.jsp" %>
<div class="container-fluid">
    <!-- Page Heading -->
    <h1 class="h3 mb-2 text-gray-800">Tables</h1>
    <!-- DataTales Example -->
    <div class="card shadow mb-4">
        <div class="card-header py-3">
            <div class="row">
                <div class="col-2">
                    <h6 class="m-0 font-weight-bold text-primary">Tables Fruit</h6>
                </div>
                <div class="col-5">
                    <div class="row">
                        <h6 class="col-4 mt-2">select by category</h6>
                        <form action="" class="col-8">
                            <select type="search" name="example_length" class="select-table-filter  form-control"
                                    aria-controls="example" data-table="order-table">
                                <option value="">Category</option>
                                <option value="Imported Fruit">Imported Fruit</option>
                                <option value="Domestic Fruit">Domestic Fruit</option>
                            </select>
                        </form>
                    </div>
                </div>
                <div class="col-5">
                    <div class="row">
                        <h6 class="col-4 mt-2">select by status</h6>
                        <form class="col-8" action="/admin/list-fruit" id="statusform">
                            <select id="status" name="status" class="select-table-filter  form-control"
                                    aria-controls="example" data-table="order-table">
                                <option selected>---Seclect---</option>
                                <option value="all">All</option>
                                <option value="1"  >Active</option>
                                <option value="-1" >Deleted</option>
                            </select>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <div class="card-body">
            <div class="table-responsive">
                <table id="example" class="order-table display" style="width:100%">
                    <thead>
                    <tr>
                        <th rowspan="1" colspan="1"><input type="checkbox" id="checkAll"/>Select All</th>
                        <th>Name</th>
                        <th>Desc</th>
                        <th>Price</th>
                        <th>Unit</th>
                        <th>Origin</th>
                        <th>Thumbnail</th>
                        <th>Category</th>
                        <th>Status</th>
                        <th>Action</th>
                    </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="fruit" items="${requestScope.fruits}">
                        <tr>
                            <td>
                                <input type="checkbox" class="check" value="${fruit.id}"/>
                            </td>
                            <td>${fruit.name}</td>
                            <td>${fruit.description}</td>
                            <td>$${fruit.price}</td>
                            <td>${fruit.unit}</td>
                            <td>${fruit.origin}</td>
                            <td><img src="${fruit.thumbnail}" alt="" width="120px"></td>
                            <td><b>${fruit.category.name}</b></td>
                            <c:if test = "${fruit.status == 1}">
                                <td>Active</td>
                            </c:if>
                            <c:if test = "${fruit.status == -1}">
                                <td>Deleted</td>
                            </c:if>
                            <td>

                                <a href="${pageContext.request.contextPath}/admin/update-fruit?id=<c:out value='${fruit.id}'/>"
                                   style="text-decoration: none"><i class="fas fa-edit">


                                </i>
                                </a>
                                &nbsp;&nbsp;&nbsp;&nbsp;
                                <a href="${pageContext.request.contextPath}/admin/delete-fruit?id=<c:out value='${fruit.id}'/>"
                                   style="text-decoration: none"><i class="fa fa-trash" aria-hidden="true"></i>
                                </a>

                            </td>
                        </tr>
                    </c:forEach>
                    </tbody>
                </table>
            </div>
            <div class="row mt-3">
                <div class="col-3 mt-2">
                    <div class="form-group mr-3">
                        <select class="form-control mr-2" id="select-action">
                            <option value="6">--Choose Action--</option>
                            <option value="1">Active Return</option>
                            <option value="-1">Deleted</option>
                        </select>
                    </div>
                </div>
                <div class="col-9">
                    <button type="button" class="btn btn-success" style="margin-top: 8px;" id="action_contract">
                        Confirm
                    </button>
                </div>
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