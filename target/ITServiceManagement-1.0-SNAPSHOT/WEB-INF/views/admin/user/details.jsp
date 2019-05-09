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
                    <h3 class="box-title">User details</h3>
                </div>
                <div class="box-body">
                    <p>Username: <b>${user.username}</b></p>
                    <p>First name: <b>${user.firstName}</b></p>
                    <p>Last name: <b>${user.lastName}</b></p>
                    <p>Display name: <b>${user.displayName}</b></p>
                    <c:if test="${empty user.roles}">
                        <p>Roles: <b>User has no roles</b></p>
                    </c:if>
                    <c:if test="${not empty user.roles}">
                        <p>Roles: <b>${user.roles}</b></p>
                    </c:if>
                    <c:if test="${empty user.groups}">
                        <p>Groups: <b>User is not a member of any group</b></p>
                    </c:if>
                    <c:if test="${not empty user.groups}">
                        <p>Groups: <b>${user.groups}</b></p>
                    </c:if>
                </div>
            </div>
            <a href="/admin/homepage" class="btn  btn-danger">Back</a>
            <td><a href="/admin/user/edit?id=${user.id}" type="button" class="btn btn-primary active">Edit</a></td>
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