<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Fashion Store - Homepage</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">
        <style>
            .product-wap .product-overlay li:nth-child(3) a,
            .product-wap .product-overlay li:nth-child(4) a {
                margin-top: 10px;
                padding: 5px 10px;
                border-radius: 5px;
                background-color: #4caf50;
                color: #fff;
                font-size: 14px;
                transition: background-color 0.3s;
            }

            .product-wap .product-overlay li:nth-child(3) a:hover,
            .product-wap .product-overlay li:nth-child(4) a:hover {
                background-color: #45a049;
            }
            .product-wap .card-body a {
                display: block;
                text-align: center;
                font-weight: bold;
                text-decoration: underline;
            }

            .filter {
                background-color: #f7f7f7;
                border: 1px solid #ccc;
                border-radius: 5px;
                padding: 20px;
                text-align: center;
                display: flex;
                justify-content: center;
                max-width: 600px; /* Điều chỉnh độ rộng của phần filter tùy theo ý muốn */
                margin: 0 auto; /* Để căn giữa phần filter */
            }

            .filter form {
                display: flex;
                align-items: center;
                gap: 10px;
            }

            .filter label {
                font-weight: bold;
            }

            .filter select {
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                background-color: #fff;
            }

            .filter input[type="submit"] {
                background-color: #007BFF;
                color: #fff;
                border: none;
                border-radius: 5px;
                padding: 10px 20px;
                cursor: pointer;
            }

            .filter input[type="submit"]:hover {
                background-color: #0056b3;

            </style>
        </head>

        <body>

            <jsp:include page="header.jsp"></jsp:include>




                <!-- Start Content -->
                <div class="container py-5">
                    <div class="row">
                        <div class="col-lg-12">

                            <div class="row">

                                <div class="hero__search__form">
                                    <form action="searchproduct">
                                        <input type="text" name="txt" placeholder="What do yo u need?">
                                        <button type="submit" class="site-btn">SEARCH</button>
                                    </form>
                                </div>
                                <div class="filter">
                                    <form action="home" method="get">
                                        <label for="province"><strong>Category</strong></label>
                                        <select name="CateID">
                                            <option value="all">All</option>
                                            <c:forEach items="${listC}" var="c">
                                                <option value="${c.getID()}">${c.getName()}</option>
                                            </c:forEach>
                                        </select>
                                        <label for="sort"> <strong>Price:</strong></label>
                                        <select name="sort" id="sort">
                                            <option value="asc">Ascending</option>
                                            <option value="desc">Descending</option>
                                        </select>
                                        <input type="submit" value="Filter">
                                    </form>
                                </div>

                            </div>
                            <div class="row">
                                <c:forEach items="${listP}" var="p"> 
                                    <div class="col-md-3">
                                        <div class="card mb-4 product-wap rounded-0">
                                            <div class="card rounded-0">
                                                <img class="card-img rounded-0 img-fluid" src="assets/${p.getImage()}">
                                                <div class="card-img-overlay rounded-0 product-overlay d-flex align-items-center justify-content-center">
                                                    <ul class="list-unstyled">
                                                        <li><a class="btn btn-success text-white mt-2" href="productdetail?ID=${p.getID()}"><i class="far fa-eye"></i></a></li>
                                                                <c:if test="${sessionScope.user.getRole() ==  3}">                                                           
                                                            <li><a class="btn btn-success text-white mt-2" href="cart?productID=${p.getID()}"><i class="fas fa-cart-plus"></i></a></li>
                                                            <li><a class="btn btn-success text-white" href="buy?productID=${p.getID()}"><i>buy</i></a></li>
                                                            </c:if>
                                                            <c:if test="${sessionScope.user == null }">                                                        
                                                            <li><a class="btn btn-success text-white mt-2" href="login.jsp"><i class="fas fa-cart-plus"></i></a></li>
                                                            <li><a class="btn btn-success text-white" href="login.jsp"><i>buy</i></a></li>
                                                            </c:if>
                                                    </ul>
                                                </div>
                                            </div>
                                            <div class="card-body">
                                                <a href="productdetail?ID=${p.getID()}" class="h3 text-center text-decoration-none font-weight-bold">${p.getName()}</a>
                                                <p class="text-center mb-0">${p.getPrice()}_VND</p>
                                            </div>
                                        </div>
                                    </div>
                                </c:forEach>


                            </div>

                        </div>

                    </div>

                </div>
            </div>
            <!-- End Content -->



        </div>
    </div>
</div>
</div>
</section>
<!--End Brands-->

<jsp:include page="footer.jsp"></jsp:include>




<!-- Start Script -->
<script src="assets/js/jquery-1.11.0.min.js"></script>
<script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
<script src="assets/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/templatemo.js"></script>
<script src="assets/js/custom.js"></script>
<!-- End Script -->
</body>

</html>