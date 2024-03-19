
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Fashion Store - Product Detail</title>
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

        <!-- Slick -->
        <link rel="stylesheet" type="text/css" href="assets/css/slick.min.css">
        <link rel="stylesheet" type="text/css" href="assets/css/slick-theme.css">

    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>




            <!-- Open Content -->
            <section class="bg-light">
                <div class="container pb-5">
                    <div class="row">
                        <div class="col-lg-5 mt-5">
                            <div class="card mb-3">
                                <img class="card-img img-fluid" src="assets/${p.getImage()}" alt="Card image cap" id="product-detail">
                        </div>

                    </div>
                    <!-- col end -->
                    <div class="col-lg-7 mt-5">
                        <div class="card">
                            <div class="card-body">
                                <h1 class="h2">${p.getName()}</h1>
                                <p class="h3 py-2">${p.getPrice()}_VND</p>


                                <h6>Description:</h6>
                                <p>${p.getDescription()}</p>



                                <c:if test="${sessionScope.user.getRole() == 3}" >
                                    <div class="row pb-3">
                                        <div class="col d-grid">
                                            <a href="buy?productID=${p.getID()}" class="btn btn-success btn-lg" role="button">Buy</a>
                                        </div>
                                    </div>
                                </c:if>
                                <c:if test="${sessionScope.user.getRole() == null}" >
                                    <div class="row pb-3">
                                        <div class="col d-grid">
                                            <a href="login.jsp" class="btn btn-success btn-lg" role="button">Buy</a>
                                        </div>
                                    </div>
                                </c:if>
                                <div class="row pb-3">
                                    <div class="col d-grid">
                                        <a href="javascript:history.back()" class="btn btn-primary">Back</a>
                                    </div>
                                </div>



                                </form>

                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Close Content -->


        <!-- Start Footer -->
        <jsp:include page="footer.jsp"></jsp:include>

        <!-- End Footer -->

        <!-- Start Script -->
        <script src="assets/js/jquery-1.11.0.min.js"></script>
        <script src="assets/js/jquery-migrate-1.2.1.min.js"></script>
        <script src="assets/js/bootstrap.bundle.min.js"></script>
        <script src="assets/js/templatemo.js"></script>
        <script src="assets/js/custom.js"></script>
        <!-- End Script -->

        <!-- Start Slider Script -->
        <script src="assets/js/slick.min.js"></script>
        <script>
            $('#carousel-related-product').slick({
                infinite: true,
                arrows: false,
                slidesToShow: 4,
                slidesToScroll: 3,
                dots: true,
                responsive: [{
                        breakpoint: 1024,
                        settings: {
                            slidesToShow: 3,
                            slidesToScroll: 3
                        }
                    },
                    {
                        breakpoint: 600,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 3
                        }
                    },
                    {
                        breakpoint: 480,
                        settings: {
                            slidesToShow: 2,
                            slidesToScroll: 3
                        }
                    }
                ]
            });
        </script>
        <!-- End Slider Script -->

    </body>

</html>