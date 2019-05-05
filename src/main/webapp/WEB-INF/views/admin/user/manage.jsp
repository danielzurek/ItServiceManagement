<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
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
        <section class="content">
            <h3>Manage users</h3>
            <c:if test="${empty users}">
            <h3>List is empty</h3>
            </c:if>
            <c:if test="${not empty users}">
            <section class="content">
                <div class="row">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                    <tr>
                                        <th>Username</th>
                                        <th>First Name</th>
                                        <th>Last Name</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <c:forEach items="${users}" var="user">
                                        <tbody>
                                        <tr>
                                            <td>${user.username}</td>
                                            <td>${user.firstName}</td>
                                            <td>${user.lastName}</td>
                                            <td><a href="/admin/user/edit?id=${user.id}" type="button"
                                                   class="btn btn-primary active">Edit</a></td>
                                            <td><a href="/admin/user/details?id=${user.id}" type="button"
                                                   class="btn btn-primary active">Details</a></td>
                                        </tr>
                                        </tbody>
                                        <tfoot>
                                        </tfoot>
                                    </c:forEach>
                                </table>
                                </c:if>
                            </div>
                        </div>


                        <%--<div class="box-body">--%>
                        <%--<table id="example2" class="table table-bordered table-hover">--%>
                        <%--<tr>--%>
                        <%--<th>Published by</th>--%>
                        <%--<th>Content</th>--%>
                        <%--<th>Created</th>--%>
                        <%--<th>Action</th>--%>
                        <%--</tr>--%>
                        <%--<c:forEach items="${users}" var="user">--%>
                        <%--<tr>--%>
                        <%--<td>${user.firstName}</td>--%>
                        <%--</tr>--%>
                        <%--</c:forEach>--%>
                        <%--</table>--%>
                        <%--</c:if>--%>
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