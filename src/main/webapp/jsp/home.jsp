<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Home</title>
<%@include file="../include/head.jsp" %>

<%@include file="../include/nav.jsp" %>
<link rel="stylesheet" type="text/css" href="../css/styles_home.css">
</head>
<body>
<div class="header">
    <h1>Welcome to RentEase</h1>
    <p>Your one-stop solution for finding the perfect rental property</p>
</div>

<div class="main-container">
    <h2>Browse by Category</h2>
    <div class="categories">
        <div class="category-card">
            <img src="../images/Villa_home.jpg" alt="Villas">
            <h3>Villas</h3>
            <p>Explore luxurious villas with top-notch amenities in prime locations.</p>
            <a href="villas.jsp">View Villas</a>
        </div>

        <div class="category-card">
            <img src="../images/apart_home.jpg" alt="Apartments">
            <h3>Apartments</h3>
            <p>Find comfortable apartments that fit your needs and budget.</p>
            <a href="apartment.jsp">View Apartments</a>
        </div>

        <div class="category-card">
            <img src="../images/Shared_home.jpg" alt="Shared Accommodation">
            <h3>Shared Accommodation</h3>
            <p>Discover affordable shared living options with great amenities.</p>
            <a href="shared-accommodation.jsp">View Shared Accommodation</a>
        </div>
    </div>
</div>

</body>
</html>