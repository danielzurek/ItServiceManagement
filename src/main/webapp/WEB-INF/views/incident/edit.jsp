<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>
    <meta charset="UTF-8">
    <%@include file="/WEB-INF/views/common/include/meta.jsp" %>
    <title>IT Service Management | Incident</title>
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
                            <h3 class="box-title">Incident ID: ${incidentFormEdit.id}</h3>

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
                            <form:form method="POST" name="incident" modelAttribute="incidentFormEdit" class="form-signin" onsubmit="return validateForm()">
                            <div id="notSolved">
                                <button class="btn  btn-primary" id="btnSubmit" type="submit">Save</button>
                                <a href="/user/home" class="btn  btn-danger">Cancel</a>
                            </div>
                                <div id="solved">
                                    <a href="/user/home" class="btn  btn-danger">Go home</a>
                                </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="id">Incident ID:</label>
                                        <form:input type="number" path="id" class="form-control" disabled="true"
                                                    autofocus="true"></form:input>
                                        <form:errors path="id"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="requestor.id">Requested By:</label>
                                        <form:select id="requestor" path="requestor.id" items="${customers}"
                                                     itemValue="id" disabled="true"
                                                     itemLabel="displayName" class="form-control"/>
                                        <form:errors path="requestor"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="requestor.company.name">Company</label>
                                        <form:input type="text"
                                                    path="requestor.company.name" class="form-control" readonly="true"
                                                    autofocus="true"></form:input>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="location">Location</label>
                                        <form:input id="location" type="text" path="requestor.location"
                                                    class="form-control" readonly="true"
                                                    autofocus="true"></form:input>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="email">Email</label>
                                        <form:input id="email" type="text" path="requestor.emailAddress"
                                                    class="form-control" readonly="true"
                                                    autofocus="true"></form:input>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="contactNumber">Contact Number</label>
                                        <form:input id="contactNumber" type="text" path="requestor.phoneNumber"
                                                    class="form-control"
                                                    readonly="true"
                                                    autofocus="true"></form:input>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="createdAt">Created at</label>
                                        <form:input type="text" path="createdAt" class="form-control" readonly="true"
                                                    autofocus="true"></form:input>
                                        <form:errors path="createdAt"></form:errors>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="source">Source</label>
                                        <form:select type="text" path="source" class="form-control" readonly="true"
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
                                        <form:select name="status" type="text" path="status" class="form-control"
                                                     autofocus="true">
                                            <form:option value="Assigned">Assigned</form:option>
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
                                        <form:input name="summary" type="text" path="summary" class="form-control"
                                                    autofocus="true"></form:input>
                                        <form:errors path="summary"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="description">Description</label>
                                        <form:textarea name="description" type="text" path="description"
                                                       class="form-control"
                                                       autofocus="true" rows="10"></form:textarea>
                                        <form:errors path="description"></form:errors>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="category">Category</label>
                                        <form:select id="categorySel" size="1" type="text" path="category"
                                                     class="form-control" readonly="true"
                                                     autofocus="true">
                                            <form:option value="${incidentFormEdit.category}"></form:option>
                                        </form:select>
                                        <form:errors path="status"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="category">Sub Category</label>
                                        <form:select id="subCategorySel" size="1" type="text" path="subCategory"
                                                     class="form-control" readonly="true"
                                                     autofocus="true">
                                            <form:option value="${incidentFormEdit.subCategory}"></form:option>
                                        </form:select>
                                        <form:errors path="status"></form:errors>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="priority">Priority</label>
                                        <form:select name="priority" type="text" path="priority" class="form-control"
                                                     autofocus="true">
                                            <form:option value="Priority 1">Priority 1</form:option>
                                            <form:option value="Priority 2">Priority 2</form:option>
                                            <form:option value="Priority 3">Priority 3</form:option>
                                            <form:option value="Priority 4">Priority 4</form:option>
                                        </form:select>
                                        <form:errors path="status"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="assigmentGroup">Assigment Group</label>
                                        <form:select name="assigmentGroup" path="assigmentGroup" items="${groups}"
                                                     itemValue="id"
                                                     itemLabel="name" class="form-control" id="assigmentGroup"/>
                                        <form:errors path="assigmentGroup"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="resolver.id">Assigned to</label>
                                        <form:select id="assignedTo" path="resolver.id" items="${users}" itemValue="id"
                                                     itemLabel="displayName" class="form-control"/>
                                        <form:errors path="resolver"></form:errors>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group ${status.error ? 'has-error' : ''}" id="workNotes">
                                        <label for="workNotes">Work Notes</label>
                                        <form:textarea id="notes" type="text" path="workNotes" class="form-control"
                                                       autofocus="true" rows="5"></form:textarea>
                                        <form:errors path="workNotes"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}" id="resolutionNotes">
                                        <label for="resolution">Resolution Notes</label>
                                        <form:textarea id="resolution" type="text" path="resolution" required="required" disabled="true"
                                                       class="form-control"
                                                       autofocus="true" rows="5"></form:textarea>
                                        <form:errors path="resolution"></form:errors>
                                    </div>
                                    <div id="incidentDetails">
                                        <label>Incident Details</label></br>
                                        <h4>Incident ID: ${incidentFormEdit.id}</h4>
                                        <h4>Created at: ${incidentFormEdit.createdAt}</h4>
                                        <h4>Requested by: ${incidentFormEdit.requestor.displayName}</h4>
                                        <h4>Category: ${incidentFormEdit.category}</h4>
                                        <h4>Sub Category: ${incidentFormEdit.subCategory}</h4>
                                        <h4>Priority: ${incidentFormEdit.priority}</h4>
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
<c:if test="${not empty incidentFormEdit.resolution}">
    <script>
        $(function () {
            $('#status').attr('disabled', true);
            $('#summary').attr('disabled', true);
            $('#description').attr('disabled', true);
            $('#priority').attr('disabled', true);
            $('#assigmentGroup').attr('disabled', true);
            $('#assignedTo').attr('disabled', true);
            $('#notes').attr('disabled', true);
            $('#notSolved').hide();
            $('#resolutionNotes').show();
        });
    </script>
</c:if>
<c:if test="${empty incidentFormEdit.resolution}">
    <script>
        $(function () {
            $('#solved').hide();
        });
    </script>
    <script>
        $(function () {
            $("#btnSubmit").one("click", function () {
                $('#requestor').attr('disabled', false);
            });
        });
    </script>
    <script>
        $(function () {
            $('#resolutionNotes').hide();
            $('#status').change(function () {
                if ($('#status').val() == 'Resolved') {
                    $('#resolutionNotes').show();
                    $('#resolution').attr('disabled', false);
                    $('#workNotes').hide();
                    // $('#assigmentGroup').attr('disabled', true);
                } else {
                    $('#resolutionNotes').hide();
                }
            });
        });
    </script>
</c:if>
</body>
</html>