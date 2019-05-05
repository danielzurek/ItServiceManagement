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
    <title>IT Service Management | Admin homepage</title>
</head>
<body class="hold-transition skin-blue sidebar-mini">
<!-- .wrapper -->
<div class="wrapper">

    <%@include file="/WEB-INF/views/common/include/header.jsp" %>
    <%@include file="/WEB-INF/views/common/include/asideAdmin.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">

        <!-- Main content -->
        <section class="content">
            <div class="box">
                <div class="box-header with-border">
                    <h3 class="box-title">Edit company</h3>
                </div>
                <div class="box-body">
                    <form:form method="POST" modelAttribute="companyFormEdit" class="form-signin">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="name">Name</label>
                                <form:input type="text" path="name" class="form-control" placeholder="Name"
                                            autofocus="true"></form:input>
                                <form:errors path="name"></form:errors>
                            </div>
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="street">Street</label>
                                <form:input type="text" path="street" class="form-control" placeholder="Street"
                                            autofocus="true"></form:input>
                                <form:errors path="street"></form:errors>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="postCode">Post code</label>
                                <form:input type="text" path="postCode" class="form-control" placeholder="Post code"
                                            autofocus="true"></form:input>
                                <form:errors path="postCode"></form:errors>
                            </div>
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="city">City</label>
                                <form:input type="text" path="city" class="form-control" placeholder="City"
                                            autofocus="true"></form:input>
                                <form:errors path="city"></form:errors>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="country">Country</label>
                                <form:input type="text" path="country" class="form-control" placeholder="Country"
                                            autofocus="true"></form:input>
                                <form:errors path="country"></form:errors>
                            </div>
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="phoneNumber">Phone number</label>
                                <form:input type="text" path="phoneNumber" class="form-control"
                                            placeholder="Phone number"
                                            autofocus="true"></form:input>
                                <form:errors path="phoneNumber"></form:errors>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="nip">NIP</label>
                                <form:input type="number" path="nip" class="form-control" placeholder="NIP"
                                            autofocus="true"></form:input>
                                <form:errors path="nip"></form:errors>
                            </div>
                            <div class="form-group ${status.error ? 'has-error' : ''}">
                                <label for="regon">REGON</label>
                                <form:input type="number" path="regon" class="form-control" placeholder="REGON"
                                            autofocus="true"></form:input>
                                <form:errors path="regon"></form:errors>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <button class="btn  btn-primary" type="submit">Submit</button>
            <a href="/admin/homepage" class="btn  btn-danger">Cancel</a>
            </form:form>

        </section>
        <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->

    <%@include file="/WEB-INF/views/common/include/footer.jsp" %>
    <%@include file="/WEB-INF/views/common/include/control-sidebar.jsp" %>

</div>
<!-- /.wrapper -->

<%@include file="/WEB-INF/views/common/include/script.jsp" %>

</body>
</html>