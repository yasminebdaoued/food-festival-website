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
    <title>Events | Food Festival Malaysia</title>
    <link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">
    <link rel="stylesheet" href="css/style.css">


<style>
    /* Force cards into a vertical list/row layout */
    .card-container {
        display: flex;
        flex-direction: column;
        gap: 20px;
    }

    .info-hover-card {
        transition: all 0.3s ease;
        cursor: pointer;
    }

    /* Hide the description by default */
    .extra-info {
        max-height: 0;
        overflow: hidden;
        transition: max-height 0.3s ease-out;
        opacity: 0;
    }

    /* Show on hover */
    .info-hover-card:hover .extra-info {
        max-height: 100px; /* Adjust based on text length */
        opacity: 1;
        margin-top: 10px;
    }
</style>

  </head>
<body>

<!-- NAVBAR -->

<nav class="navbar navbar-expand-lg navbar-dark bg-dark">

    <div class="container">

        <a class="navbar-brand fw-bold"
           href="index.html">

           Food Festival

        </a>

        <button class="navbar-toggler"
                type="button"
                data-bs-toggle="collapse"
                data-bs-target="#navbarContent">

            <span class="navbar-toggler-icon"></span>

        </button>

        <div class="collapse navbar-collapse"
             id="navbarContent">

            <ul class="navbar-nav ms-auto">

                <li class="nav-item">
                    <a class="nav-link active"
                       href="index.html">

                       Home

                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="events.jsp">

                       Festivals

                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="vendors.html">

                       Vendors

                    </a>
                </li>

                <li class="nav-item">
                    <a class="nav-link"
                       href="contact.html">

                       Contact

                    </a>
                </li>

                <li class="nav-item ms-2">

                    <a class="btn btn-outline-light"
                       href="register.html">

                       Register

                    </a>

                </li>

            </ul>

        </div>

    </div>

</nav>
<div class="container">
    <% if (id == null) { %>
       <h2 class="lead mt-3 mb-5 text-white text-center fw-bold">Explore All Food Festivals</h2>
        
        <div class="card-container">
            <% for(String[] e : events) { %>
            <div class="card bg-secondary text-white info-hover-card p-3">
                <div class="d-flex align-items-center">
                    <img src="<%= e[4] %>" style="width:100px; height:100px; object-fit:cover;" class="rounded">
                    <div class="ms-4">
                        <h4><%= e[1] %></h4>
                        <p class="mb-0"><%= e[2] %></p>
                    <a href="<%= e[0] %>.jsp" class="btn btn-danger btn-sm mt-2">View Details</a>
                  </div>
                </div>
                <div class="extra-info">
                    <p class="mt-2"><%= e[3] %></p>
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
