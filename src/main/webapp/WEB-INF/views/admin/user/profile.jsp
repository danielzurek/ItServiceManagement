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
    <%@include file="/WEB-INF/views/common/include/aside.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title">Your profile</h3>

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
                            <p>Username: <b>${pageContext.request.userPrincipal.name}</b></p>
                            <p>First Name: <b>${userDetails.firstName}</b></p>
                            <p>Last Name: <b>${userDetails.lastName}</b></p>
                            <p>Roles:
                                <c:forEach items="${userDetails.roles}" var="role">
                                <b>${role.name}</b>
                                </c:forEach>
                            </p>
                            <c:if test="${empty userDetails.groups}">
                                <p>Groups: <b>User is not a member of any group</b></p>
                            </c:if>
                            <c:if test="${not empty userDetails.groups}">
                                <p>Groups:
                                    <c:forEach items="${userDetails.groups}" var="group">
                                        <b>${group.name}</b>
                                    </c:forEach>
                                </p>
                            </c:if>
                        </div>
                    </div>
                    <a href="/admin/homepage" class="btn  btn-danger">Back</a>
                </div>
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