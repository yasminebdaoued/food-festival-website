<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Completed!</title>
<link rel="stylesheet" href="responsestyle.css">
</head>
<body>

<div class="response-box">
    <h1>Registration Completed!</h1>

    <h2>Your details are as follows:</h2>

    <p>First name: ${param.firstName}</p>
    <p>Last name: ${param.lastName}</p>
    <p>Email: ${param.email}</p>
</div>

</body>
</html>