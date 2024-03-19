<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="zxx">

    <head>
         <title>Fashion Store - My cart</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/cart.css">

        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    </head>

    <body>
        <jsp:include page="header.jsp"></jsp:include>


            <!-- Shoping Cart Section Begin -->
            <section class="shoping-cart spad">
                <div class="container">
                    <div class="row">
                        <div class="col-lg-12">
                            <div class="shoping__cart__table">
                                <table>
                                    <thead>
                                        <tr>
                                            <th class="shoping__product">Products</th>
                                            <th>Price</th>
                                            <th>Quantity</th>
                                            <th>Total</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <tbody>
                                    <c:forEach items="${cart}" var="product">
                                    <form action="cart" method="post"> 
                                        <tr>
                                            <td class="shoping__cart__item">
                                                <img src="assets/${product.getImage()}" alt="ProductImage">
                                                <h5>${product.getName()}</h5>
                                            </td>
                                            <td class="shoping__cart__price">
                                                ${product.getPrice()}_VND
                                            </td>
                                            <td class="shoping__cart__quantity">
                                                <div class="quantity">
                                                    <div>
                                                        <input type="hidden" name="productID" value="${product.getID()}" />
                                                        <input readonly type="number" id="quantity_${product.getID()}" name="quantity" value="${product.getQuantity()}" />
                                                    </div>
                                                    <div>
                                                         <input value="-" type="submit" onclick="decreaseQuantity(${product.getID()})">
                                                         <input value="+" type="submit" onclick="increaseQuantity(${product.getID()})">
                                                    </div>
                                                </div>
                                            </td>
                                            <td class="shoping__cart__total">
                                                ${product.getPrice() * product.getQuantity()}_VND
                                            </td>
                                          
                                        </tr>
                                    </form>
                                </c:forEach>


                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-6">
                        <div class="shoping__cart__btns">
                            <a href="content" class="btn btn-primary cart-btn">Back to home</a>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="shoping__checkout">
                            <h5>Cart Total</h5>
                            <ul>
                                <li>Total <span>${total}_VND</span></li>
                            </ul>
                            <a href="checkout.jsp" class="primary-btn">Countine to Buy</a>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Shoping Cart Section End -->



        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
        <!-- Thêm mã JavaScript -->
<script>
  function increaseQuantity(productID) {
    var quantityInput = document.getElementById("quantity_" + productID);
    quantityInput.value = parseInt(quantityInput.value) + 1;
  }

  function decreaseQuantity(productID) {
    var quantityInput = document.getElementById("quantity_" + productID);
    var currentQuantity = parseInt(quantityInput.value);
    if (currentQuantity >= 1) {
      quantityInput.value = currentQuantity - 1;
    }
  }
</script>
    




    </body>

</html>