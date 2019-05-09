<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!-- Main Header -->
<header class="main-header">

    <!-- Logo -->
    <a href="/user/home" class="logo">
        <!-- mini logo for sidebar mini 50x50 pixels -->
        <span class="logo-mini"><b>IT</b>IL</span>
        <!-- logo for regular state and mobile devices -->
        <span class="logo-lg"><b>ITIL</b>Managment</span>
    </a>

    <!-- Header Navbar -->
    <nav class="navbar navbar-static-top" role="navigation">
        <!-- Sidebar toggle button-->
        <a href="#" class="sidebar-toggle" data-toggle="offcanvas" role="button">
            <span class="sr-only">Toggle navigation</span>
        </a>
        <!-- Navbar Right Menu -->
        <div class="navbar-custom-menu">
            <ul class="nav navbar-nav">
                <!-- User Account Menu -->
                <li class="dropdown user user-menu">
                    <!-- Menu Toggle Button -->
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown">
                        <!-- The user image in the navbar-->
                        <img src="/resources/dist/img/user2-160x160.jpg" class="user-image" alt="User Image">
                        <%--<img src="/resources/dist/img/user.svg" class="user-image" alt="User Image">--%>
                        <!-- hidden-xs hides the username on small devices so only the image appears. -->
                        <span class="hidden-xs">${pageContext.request.userPrincipal.name}</span>
                        <spa></spa>
                    </a>
                    <ul class="dropdown-menu">
                        <!-- The user image in the menu -->
                        <li class="user-header">
                            <img src="/resources/dist/img/user2-160x160.jpg" class="img-circle" alt="User Image">

                            <p>
                                ${pageContext.request.userPrincipal.name}
                            </p>
                        </li>
                        <!-- Menu Footer-->
                        <li class="user-footer">
                            <div class="pull-left">
                                <a href="#" class="btn btn-default btn-flat">Profile</a>
                            </div>
                            <div class="pull-right">
                                <c:if test="${pageContext.request.userPrincipal.name != null}">
                                <form id="logoutForm" method="POST" action="${contextPath}/logout">
                                    <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                                </form>
                                <a class="btn btn-default btn-flat" onclick="document.forms['logoutForm'].submit()">Sign out</a>
                            </div>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </nav>
    </c:if>
</header>
