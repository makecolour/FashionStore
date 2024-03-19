<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Fashion Store - Manager product</title>
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
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto|Varela+Round">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link href="css/manager.css" rel="stylesheet" type="text/css"/>

        <style>
            img {
                width: 200px;
                height: 120px;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <div class="table-wrapper">
                <div class="table-title">
                    <div class="row">
                        <div class="col-sm-6">
                            <h2>Manage <b> Products</b></h2>     
                            <form action="listproduct" method="post">
                                <div class="menu_box_2">
                                    <input required name="txt" class="form_1" type="text" value="${txt}" placeholder="Search...">
                                    <input type="submit" value="Ok">
                                </div>
                            </form>

                            <a href="home"><button type="button" class="btn btn-primary">Back to home</button>
                                <a href="addproduct"><button type="button" class="btn btn-success">Add new Product</button>

                                    </div>

                                    <div class="col-sm-6">
                                        <a href="#"   > </a>
                                    </div>
                                    </div>
                                    </div>
                                    <table class="table table-striped table-hover">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Image</th>
                                                <th>Price</th>
                                                <th>Actions</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <c:forEach items="${listP}" var="p">
                                                <tr>
                                                    <td>${p.getID()}</td>
                                                    <td>${p.getName()}</td>
                                                    <td>
                                                        <img src="assets/${p.getImage()}">
                                                    </td>
                                                    <td>${p.getPrice()}</td>

                                                    <td>
                                                        <a href="productdetail?ID=${p.getID()}" class="edit" data-toggle="modal"><i class="far fa-eye"data-toggle="tooltip" title="detail"></i></a>

                                                        <a href="editproduct?ID=${p.getID()}" class="edit" data-toggle="modal"><i class="material-icons" data-toggle="tooltip" title="Edit">&#xE254;</i></a>
                                                        <a href="javascript:void(0);" class="delete" data-toggle="modal" onclick="confirmDelete('${p.getID()}');"><i class="material-icons" data-toggle="tooltip" title="Delete">&#xE872;</i></a>
                                                    </td>
                                                </tr>
                                            </c:forEach>
                                        </tbody>
                                    </table>
                                    </div>
                                    </div>

                                    <!-- Edit Modal HTML -->

                                    <script src="js/manager.js" type="text/javascript"></script>

                                    <script>
                                                                    function confirmDelete(productID) {
                                                                        if (confirm("Are you sure you want to delete this product?")) {
                                                                            window.location.href = "deleteproduct?ID=" + productID;
                                                                        }
                                                                    }
                                    </script>
                                    </body>
                                    </html>
