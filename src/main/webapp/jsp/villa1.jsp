<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Villa Details</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>

<%@include file="../include/nav.jsp" %>

<div class="container my-5">
    <div class="row">
        <!-- Villa Images -->
        <div class="col-md-6">
            <div id="villaCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/villa1.jpg" class="d-block w-100" alt="Villa Image 1">
                    </div>
                    <div class="carousel-item">
                        <img src="images/villa1-2.jpg" class="d-block w-100" alt="Villa Image 2">
                    </div>
                    <div class="carousel-item">
                        <img src="images/villa1-3.jpg" class="d-block w-100" alt="Villa Image 3">
                    </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#villaCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#villaCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Next</span>
                </button>
            </div>
        </div>

        <!-- Villa Details -->
        <div class="col-md-6">
            <h1 class="mb-3">Villa One</h1>
            <p class="lead">A beautiful villa with an ocean view and modern amenities. Perfect for a relaxing getaway.</p>
            <h3 class="text-success mb-4">$350 per night</h3>

            <!-- CTA Buttons -->
            <div class="d-flex mb-4">
                <button class="btn btn-primary me-3">Add to Wishlist</button>
                <button class="btn btn-success">Book Now</button>
            </div>

            <!-- Reviews Section -->
            <h4>Reviews</h4>
            <div class="review mb-3">
                <strong>John Doe</strong>
                <p>This villa is amazing! The view is breathtaking and the amenities are top-notch.</p>
            </div>
            <div class="review mb-3">
                <strong>Jane Smith</strong>
                <p>Had a fantastic time staying at this villa. Highly recommend to anyone looking for a luxurious experience.</p>
            </div>
        </div>
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
