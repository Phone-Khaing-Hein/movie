<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Teepo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="Login.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
 <link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
</head>
<body class="bg-dark">
<div class ="form-box">
<h1>Login</h1>

<div class="input-box">
<input type="text" placeholder="Enter your Email">
</div>

<div class="input-box">
<input type="text" placeholder="Enter your Password">
</div>

<div>
<button type="button" class="login1">Login</button>
</div>
<div class="signup-link ml-5">
Don't have an account? <a href="Signup.jsp">Sign Up Here</a> || <a href="Home.jsp">Home</a>
</div>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" ></script>
</body>
</html>