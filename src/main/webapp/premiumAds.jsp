<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1" />
<link
      rel="stylesheet"
      href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
    />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Alfa+Slab+One&family=Tiro+Devanagari+Sanskrit&display=swap" rel="stylesheet">
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
<title>Teepo Premium</title>
</head>
<body class="bg-dark">
<div class="container">
<div class="d-flex justify-content-center align-items-center mt-5 pt-5">
<div class="card p-4 bg-light mr-5 mt-5" style="width: 25rem;">
  <h2 class="text-center">Free</h2><hr/>
  <p style="color: red;"><i class="fa-solid fa-xmark mr-2"></i>No ADS</p>
  <p style="color: green;"><i class="fa-solid fa-check mr-2"></i>720 Resolution</p>
  <p style="color: red;"><i class="fa-solid fa-xmark mr-2"></i>Early Access</p>
  <p style="color: red;"><i class="fa-solid fa-xmark mr-2"></i>Fast Download link</p>
  
  <div class="card-footer">
   <c:url value="/login" var="login"/>
   <a href="${ login }" class="btn btn-outline-danger">Go to</a>
  </div>
</div>

<div class="card p-4 bg-light mt-5" style="width: 25rem;">
  <h2 class="text-center">PREMIUM</h2><hr/>
  <p style="color: green;"><i class="fa-solid fa-check mr-2"></i>No ADS</p>
  <p style="color: green;"><i class="fa-solid fa-check mr-2"></i>1080 Resolution</p>
  <p style="color: green;"><i class="fa-solid fa-check mr-2"></i>Early Access</p>
  <p style="color: green;"><i class="fa-solid fa-check mr-2"></i>Fast Download link</p>
  
  <div class="card-footer">
  <c:url value="/payment/add" var="payment"/>
   <a href="${ payment }" class="btn btn-outline-success">Go to</a>
  </div>
</div>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>