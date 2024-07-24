<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Cart</title>
<%@include file="../include/head.jsp" %>
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>

<%@include file="../include/nav.jsp" %> <!-- Include your navbar here -->

<div class="container my-5">
    <h1 class="text-center mb-4">Your Cart</h1>
    <c:if test="${empty cart}">
        <div class="alert alert-info text-center" role="alert">
            Your cart is empty.
        </div>
    </c:if>
    <c:if test="${not empty cart}">
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>Property</th>
                    <th>Price</th>
                    <th>Actions</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach var="item" items="${cart}">
                    <tr>
                        <td>${item.propertyName}</td>
                        <td>${item.price}</td>
                        <td>
                            <form action="cart" method="post" style="display:inline;">
                                <input type="hidden" name="action" value="remove">
                                <input type="hidden" name="propertyId" value="${item.propertyId}">
                                <button type="submit" class="btn btn-danger">Remove</button>
                            </form>
                        </td>
                    </tr>
                </c:forEach>
            </tbody>
        </table>
    </c:if>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
