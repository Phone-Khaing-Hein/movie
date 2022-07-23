<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Teepo Payment</title>
<link rel = "icon" href = "/Logo/Teepo1.png" type = "image/x-icon">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/css/payment.css" var="css"/>
<link rel="stylesheet" href="${ css }">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
</head>
<body class="bg-dark d-flex justify-content-center align-items-center" style="max-height: 100vh; min-height: 100vh;">
<c:url value="/payment/add" var="payment"/>
<form class ="form-box" action="${ payment }" method="post" enctype="multipart/form-data">
<h1>Payment Management</h1>
<c:if test="${ not empty message }">
	<span class="alert alert-success mt-3 ms-5">${ message }</span>
</c:if>
<input type="hidden" name="userId" value="${ loginUser.id }" />
<div class="input-box">
<input type="text" placeholder="Enter your Name" value="${ loginUser.name }" name="username">
</div>

<div class="input-box">
<input type="text" placeholder="Enter your Email" value="${ loginUser.email }" name="email">
</div>

<label class="ms-5">Select Package</label>
<select name="packages" class="form-select ms-5 ${ not empty error1 ? 'is-invalid' : '' }" style="width: 400px">
	<option value="1">1 Month</option>
	<option value="3">3 Months</option>
	<option value="6">6 Months</option>
	<option value="12">1 Year</option>
</select>
<div class="invalid-feedback">${ error1 }</div>

<div class="input-box">
<label>Payment Screenshot</label>
<input type="file" name="screenshotFile" class="form-control ${ not empty error2 ? 'is-invalid' : '' }" style="width: 400px">
<div class="invalid-feedback">${ error2 }</div>
</div>
<div>
<button type="submit" class="login1" style="background-color: red">Start Premium</button>
</div>
<div class="signup-link ms-5">
<c:url value="/home" var="home"/>
Go back to  <a href="${ home }">Home</a>
</div>
</form>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
</body>
</html>