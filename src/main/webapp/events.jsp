<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
    // Get the ID from the URL 
    String id = request.getParameter("id");

    // DATA DEFINITIONS
    String[][] events = {
        {"tastefully", "Tastefully Food Expo", "Kuala Lumpur • 7 AUG - 9 AUG 2026", "Experience Malaysia’s largest food expo featuring local delicacies.", "images/tastefullyexpo.jpg"},
        {"matcha", "Matcha & Cakes Festival", "Johor Bahru • 30 JAN - 1 FEB 2026", "Enjoy matcha desserts, cakes and café-style culinary experiences.", "images/matchafestival.jpg"},
        {"sabah", "Sabah International Food Expo", "Kota Kinabalu • 24 APR - 26 APR 2026", "Explore Sabah’s cultural cuisine and international food experiences.", "images/sabahfoodexpo.jpg"},
        {"mifb", "Malaysian International Food & Beverage Fair", "Kuala Lumpur • 15 JUL - 17 JUL 2026", "Discover future food trends and innovative culinary exhibitions.", "images/mifb.jpg"}
    };
%>
<!DOCTYPE html>
<html>
<head>
    <title>Festivals | Food Festival Malaysia</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body class="bg-dark text-white">

<nav class="navbar navbar-dark bg-dark mb-5"><div class="container"><a class="navbar-brand" href="index.html">Food Festival</a></div></nav>

<div class="container">
    <% if (id == null) { %>
        <!-- LIST VIEW -->
        <h2 class="mb-5 text-center">Explore All Food Festivals</h2>
        <div class="row g-4">
            <% for(String[] e : events) { %>
            <div class="col-md-6">
                <div class="card bg-secondary text-white h-100">
                    <img src="<%= e[4] %>" class="card-img-top" style="height:200px; object-fit:cover;">
                    <div class="card-body">
                        <h4><%= e[1] %></h4>
                        <p><%= e[2] %></p>
                        <a href="festivals.jsp?id=<%= e[0] %>" class="btn btn-danger">View Details</a>
                    </div>
                </div>
            </div>
            <% } %>
        </div>
    <% } else { 
        // DETAIL VIEW
        String[] selected = null;
        for(String[] e : events) { if(e[0].equals(id)) selected = e; }
    %>
        <!-- DETAIL PAGE -->
        <div class="row">
            <div class="col-md-8 offset-md-2">
                <img src="<%= selected[4] %>" class="img-fluid rounded mb-4">
                <h1><%= selected[1] %></h1>
                <h5><%= selected[2] %></h5>
                <p class="mt-4 lead"><%= selected[3] %></p>
                <a href="register.jsp?festival=<%= selected[1] %>" class="btn btn-danger btn-lg">Register Now</a>
                <a href="festivals.jsp" class="btn btn-outline-light btn-lg">Back to List</a>
            </div>
        </div>
    <% } %>
</div>
</body>
</html>
