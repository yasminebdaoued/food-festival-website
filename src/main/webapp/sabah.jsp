<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Sabah International Food Expo</title>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

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

<section class="events-section">

    <div class="container text-white">

        <img src="images/sabahfoodexpo.jpg"
             class="img-fluid rounded mb-4">

        <h1 class="mb-3">
            Sabah International Food Expo
        </h1>

        <h5 class="mb-4">
            Kota Kinabalu • 24 APR - 26 APR 2026
        </h5>

        <p>
            Discover Sabah’s cultural cuisine,
            seafood specialties and international food exhibitions.
        </p>

        <a href="register.html"
           class="btn btn-danger mt-3">

           Register Now

        </a>

    </div>

</section>

<footer class="footer-section">

    <div class="container text-center text-white">

        <p>
            © Food Festival Team, 2026.
        </p>

    </div>

</footer>

</body>

</html>