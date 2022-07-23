<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark bg-gradient" style="position: fixed;top: 0;right: 0;left: 0;">
      <div class="container d-flex justify-content-between align-items-center">
      	<c:url value="/admin/dashboard" var="dashboard"></c:url>
       <a href="${ dashboard }" style="color:red;text-decoration: none;font-size: 35px">TEEPO</a>
        <div class="dropdown">
		  <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
		    ${ adminUser.name }
		  </button>
		  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-user me-2"></i>Profile</a></li>
		  </ul>
		</div>
      </div>
    </nav>
</body>
</html>