<%@page import="java.util.List"%>
<%@page import="org.apache.tomcat.jdbc.pool.DataSource"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.Connection"%>
<%@page import="com.rentease.dao.PropertiesDao"%>
<%@page import="com.rentease.model.Properties" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Featured Villas</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/styles.css">
</head>
<body>

<%@include file="../include/nav.jsp" %> <!-- Include your navbar here -->

<% 
    Connection connection = null;
    List<Properties> villas = null;
    try {
     
        
        // Create an instance of PropertiesDao
        PropertiesDao propertiesDao = new PropertiesDao(connection);
        
        // Fetch all properties
        villas = propertiesDao.getAllProperties();
    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if (connection != null) {
            try {
                connection.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
%>

<div class="container my-5">
    <h1 class="text-center mb-4">Featured Villas</h1>
    <div class="row">
          <%
            if (villas != null) {
                for (Properties villa : villas) {
                    if ("villa".equals(villa.getType())) {
        %>
            <div class="col-md-6 col-lg-4 mb-4">
                <div class="card">
                    <img src="<%= villa.getImageUrl() %>" class="card-img-top" alt="<%= villa.getName() %>">
                    <div class="card-body">
                        <h5 class="card-title"><%= villa.getName() %></h5>
                        <p class="card-text"><%= villa.getDescription() %></p>
                        <p class="card-text"><strong>Price:</strong> $<%= villa.getPrice() %> per night</p>
                        <a href="villa-details.jsp?id=<%= villa.getId() %>" class="btn btn-primary">View Details</a>
                    </div>
                </div>
            </div>
        <%
                }
            }
        }
        %>
        
    </div>
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
