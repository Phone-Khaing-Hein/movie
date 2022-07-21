<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="trend.css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
<title>Teepo Trend</title>
</head>
<body style="height: 100vh; background-color: black;">
<c:import url="Nav.jsp"></c:import>
<nav class="navbar navbar-expand-lg navbar-dark bg-dark">
  <a class="navbar-brand" href="#">Trend</a>
   </nav>
   <div class="card mr-2 " style="width: 200px;">
  				<img src="https://sportshub.cbsistatic.com/i/2022/05/23/da041e31-662a-47d1-9952-7ae01d190dad/the-gray-man-chris-evans-poster.jpg?auto=webp&width=1080&height=1350&crop=0.8:1,smart" class="card-img-top" alt="...">
  					<div class="card-body">
    				<div class="d-flex">
    					<div>
    						<p class="" style="font-size:14px">The Gray Man</p>
   							<p style="font-size:14px">2022</p>
    					</div>
    						<p style="font-size:14px">Movie</p>
    				</div>
  					</div>
			</div>
   <c:import url="Footer.jsp"></c:import>
         <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" ></script>
 		 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" ></script>
</body>
</html>