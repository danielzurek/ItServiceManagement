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
    <title>IT Service Management | Admin panel</title>
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
                    <h3 class="box-title">Edit customer</h3>
                </div>
                <div class="box-body">
                    <form:form method="POST" modelAttribute="customerFormEdit" class="form-signin">
                    <spring:bind path="firstName">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label for="firstName">First Name</label>
                            <form:input type="text" path="firstName" class="form-control"
                                        placeholder="First Name"
                                        autofocus="true"></form:input>
                            <form:errors path="firstName"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="lastName">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label for="lastName">Last name</label>
                            <form:input type="text" path="lastName" class="form-control"
                                        placeholder="Last name"
                                        autofocus="true"></form:input>
                            <form:errors path="lastName"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="displayName">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label for="displayName">Display Name</label>
                            <form:input type="text" path="displayName" class="form-control"
                                        placeholder="Display Name"
                                        autofocus="true"></form:input>
                            <form:errors path="displayName"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="location">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label for="location"">Location</label>
                            <form:input type="text" path="location" class="form-control"
                                        placeholder="Location"
                                        autofocus="true"></form:input>
                            <form:errors path="location"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="phoneNumber">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label for="phoneNumber">Contact Number</label>
                            <form:input type="text" path="phoneNumber" class="form-control"
                                        placeholder="Phone Number"
                                        autofocus="true"></form:input>
                            <form:errors path="phoneNumber"></form:errors>
                        </div>
                    </spring:bind>

                    <spring:bind path="emailAddress">
                        <div class="form-group ${status.error ? 'has-error' : ''}">
                            <label for="emailAddress">Email</label>
                            <form:input type="text" path="emailAddress" class="form-control"
                                        placeholder="Email Address"
                                        autofocus="true"></form:input>
                            <form:errors path="emailAddress"></form:errors>
                        </div>
                    </spring:bind>
                    <spring:bind path="company">
                    <div class="form-group ${status.error ? 'has-error' : ''}">
                        <label for="company">Assign company</label>
                        <form:select class="form-control" path="company" items="${company}" itemValue="id"
                                     itemLabel="name">
                        </form:select>
                        <form:errors path="company"></form:errors>
                        </spring:bind>
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