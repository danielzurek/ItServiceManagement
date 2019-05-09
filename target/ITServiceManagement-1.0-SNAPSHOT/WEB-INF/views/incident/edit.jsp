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
                            <form:form method="POST" modelAttribute="incidentFormEdit" class="form-signin">
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
                                        <form:select path="requestor.id" items="${customers}" itemValue="id"
                                                     itemLabel="displayName" class="form-control"/>
                                        <form:errors path="requestor"></form:errors>
                                    </div>
                                        <%--<div class="form-group ${status.error ? 'has-error' : ''}">--%>
                                        <%--<label for="requestor.id">Requested By:</label>--%>
                                        <%--<form:input readonly="true" path="requestor.id"--%>
                                        <%--value="${incidentFormEdit.requestor.displayName}"--%>
                                        <%--class="form-control"/>--%>
                                        <%--<form:errors path="requestor"></form:errors>--%>
                                        <%--</div>--%>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="company">Company</label>
                                        <form:input value="${incidentFormEdit.requestor.company.name}" type="text"
                                                    path="company" class="form-control" readonly="true"
                                                    autofocus="true"></form:input>
                                        <form:errors path="company"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="location">Location</label>
                                        <form:input type="text" path="location" class="form-control" readonly="true"
                                                    autofocus="true"></form:input>
                                        <form:errors path="location"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="email">Email</label>
                                        <form:input type="text" path="email" class="form-control" readonly="true"
                                                    autofocus="true"></form:input>
                                        <form:errors path="email"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="contactNumber">Contact Number</label>
                                        <form:input type="text" path="contactNumber" class="form-control"
                                                    readonly="true"
                                                    autofocus="true"></form:input>
                                        <form:errors path="contactNumber"></form:errors>
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
                                            <form:option value="assigned">Assigned</form:option>
                                            <form:option value="workInProgress">Work in progress</form:option>
                                            <form:option value="resolved">Resolved</form:option>
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
                                        <form:select type="text" path="priority" class="form-control"
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
                                        <form:select path="assigmentGroup" items="${groups}" itemValue="id"
                                                     itemLabel="name" class="form-control" id="assigmentGroup"/>
                                        <form:errors path="assigmentGroup"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="resolver.id">Assigned to</label>
                                        <form:select path="resolver.id" items="${users}" itemValue="id"
                                                     itemLabel="displayName" class="form-control"/>
                                        <form:errors path="resolver"></form:errors>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group ${status.error ? 'has-error' : ''}" id="workNotes">
                                        <label for="workNotes">Work Notes</label>
                                        <form:textarea type="text" path="workNotes" class="form-control"
                                                       autofocus="true" rows="5"></form:textarea>
                                        <form:errors path="workNotes"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}" id="resolutionNotes">
                                        <label for="resolution">Resolution Notes</label>
                                        <form:textarea type="text" path="resolution" class="form-control"
                                                       autofocus="true" rows="5"></form:textarea>
                                        <form:errors path="resolution"></form:errors>
                                    </div>
                                    <div id="incidentDetails" style="border: 1px dotted black">
                                        <label>Incident Details</label></br>
                                        <h4>Incident ID: ${incidentFormEdit.id}</h4>
                                        <h4>Created at: ${incidentFormEdit.createdAt}</h4>
                                        <h4>Created by: ${incidentFormEdit.resolver.displayName}</h4>
                                        <h4>Requested by: ${incidentFormEdit.requestor.displayName}</h4>
                                        <h4>Category: ${incidentFormEdit.category}</h4>
                                        <h4>Sub Category: ${incidentFormEdit.subCategory}</h4>
                                        <h4>Priority: ${incidentFormEdit.priority}</h4>
                                    </div>
                                </div>
                                    <%--<form autocomplete="off" action="/action_page.php">--%>
                                    <%--<div class="autocomplete" style="width:300px;">--%>
                                    <%--<input id="myInput" type="text" name="myCountry" placeholder="Country">--%>
                                    <%--</div>--%>
                                    <%--<input type="submit">--%>
                                    <%--</form>--%>
                            </div>
                        </div>
                    </div>
                    <button class="btn  btn-primary" id="btnSubmit" type="submit">Submit</button>
                    <a href="/user/home" class="btn  btn-danger">Cancel</a>
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
<%--<script>--%>
    <%--$(function () {--%>
        <%--$("#btnSubmit").one("click", function () {--%>
            <%--$('#assigmentGroup').attr('disabled', true);--%>
        <%--});--%>
    <%--});--%>
<%--</script>--%>
<script>
    $(function () {
        $('#resolutionNotes').hide();
        $('#status').change(function () {
            if ($('#status').val() == 'resolved') {
                $('#resolutionNotes').show();
                $('#workNotes').hide();
                // $('#assigmentGroup').attr('disabled', true);
            } else {
                $('#resolutionNotes').hide();
            }
        });
    });
</script>


