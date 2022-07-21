<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<meta name="viewport" content="width=device-width, initial-scale=1">
  	<c:url value="/css/adminStyle.css" var="css" />
    <link rel="stylesheet" href="${css}" />
    <title>Admin Login</title>
    
  </head>
  <body>
    <div class="container">
      <h1>Admin Login</h1>
      <c:if test="${ not empty error1 || not empty error2 }">
      	<p style="color: red">${ not empty error1 ? error1 : error2 }</p>
      </c:if>
      <c:url value="/admin/login" var="adminLogin" /> 
      <form action="${ adminLogin }" method="post">
        <div class="form-control">
          <input type="text" name="email" value="${ email }" />
          <label>Email</label>
        </div>

        <div class="form-control">
          <input type="password" name="password" value="${ password }"/>
          <label>Password</label>
        </div>

        <button class="btn" type="submit">Login</button>
      </form>
    </div>
    <c:url value="/js/app.js" var="js"></c:url>
    <script src="${ js }"></script>
  </body>
</html>

