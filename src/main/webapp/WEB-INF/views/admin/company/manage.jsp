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
            <h3>Manage companies</h3>
            <c:if test="${empty companies}">
            <h3>List is empty</h3>
            </c:if>
            <c:if test="${not empty companies}">
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
                                        <th>Name</th>
                                        <th>NIP</th>
                                        <th>REGON</th>
                                        <th>Actions</th>
                                    </tr>
                                    </thead>
                                    <c:forEach items="${companies}" var="company">
                                        <tbody>
                                        <tr>
                                            <td>${company.name}</td>
                                            <td>${company.nip}</td>
                                            <td>${company.regon}</td>
                                            <td><a href="/admin/company/edit?id=${company.id}" type="button"
                                                   class="btn btn-primary active">Edit</a></td>
                                            <td><a href="/admin/company/details?id=${company.id}" type="button"
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