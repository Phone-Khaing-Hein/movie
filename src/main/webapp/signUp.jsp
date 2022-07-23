<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Teepo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/css/signUp.css" var="css" />
<link rel="stylesheet" href="${ css }">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
</head>
<body class="bg-dark d-flex justify-content-center align-items-center" style="max-height: 100vh">
	<c:url value="/sign-up" var="signUp"/>
	<form class ="form-box" action="${ signUp }" method="post">
		<h1>Sign Up</h1>
		<div class="input-box">
			<input type="text" placeholder="Enter your Name" name="name" value="${ user.name }">
			<c:if test="${ not empty error1 }">
				<div class="text-danger" style="margin-bottom: -20px;">
			        ${ error1 }
				</div>
			</c:if>
		</div>
		
		<div class="input-box">
			<input type="text" placeholder="Enter your Email" name="email" value="${ user.email }">
			<c:if test="${ not empty error2 }">
				<div class="text-danger" style="margin-bottom: -20px;">
		        ${ error2 }
			</div>
			</c:if>
		</div>
		
		<div class="input-box">
			<input type="password" placeholder="Enter your Password" name="password" value="${ user.password }">
			
			<c:if test="${ not empty error3 }">
				<div class="text-danger" style="margin-bottom: -20px;">
		        ${ error3 }
			</div>
			</c:if>
		</div>
		
		<div class="input-box">
			<input type="password" placeholder="Enter your Confirm Password" name="cpassword" value="${ user.cpassword }">
			<c:if test="${ not empty error4 }">
				<div class="text-danger" style="margin-bottom: -20px;">
		        	${ error4 }
				</div>
			</c:if>
			<c:if test="${ not empty error5 }">
				<div class="text-danger" style="margin-bottom: -20px;">
			        ${ error5 }
				</div>
			</c:if>
		</div>
		
		<div>
			<button type="submit" class="login1">Sign Up</button>
		</div>
	</form>
</body>
</html>