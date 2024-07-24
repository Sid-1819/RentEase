<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Featured Apartments</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>

<%@include file="../include/nav.jsp" %> <!-- Include your navbar here -->

<div class="container my-5">
    <h1 class="text-center mb-4">Featured Shared Accommodation</h1>
    <div class="row">
        <div class="col-md-6 col-lg-3 mb-4">
            <div class="card">
                <img src="images/villa1.jpg" class="card-img-top" alt="Villa 1">
                <div class="card-body">
                    <h5 class="card-title">Accommodation One</h5>
                    <p class="card-text">A beautiful villa with an ocean view and modern amenities.</p>
                    <a href="villa1details.jsp" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3 mb-4">
            <div class="card">
                <img src="images/villa2.jpg" class="card-img-top" alt="Villa 2">
                <div class="card-body">
                    <h5 class="card-title">Accommodation Two</h5>
                    <p class="card-text">A luxurious villa with a private pool and garden.</p>
                    <a href="#" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3 mb-4">
            <div class="card">
                <img src="images/villa3.jpg" class="card-img-top" alt="Villa 3">
                <div class="card-body">
                    <h5 class="card-title">Accommodation Three</h5>
                    <p class="card-text">A charming villa located in a serene countryside setting.</p>
                    <a href="#" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>
        <div class="col-md-6 col-lg-3 mb-4">
            <div class="card">
                <img src="images/villa4.jpg" class="card-img-top" alt="Villa 4">
                <div class="card-body">
                    <h5 class="card-title">Accommodation Four</h5>
                    <p class="card-text">An elegant villa with spacious rooms and modern design.</p>
                    <a href="#" class="btn btn-primary">View Details</a>
                </div>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
