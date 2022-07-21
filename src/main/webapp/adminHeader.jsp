<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
      <div class="container d-flex justify-content-between align-items-center">
      	<c:url value="/admin/dashboard" var="dashboard"></c:url>
       <a href="${ dashboard }" style="color:red;text-decoration: none;font-size: 35px">TEEPO</a>
        <p class="text-white mb-0">Phone Khaing Hein</p>
      </div>
    </nav>
</body>
</html>