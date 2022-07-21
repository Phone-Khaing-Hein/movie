<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Teepo Payment</title>
<link rel = "icon" href = "/Logo/Teepo1.png" type = "image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="Payment.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
</head>
<body class="bg-dark">
<div class ="form-box">
<h1>Payment Management</h1>
<div class="input-box">
<input type="text" placeholder="Enter your Name">
</div>

<div class="input-box">
<input type="text" placeholder="Enter your Email">
</div>
<div class="ml-5">
<div class="btn-group">
  <button type="button" class="btn btn-danger btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Package
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">1 month</a></li>
    <li><a class="dropdown-item" href="#">3 months</a></li>
    <li><a class="dropdown-item" href="#">9 months</a></li>
    <li><a class="dropdown-item" href="#">12 months</a></li>
  </ul>
</div>

<div class="btn-group">
  <button type="button" class="btn btn-danger btn-sm dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
    Payment Method
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#">KBZ</a></li>
    <li><a class="dropdown-item" href="#">AYA</a></li>
    <li><a class="dropdown-item" href="#">Yoma</a></li>
    <li><a class="dropdown-item" href="#">Wave Money</a></li>
  </ul>
</div>

</div>

<div>
<button type="button" class="login1">Start Premium</button>
</div>
<div class="signup-link ml-5">
Go back to  <a href="Home.jsp">Home</a>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" ></script>
</body>
</html>