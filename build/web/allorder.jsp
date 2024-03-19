<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

    <head>
        <title>Fashion Store - Order list</title>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="apple-touch-icon" href="assets/img/apple-icon.png">
        <link rel="shortcut icon" type="image/x-icon" href="assets/img/favicon.ico">

        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="assets/css/templatemo.css">
        <link rel="stylesheet" href="assets/css/custom.css">
        <link rel="stylesheet" href="assets/css/myorder.css">


        <!-- Load fonts style after rendering the layout styles -->
        <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
        <link rel="stylesheet" href="assets/css/fontawesome.min.css">

    </head>

    <body>
        <%@ include file="header.jsp" %>

        <div>
            <table>
                <thead>
                    <tr>
                        <th>Name</th>
                        <th>Phone</th>
                        <th>Address</th>
                        <th>Order Date</th>
                        <th>Total Amount</th>
                        <th>Detail</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach items="${listO}" var="o">
                        <tr>
                            <td>${o.getName()}</td>
                            <td>${o.getPhone()}</td>
                            <td>${o.getAddress()}</td>
                            <td>${o.getOrderDate()}</td>
                            <td>${o.getTotalAmount()}</td>
                            <td>
                                <a href="orderdetail?odid=${o.getID()}">
                                    <input type="submit" value="Detail" class="detail-button">
                                </a>

                            </td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>


                
        </div>
        <div class="back-to-homepage">
            <button class="btn btn-success">
                <a href="home" class="text-white">Back to Homepage</a>
            </button>
        </div>



        <!-- Js Plugins -->
        <script src="js/jquery-3.3.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/jquery.nice-select.min.js"></script>
        <script src="js/jquery-ui.min.js"></script>
        <script src="js/jquery.slicknav.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
        <script src="js/manager.js" type="text/javascript"></script>
    </body>

</html>
