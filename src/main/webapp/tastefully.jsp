<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Tastefully Food Expo</title>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

<link rel="stylesheet" href="css/style.css">

<link rel="stylesheet" href="css/style.css">
<style>
.map-responsive {
    overflow: hidden;
    padding-bottom: 50%;
    position: relative;
    height: 0;
    /* Add these two lines for rounded corners */
    border-radius: 15px; 
    border: 3px solid #dc3545; /* Optional: adds a nice border to highlight the map area */
}
.map-responsive iframe {
    left: 0; top: 0; height: 100%; width: 100%; position: absolute;
    /* Ensure the iframe itself also respects the rounding */
    border-radius: 15px;
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

<!-- EVENT DETAILS -->

<section class="events-section">

    <div class="container text-white">

        <img src="images/tastefullyexpo.jpg"
             class="img-fluid rounded mb-4">

        <h1 class="mb-3">
            Tastefully Food Expo
        </h1>

        <h5 class="mb-4">
            Kuala Lumpur • 7 AUG - 9 AUG 2026
        </h5>

        <p>
            Experience Malaysia’s largest food expo
            featuring local delicacies, desserts,
            beverages and international food brands.
        </p>

        <div class="map-responsive">
  <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d597.4619966347608!2d101.67721855337834!3d3.1175863457485513!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc3700c0ff9da5%3A0x36f7d483254cc144!2sTastefully%20Food%20Expo!5e0!3m2!1sen!2sus!4v1779987595678!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
</div>

        <a href="register.html"
           class="btn btn-danger mt-3">

           Register Now

        </a>

    </div>

</section>

<!-- FOOTER -->

<footer class="footer-section">

    <div class="container text-center text-white">

        <p>
            © Food Festival Team, 2026.
        </p>

    </div>

</footer>

</body>

</html>