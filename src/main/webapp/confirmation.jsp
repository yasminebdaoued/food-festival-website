<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    String fullName = request.getParameter("fullName");
    String email = request.getParameter("email");
    String festival = request.getParameter("festival");
    String message = request.getParameter("message");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registration Confirmation</title>
    <link rel="stylesheet" href="css/confirmation.css">
</head>

<body>
    <nav class="navbar">
        <div class="logo">
            <a href="index.html">Food Festival</a>
        </div>

        <div class="nav-links">
            <a href="index.html">Home</a>
            <a href="events.jsp">Festivals</a>
            <a href="vendors.html">Vendors</a>
            <a href="contact.html">Contact</a>
            <a href="register.html" class="active">Register</a>
        </div>
    </nav>

    <main class="confirmation-page">
        <section class="left-panel">
            <h1>Registration<br>Confirmed!</h1>
            <p class="thank-you">
                Thank you for registering for our Food Festival
            </p>
            
            <p class="description">
             We have successfully received your information.<br>
             You will receive updates and important details about the festival via your email.
            </p>

            <div class="actions">
                <a href="events.jsp" class="primary-btn">View Festivals</a>
                <a href="index.html" class="secondary-link">Back to Home →</a>
            </div>
        </section>

        <section class="receipt-card">
            <h2>Submitted Information</h2>

            <div class="info-row">
                <span>Full Name</span>
                <strong><%= fullName %></strong>
            </div>

            <div class="info-row">
                <span>Email</span>
                <strong><%= email %></strong>
            </div>

            <div class="info-row">
                <span>Preferred Festival</span>
                <strong><%= festival %></strong>
            </div>

            <div class="info-row">
                <span>Message / Special Requests</span>
                <strong><%= message %></strong>
            </div>

            <div class="status-box">
                <span>Registration Status</span>
                <strong>Successfully Submitted</strong>
            </div>
        </section>
    </main>
</body>
</html>