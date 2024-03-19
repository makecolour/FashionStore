<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
   <title>Fashion Store - Add product</title>
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

    </head>

    <body>
        <div id="addNewModal">
            <div class="modal-dialog">
                <div class="modal-content">
                    <form action="addproduct" method="post">
                        <div class="modal-header">						
                            <h4 class="modal-title">Add Product</h4>
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>

                        <div class="modal-body">					
                            <div class="form-group">
                                <input placeholder="product name" name="name" type="text" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <input placeholder="image" name="image" type="file" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <input placeholder="price" name="price" type="number" class="form-control" required>
                            </div>

                            <div class="form-group">
                                <textarea placeholder="description" name="des" class="form-control" required> </textarea>
                            </div>

                            <div class="form-group">
                                <label>Category</label>
                                <select name="category" class="form-select" aria-label="Default select example">
                                    <c:forEach items="${listC}" var="c">                                   
                                        <option value="${c.getID()}"> ${c.getName()}</option>
                                    </c:forEach>
                                </select>
                            </div>
                        </div>

                        <div class="modal-footer">
                            <a class="btn btn-danger" href="listproduct">Cancel</a>
                            <input type="submit" class="btn btn-success" value="Add">
                        </div>
                    </form>
                </div>
            </div>
        </div> 
    </body>
</html>
