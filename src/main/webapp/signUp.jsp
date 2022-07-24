<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Teepo</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
<style>
	@charset "ISO-8859-1";

*{
   margin: 0;
   padding: 0;
}
body{
background-size:cover;
background-position:center;
font-family:sans-serif;
}
.form-box{
width:500px;
background: rgba(0,0,0,0.5);
margin: 12% auto;
padding: 50px 0;
color: #fff;
box-shadow: 0 0 20px 2 px rgba(0,0,0,0.5);
}
h1{
text-align:center;
margin-bottom: 40px;
}
.input-box{
margin:31px auto;
width: 80%;
padding-top: 10px;
padding-bottom: 5px;
}
.input-box input{
width: 90%;
border: none;
outline: none;
border-bottom: 1px solid #fff;
background: transparent;
color: #fff;
}
.eye{
position: absolute;
}
#e1{
display: none;
}
.login1{
background-color: #DC3545;
margin: 40px auto 20px;
width: 60%;
display: block;
outline: none;
padding: 10px;
border: 1px solid #fff;
cursor: pointer;
color: #fff;
font-size: 16px;
}
.signup-link{
	font-size: 15px;
}
.login1:hover {
  background-color: #96232e;
}
</style>
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
		<c:url value="/login" var="login" />
		<c:url value="home" var="home" />
		<p class="ml-5 mb-0">Already have an account? <a href="${ login }">Login Here</a> || <a href="${ home }">Home</a></p>
	</form>
</body>
</html>