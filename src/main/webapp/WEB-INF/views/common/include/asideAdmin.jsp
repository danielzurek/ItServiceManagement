<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<!-- Left side column. contains the logo and sidebar -->
<aside class="main-sidebar">

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
        <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
                <input type="text" name="q" class="form-control" placeholder="Search...">
                <span class="input-group-btn">
                <button type="submit" name="search" id="search-btn" class="btn btn-flat"><i class="fa fa-search"></i>
                </button>
              </span>
            </div>
        </form>
        <!-- /.search form -->

        <!-- Sidebar Menu -->
        <ul class="sidebar-menu">
            <li class="header">Menu</li>
            <!-- Optionally, you can add icons to the links -->
            <li class="active"><a href="/admin/homepage"><i class="fa fa-home"></i> <span>Homepage</span></a></li>
            <li class="treeview">
                <a href="#"><i class="fa fa-user"></i> <span>Account</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/admin/user/profile">My account</a></li>
                    <li><a onclick="document.forms['logoutForm'].submit()">Logout</a></li>
                </ul>
            </li>
            </li>
            <li class="treeview">
                <a href="#"><i class="fa fa-user-plus"></i> <span>Admin tools</span>
                    <span class="pull-right-container">
              <i class="fa fa-angle-left pull-right"></i>
            </span>
                </a>
                <ul class="treeview-menu">
                    <li><a href="/admin/homepage">Homepage</a></li>
                    <li><a href="/admin/user/all">Users</a></li>
                    <li><a href="/admin/role/all">Roles</a></li>
                    <li><a href="/admin/group/all">Groups</a></li>
                    <li><a href="/admin/company/all">Companies</a></li>
                </ul>
            </li>
            </li>
        </ul>
        <!-- /.sidebar-menu -->
    </section>
    <!-- /.sidebar -->
</aside>
