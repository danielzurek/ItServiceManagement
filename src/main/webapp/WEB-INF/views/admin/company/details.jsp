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
                    <h3 class="box-title">Company details</h3>
                </div>
                <div class="box-body">
                    <p>Name: <b>${company.name}</b></p>
                    <p>REGON: <b>${company.regon}</b></p>
                    <p>NIP: <b>${company.nip}</b></p>
                    <p>Street: <b>${company.street}</b></p>
                    <p>Post Code: <b>${company.postCode}</b></p>
                    <p>City: <b>${company.city}</b></p>
                    <p>Country: <b>${company.country}</b></p>
                    <p>Phone number: <b>${company.phoneNumber}</b></p>
                </div>
            </div>
            <a href="/admin/homepage" class="btn  btn-danger">Back</a>
            <td><a href="/admin/company/edit?id=${company.id}" type="button" class="btn btn-primary active">Edit</a></td>
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