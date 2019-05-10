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

    <%@include file="/WEB-INF/views/common/include/headerUser.jsp" %>
    <%@include file="/WEB-INF/views/common/include/aside.jsp" %>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
        <section class="content">
            <div class="row">
                <div class="col-md-12">
                    <div class="box">
                        <div class="box-header with-border">
                            <h3 class="box-title pull-left">Open incidents</h3>
                        </div>
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-12">
                                    <table id="example2" class="table table-bordered table-hover">
                                        <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Summary</th>
                                            <th>Assigment Group</th>
                                            <th>Status</th>
                                        </tr>
                                        </thead>
                                        <c:if test="${empty incidents}">
                                            <tbody>
                                            <tr>
                                                <td>No records to display</td>
                                            </tr>
                                            </tbody>
                                        </c:if>
                                        <c:if test="${not empty incidents}">
                                            <c:forEach items="${incidents}" var="incident">
                                                <tbody>
                                                <tr>
                                                    <td>${incident.id}</td>
                                                    <td>
                                                        <a href="/incident/edit?id=${incident.id}">${incident.summary}</a>
                                                    </td>
                                                    <td>${incident.assigmentGroup}</td>
                                                    <td>${incident.status}</td>
                                                </tr>
                                                </tbody>
                                                <tfoot>
                                                </tfoot>
                                            </c:forEach>
                                        </c:if>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
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