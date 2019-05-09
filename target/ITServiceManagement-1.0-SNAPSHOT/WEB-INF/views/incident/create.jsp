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
                            <form:form method="POST" modelAttribute="incidentForm" class="form-signin">
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
                                        <form:input type="text" path="company" class="form-control"
                                                    autofocus="true"></form:input>
                                        <form:errors path="company"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="location">Location</label>
                                        <form:input type="text" path="location" class="form-control"
                                                    autofocus="true"></form:input>
                                        <form:errors path="location"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="email">Email</label>
                                        <form:input type="text" path="email" class="form-control"
                                                    autofocus="true"></form:input>
                                        <form:errors path="email"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="contactNumber">Contact Number</label>
                                        <form:input type="text" path="contactNumber" class="form-control"
                                                    autofocus="true"></form:input>
                                        <form:errors path="contactNumber"></form:errors>
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
                                            <form:option value="assigned" selected="selected">Assigned</form:option>
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
                                                     class="form-control"
                                                     autofocus="true">
                                            <form:option value="category" selected="selected">-- Empty--</form:option>
                                        </form:select>
                                        <form:errors path="category"></form:errors>
                                    </div>
                                    <div class="form-group ${status.error ? 'has-error' : ''}">
                                        <label for="category">Sub Category</label>
                                        <form:select id="subCategorySel" size="1" type="text" path="subCategory"
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
                                        <label for="resolver">Assigned to</label>
                                        <form:select path="resolver" items="${users}" itemValue="id"
                                                     itemLabel="displayName" class="form-control"/>
                                        <form:errors path="resolver"></form:errors>
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
                    <button class="btn  btn-primary" type="submit">Submit</button>
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
<%--<script type="text/javascript">--%>
<%--$(document).ready(function() {--%>
<%--$('#customerDisplayNameName').autocomplete({--%>
<%--source : 'localhost:8080/incident/search'--%>
<%--});--%>
<%--});--%>
<%--</script>--%>
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

    <%--var countries = ["Albania", "Poland", "Sweeeden"];--%>

    <%--/*initiate the autocomplete function on the "myInput" element, and pass along the countries array as possible autocomplete values:*/--%>
    <%--autocomplete(document.getElementById("myInput"), countries);--%>
<%--</script>--%>
</body>
</html>