<%--<script>--%>
<%--function autocomplete(inp, arr) {--%>
<%--/*the autocomplete function takes two arguments,--%>
<%--the text field element and an array of possible autocompleted values:*/--%>
<%--var currentFocus;--%>
<%--/*execute a function when someone writes in the text field:*/--%>
<%--inp.addEventListener("input", function (e) {--%>
<%--var a, b, i, val = this.value;--%>
<%--/*close any already open lists of autocompleted values*/--%>
<%--closeAllLists();--%>
<%--if (!val) {--%>
<%--return false;--%>
<%--}--%>
<%--currentFocus = -1;--%>
<%--/*create a DIV element that will contain the items (values):*/--%>
<%--a = document.createElement("DIV");--%>
<%--a.setAttribute("id", this.id + "autocomplete-list");--%>
<%--a.setAttribute("class", "autocomplete-items");--%>
<%--/*append the DIV element as a child of the autocomplete container:*/--%>
<%--this.parentNode.appendChild(a);--%>
<%--/*for each item in the array...*/--%>
<%--for (i = 0; i < arr.length; i++) {--%>
<%--/*check if the item starts with the same letters as the text field value:*/--%>
<%--if (arr[i].substr(0, val.length).toUpperCase() == val.toUpperCase()) {--%>
<%--/*create a DIV element for each matching element:*/--%>
<%--b = document.createElement("DIV");--%>
<%--/*make the matching letters bold:*/--%>
<%--b.innerHTML = "<strong>" + arr[i].substr(0, val.length) + "</strong>";--%>
<%--b.innerHTML += arr[i].substr(val.length);--%>
<%--/*insert a input field that will hold the current array item's value:*/--%>
<%--b.innerHTML += "<input type='hidden' value='" + arr[i] + "'>";--%>
<%--/*execute a function when someone clicks on the item value (DIV element):*/--%>
<%--b.addEventListener("click", function (e) {--%>
<%--/*insert the value for the autocomplete text field:*/--%>
<%--inp.value = this.getElementsByTagName("input")[0].value;--%>
<%--/*close the list of autocompleted values,--%>
<%--(or any other open lists of autocompleted values:*/--%>
<%--closeAllLists();--%>
<%--});--%>
<%--a.appendChild(b);--%>
<%--}--%>
<%--}--%>
<%--});--%>
<%--/*execute a function presses a key on the keyboard:*/--%>
<%--inp.addEventListener("keydown", function (e) {--%>
<%--var x = document.getElementById(this.id + "autocomplete-list");--%>
<%--if (x) x = x.getElementsByTagName("div");--%>
<%--if (e.keyCode == 40) {--%>
<%--/*If the arrow DOWN key is pressed,--%>
<%--increase the currentFocus variable:*/--%>
<%--currentFocus++;--%>
<%--/*and and make the current item more visible:*/--%>
<%--addActive(x);--%>
<%--} else if (e.keyCode == 38) { //up--%>
<%--/*If the arrow UP key is pressed,--%>
<%--decrease the currentFocus variable:*/--%>
<%--currentFocus--;--%>
<%--/*and and make the current item more visible:*/--%>
<%--addActive(x);--%>
<%--} else if (e.keyCode == 13) {--%>
<%--/*If the ENTER key is pressed, prevent the form from being submitted,*/--%>
<%--e.preventDefault();--%>
<%--if (currentFocus > -1) {--%>
<%--/*and simulate a click on the "active" item:*/--%>
<%--if (x) x[currentFocus].click();--%>
<%--}--%>
<%--}--%>
<%--});--%>

<%--function addActive(x) {--%>
<%--/*a function to classify an item as "active":*/--%>
<%--if (!x) return false;--%>
<%--/*start by removing the "active" class on all items:*/--%>
<%--removeActive(x);--%>
<%--if (currentFocus >= x.length) currentFocus = 0;--%>
<%--if (currentFocus < 0) currentFocus = (x.length - 1);--%>
<%--/*add class "autocomplete-active":*/--%>
<%--x[currentFocus].classList.add("autocomplete-active");--%>
<%--}--%>

<%--function removeActive(x) {--%>
<%--/*a function to remove the "active" class from all autocomplete items:*/--%>
<%--for (var i = 0; i < x.length; i++) {--%>
<%--x[i].classList.remove("autocomplete-active");--%>
<%--}--%>
<%--}--%>

<%--function closeAllLists(elmnt) {--%>
<%--/*close all autocomplete lists in the document,--%>
<%--except the one passed as an argument:*/--%>
<%--var x = document.getElementsByClassName("autocomplete-items");--%>
<%--for (var i = 0; i < x.length; i++) {--%>
<%--if (elmnt != x[i] && elmnt != inp) {--%>
<%--x[i].parentNode.removeChild(x[i]);--%>
<%--}--%>
<%--}--%>
<%--}--%>

<%--/*execute a function when someone clicks in the document:*/--%>
<%--document.addEventListener("click", function (e) {--%>
<%--closeAllLists(e.target);--%>
<%--});--%>
<%--}--%>

<%--/*An array containing all the country names in the world:*/--%>

<%--var countries = ["${customer.firstName}"];--%>

<%--/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/--%>
<%--autocomplete(document.getElementById("myInput"), countries);--%>
<%--</script>--%>
</body>
</html>