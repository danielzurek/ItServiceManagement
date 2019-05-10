<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar ">

    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">

        <!-- Sidebar user panel (optional) -->
        <div class="user-panel">
            <div class="pull-left image">
                <img src="/resources/dist/img/user.jpg" class="img-circle" alt="User Image">
            </div>
            <div class="pull-left info">
                <p>${pageContext.request.userPrincipal.name}</p>
            </div>
        </div>

        <!-- search form (Optional) -->
        <%--<form action="#" method="get" class="sidebar-form">--%>
            <%--<div class="input-group">--%>
                <%--<input type="text" name="q" class="form-control" placeholder="Search...">--%>
                <%--<span class="input-group-btn">--%>
                <%--<button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>--%>
                <%--</button>--%>
              <%--</span>--%>
            <%--</div>--%>
        <%--</form>--%>
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="#"><i class="fa fa-home"></i> <span>Homepage</span></a></li>
            <li><a href="#"><i class="fa fa-cog"></i> <span>Settings</span></a></li>
            <li class="treeview">
                <a href="#"><i class="fa fa-user"></i> <span>Account</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="#">My account</a></li>
                    <li><a onclick="document.forms['logoutForm'].submit()">Sign out</a></li>
                </ul>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-ticket"></i> <span>Incident</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/incident/create">Create new</a></li>
                    <li><a href="/user/myWork">Assigned to me</a></li>
                    <li><a href="/incident/open">Open</a></li>
                    <li><a href="#">Resolved</a></li>
                    <li><a href="/incident/criticalsHistory">Critical incidents</a></li>
                </ul>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
