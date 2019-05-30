<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <%@include file="/WEB-INF/views/common/include/meta.jsp" %>
    <title>IT Service Management | Create Incident</title>
    <script type="text/javascript" src="http://code.jquery.com/jquery-1.9.1.min.js"></script>
    <script type="text/javascript" src="http://code.jquery.com/ui/1.10.3/jquery-ui.js"></script>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- .wrapper -->
<div class="wrapper">

    <%@include file="/WEB-INF/views/common/include/headerUser.jsp" %>
    <%@include file="/WEB-INF/views/common/include/aside.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Create new</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"
                                        data-toggle="tooltip"
                                        title="Collapse">
                                    <i class="fa fa-minus"></i></button>
                                <button type="button" class="btn btn-box-tool" data-widget="remove"
                                        data-toggle="tooltip"
                                        title="Remove">
                                    <i class="fa fa-times"></i></button>
                            </div>
                        </div>
                        <div class="box-body">
                            <form:form method="POST" name="incident" onsubmit="return validateForm()"
                                       modelAttribute="incidentForm" class="form-signin">
                                <button class="btn  btn-primary" type="submit">Assign to self</button>
                                <a href="/user/home" class="btn  btn-danger">Cancel</a>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="id">Incident ID:</label>
                                        <form:input type="number" path="id" class="form-control" disabled="true"
                                                    autofocus="true"></form:input>
                                        <form:errors path="id"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="requestor">Requested By:</label>
                                        <form:select path="requestor" items="${customers}" itemValue="id"
                                                     itemLabel="displayName" class="form-control"/>
                                        <form:errors path="requestor"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="company">Company</label>
                                        <input id="company" class="form-control" disabled>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="location">Location</label>
                                        <input id="location" class="form-control" disabled>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="email">Email</label>
                                        <input id="email" class="form-control" disabled>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="contactNumber">Contact Number</label>
                                        <input id="contactNumber" class="form-control" disabled>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="createdAt">Created at</label>
                                        <form:input type="text" path="createdAt" class="form-control" disabled="true"
                                                    autofocus="true"></form:input>
                                        <form:errors path="createdAt"></form:errors>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="source">Source</label>
                                        <form:select type="text" path="source" class="form-control"
                                                     autofocus="true">
                                            <form:option value="email">Email</form:option>
                                            <form:option value="phone">Phone</form:option>
                                            <form:option value="supportTeam">Support Team</form:option>
                                            <form:option value="walkIn">Walk-in</form:option>
                                        </form:select>
                                        <form:errors path="source"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="status">Incident Status</label>
                                        <form:select type="text" path="status" class="form-control"
                                                     autofocus="true">
                                            <form:option value="Assigned" selected="selected">Assigned</form:option>
                                            <form:option value="Work in progress">Work in progress</form:option>
                                            <form:option value="Resolved">Resolved</form:option>
                                        </form:select>
                                        <form:errors path="status"></form:errors>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="summary">Summary</label>
                                        <form:input type="text" path="summary" class="form-control"
                                                    autofocus="true"></form:input>
                                        <form:errors path="summary"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="description">Description</label>
                                        <form:textarea type="text" path="description" class="form-control"
                                                       autofocus="true" rows="10"></form:textarea>
                                        <form:errors path="description"></form:errors>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="category">Category</label>
                                        <form:select name="category" id="categorySel" size="1" type="text"
                                                     path="category"
                                                     class="form-control"
                                                     autofocus="true">
                                            <form:option value="category" selected="selected">-- Empty--</form:option>
                                        </form:select>
                                        <form:errors path="category"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="category">Sub Category</label>
                                        <form:select name="subCategory" id="subCategorySel" size="1" type="text"
                                                     path="subCategory"
                                                     class="form-control"
                                                     autofocus="true">
                                            <form:option value="subCategory"
                                                         selected="selected">-- Empty--</form:option>
                                        </form:select>
                                        <form:errors path="subCategory"></form:errors>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="priority">Priority</label>
                                        <form:select type="text" path="priority" class="form-control"
                                                     autofocus="true">
                                            <form:option value="Priority 1">Priority 1</form:option>
                                            <form:option value="Priority 2">Priority 2</form:option>
                                            <form:option value="Priority 3">Priority 3</form:option>
                                            <form:option value="Priority 4" selected="selected">Priority 4</form:option>
                                        </form:select>
                                        <form:errors path="priority"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="assigmentGroup">Assigment Group</label>
                                        <form:select path="assigmentGroup" items="${groups}" itemValue="id"
                                                     itemLabel="name" class="form-control"/>
                                        <form:errors path="assigmentGroup"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label id="resolver">Assigned to</label>
                                        <input class="form-control" disabled>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </form:form>
                </div>
            </div>
        </section>
    </div>


    <%@include file="/WEB-INF/views/common/include/footer.jsp" %>
    <%@include file="/WEB-INF/views/common/include/control-sidebar.jsp" %>

</div>
<!-- /.wrapper -->

<%@include file="/WEB-INF/views/common/include/script.jsp" %>
<script>
    var categories = {
        "Hardware": {
            "Failure": {},
            "Missing/stolen": {},
            "Damaged": {}
        },
        "Software": {
            "Hang": {},
            "Performance degradation": {},
            "Data management": {},
            "Application crashed": {},
        },
        "User": {
            "Password problem": {},
            "Lack of education": {},
        }

    }


    window.onload = function () {

        var categorySel = document.getElementById("categorySel");
        var subCategorySel = document.getElementById("subCategorySel");

        for (var category in categories) {
            categorySel.options[categorySel.options.length] = new Option(category, category);
        }

        categorySel.onchange = function () {

            subCategorySel.length = 1;

            if (this.selectedIndex < 1)
                return; // done

            for (var subCategory in categories[this.value]) {
                subCategorySel.options[subCategorySel.options.length] = new Option(subCategory, subCategory);
            }
        }
    }

</script>
<script>
    function validateForm() {
        var x = document.forms["incident"]["category"].value;
        var y = document.forms["incident"]["subCategory"].value;
        if (x == "category") {
            alert("Please choose the category!");
        }

        if (y == "subCategory") {
            alert("Please choose the Sub Category!");
            return false;
        }
    }
</script>
</body>
</html>