<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="assets/css/header.css">

<!-- Start Top Nav -->
<nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
    <div class="container text-light">
        <div class="w-100 d-flex justify-content-between">
            <div>
                <i class="fa fa-envelope mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="#">info@company.com</a>
                <i class="fa fa-phone mx-2"></i>
                <a class="navbar-sm-brand text-light text-decoration-none" href="#">010-020-0340</a>
            </div>

        </div>
    </div>
</nav>
<!-- Close Top Nav -->


<!-- Header -->
<nav class="navbar navbar-expand-lg navbar-light shadow">
    <div class="container d-flex justify-content-between align-items-center">

        <a class="navbar-brand text-success logo h1 align-self-center" href="home">
            Fashion Store
        </a>

        <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
            <div class="flex-fill">
                <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">

                    <div class="nav-item">
                        <a href="home">Home</a>
                    </div>
                    <c:if test="${sessionScope.user.getRole() ==  2 || sessionScope.user.getRole() ==  1}">
                        <div class="nav-item">
                            <a href="vieworder">View Order</a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.user.getRole() ==  3 }">
                        <div class="nav-item">
                            <a href="myorder">My Order</a>
                        </div>
                    </c:if>
                    <c:if test="${sessionScope.user.getRole() ==  1}">
                        <div class="nav-item">
                            <a href="listproduct">Manager Products</a>
                        </div>

                    </c:if>

                    <c:if test="${sessionScope.user == null}">
                        <div class="nav-item">
                            <a href="login.jsp"><i class="fa fa-user"></i> Login</a>
                        </div>
                    </c:if>

                    <c:if test="${sessionScope.user != null}">
                        <div class="nav-item">
                            <a href="logout"><i class="fa fa-user"></i> Logout</a>
                        </div>
                    </c:if>
                </ul>
            </div>
            <c:if test="${sessionScope.user.getRole() == 3 || sessionScope.user.getRole() == null}">
                <c:if test="${sessionScope.user.getRole() == 3}" >
                    <div class="navbar align-self-center d-flex">
                        <a class="nav-icon position-relative text-decoration-none" href="cart.jsp">
                            <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </div>
                </c:if>
                <c:if test="${sessionScope.user.getRole() == null}" >
                    <div class="navbar align-self-center d-flex">
                        <a class="nav-icon position-relative text-decoration-none" href="login.jsp">
                            <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
                            <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
                        </a>
                    </div>
                </c:if>
            </c:if>

        </div>

    </div>
</nav>
<!-- Close Header -->