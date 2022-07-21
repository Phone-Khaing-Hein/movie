<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="ISO-8859-1">
    <meta name="viewport" content="width=device-width, initial-scale=1" /> 
    <link rel="stylesheet" href="Nav.css" type="text/css" /> 
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/> 
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" /> 
    <link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
  
<title>Profile</title>
</head>
<body class="d-flex flex-column align-items-center bg-secondary" style="width:100%;"> 
<div style="width: 100%;">
<c:import url="Nav.jsp"></c:import>
</div>
   <div class="p-3 mt-1" style="width:500px;">
    <form>
    <h4 class="justify-content-center" style=>Update Profile</h4><hr/>

    <div class="form-floating mb-3">
    <label for="floatingInput">Your Name</label>
  	<input type="text" class="form-control" id="floatingInput" placeholder="name">
	</div>

    <div class="form-floating mb-3">
    <label for="floatingInput">Email</label>
    <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
    </div>

    <div class="form-floating mb-3">
  	<label for="floatingInput">Password</label>
  	<input type="text" class="form-control" id="floatingInput" placeholder="password">
    </div>

    <div class="form-floating mb-3">
  	<label for="floatingInput">New Password</label>
  	<input type="text" class="form-control" id="floatingInput" placeholder="confirm password">
    </div>
    
    <div class="form-floating mb-3">
  	<label for="floatingInput">Confirm Password</label>
  	<input type="text" class="form-control" id="floatingInput" placeholder="confirm password">
    </div>

	<div class="">
    <button type="submit" class="btn btn-danger">Submit</button><hr/>
  	</div>
	</form>
    </div>
    <div style="width: 100%;">
    <c:import url="Footer.jsp"></c:import>
    </div>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
</body>
</html>