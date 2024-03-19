<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
       <title>Fashion Store - Checkout</title>
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
        <link rel="stylesheet" href="assets/css/checkout.css">


    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>

      

            <!-- Checkout Section Begin -->
            <section class="checkout spad">
                <div class="container">
              
                    <div class="checkout__form">
                        <h4>Checkout Details</h4>
                        <form action="buybycart" method="get">
                            <div class="row">
                                <div class="col-lg-8 col-md-6">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p> Name<span>*</span></p>
                                                <input type="text" name="name" value="${user.getName()}" required>
                                        </div>
                                    </div>
                                </div>
                                <div class="checkout__input">
                                    <p>Address<span>*</span></p>
                                    <input name="address" type="text" required placeholder="Street Address" class="checkout__input__add">
                                </div>
                                <div class="">
                                    <div class="row">
                                        <div class="col-lg-6">
                                            <div class="checkout__input">
                                                <p>Phone<span>*</span></p>
                                                <input type="number" name="phone" required>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6">
                                    <div class="checkout__order">
                                        <h4 class="checkout__order-title">Your Order</h4>
                                        <div class="checkout__order-products">Products <span>Total</span></div>
                                        <ul class="checkout__order-list">
                                            <c:forEach items="${cart}" var="p">
                                                <li class="checkout__order-item">
                                                    <input type="hidden" name="productID" value="${p.getID()}">
                                                    <input type="text" value="${p.getName()}" readonly class="checkout__order-item-name">
                                                    <input type="text" name="quantity" value=" ${p.getQuantity()} x ${p.getPrice()}_VND" readonly class="checkout__order-item-price">
                                                </li>
                                            </c:forEach>
                                        </ul>
                                        <div class="checkout__order-total">Total <span>${total}_VND</span></div>
                                        <button type="submit" class="site-btn">PLACE ORDER</button>
                                    </div>
                                </div>
                            </div>
                    </form>
                </div>
            </div>
        </section>
        <!-- Checkout Section End -->

        <jsp:include page="footer.jsp"></jsp:include>

        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>
