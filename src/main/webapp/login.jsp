<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<title>Teepo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/css/Login.css" var="css"></c:url>
<link rel="stylesheet" href="${css}">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
 <link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
</head>
<body class="bg-dark">
	<div class ="form-box">
		<c:url value="/login" var="login"></c:url>
		<form action="${login}" method="post">
			<h1>Login</h1>
			 <c:if test="${ not empty error1 || not empty error2 }">
		      	<p style="color: red; margin: 15px 0 -15px 45px">${ not empty error1 ? error1 : error2 }</p>
		      </c:if>
			<div class="input-box">
				<input type="text" placeholder="Enter your Email" name="email" value="${ email }">
			</div>
			
			<div class="input-box">
				<input type="text" placeholder="Enter your Password" name="password" value="${ password }">
			</div>
			
			<div>
				<button type="submit" class="login1">Login</button>
			</div>
		</form>
		<div class="signup-link ml-5">
			<c:url value="sign-up" var="signUp" />
			<c:url value="home" var="home" />
			Don't have an account? <a href="${ signUp }">Sign Up Here</a> || <a href="${ home }">Home</a>
		</div>
	</div>
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" ></script>
</body>
</html>