<%@ page language="java"
contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>

<html>

<head>

<meta charset="UTF-8">

<title>Malaysian International Food & Beverage Fair</title>

<link
href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
rel="stylesheet">

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

<section class="events-section">

    <div class="container text-white">

        <img src="images/mifb.jpg"
             class="img-fluid rounded mb-4">

        <h1 class="mb-3">
            Malaysian International Food & Beverage Fair
        </h1>

        <h5 class="mb-4">
            Kuala Lumpur • 15 JUL - 17 JUL 2026
        </h5>

        <p>
            Explore innovative food technology,
            culinary trends and international food brands.
        </p>


        <div class="map-responsive">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d681.9343711791341!2d101.68463234595849!3d3.1023967195694735!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31cc4a22b3039769%3A0xdd58f22722598f87!2sConstellar%20Exhibitions%20Malaysia%20Sdn%20Bhd!5e0!3m2!1sen!2sus!4v1779989091551!5m2!1sen!2sus" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>
        </div>


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