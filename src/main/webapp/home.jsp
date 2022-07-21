<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<c:url value="/css/style.css" var="css"></c:url>
<link rel="stylesheet" href="${ css }" type="text/css">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">

<title>Teepo Home</title>
</head>
<body style="height: 100vh; background-color: black;">
<c:import url="nav.jsp"></c:import>
<div class="container">
<h4 style="color:white;margin-top: 20px;">Trand</h4><hr class="bg-white"/>
<div class="d-flex mt-2 mb-5 gap-3 align-items-center justify-content-center">
    	<c:forEach items="${movies}" var="m">
	    	<c:url value="/movie/detail" var="movieDetail">
	    		<c:param name="movieId" value="${ m.id }"></c:param>
	    	</c:url>
    		<a class="mr-2 mb-2 text-decoration-none" href="${ movieDetail }">
	   		<div style="width: 200px;height: 400px;overflow: hidden;">
	   			<c:url value="/image/poster/${ m.poster }" var="image"></c:url>
	  			<img src="${ image }" class="gii" style="width: 200px;height: 280px;border-radius: 0.25rem 0.25rem 0 0;">
  				<div class="card-body bg-secondary text-white" style="border-radius: 0 0 0.25rem 0.25rem">
  					<p style="font-size:14px;">${ m.name }</p>
	   				<div class="d-flex justify-content-between align-items-center">
	   					<p style="font-size:14px">${ m.releaseDate }</p>
	   					<p style="font-size:14px">${ m.episodes > 1 ? 'Series' : 'Movie' }</p>
	    			</div>
  				</div>
			</div>
		</a>
    	</c:forEach>
</div>

<h4 style="color:white">Latest Movies</h4><hr class="bg-white"/>
<div class="d-flex mt-2 mb-5s gap-3 align-items-center justify-content-center">
    	<c:forEach items="${movies}" var="m">
	    	<c:url value="/movie/detail" var="movieDetail">
	    		<c:param name="movieId" value="${ m.id }"></c:param>
	    	</c:url>
    		<a class="mr-2 mb-2 text-decoration-none" href="${ movieDetail }">
	   		<div style="width: 200px;height: 400px;overflow: hidden;">
	   			<c:url value="/image/poster/${ m.poster }" var="image"></c:url>
	  			<img src="${ image }" class="gii" style="width: 200px;height: 280px;border-radius: 0.25rem 0.25rem 0 0;">
  				<div class="card-body bg-secondary text-white" style="border-radius: 0 0 0.25rem 0.25rem">
  					<p style="font-size:14px;">${ m.name }</p>
	   				<div class="d-flex justify-content-between align-items-center">
	   					<p style="font-size:14px">${ m.releaseDate }</p>
	   					<p style="font-size:14px">${ m.episodes > 1 ? 'Series' : 'Movie' }</p>
	    			</div>
  				</div>
			</div>
		</a>
    	</c:forEach>
</div>

<h4 style="color:white">Latest Series</h4><hr class="bg-white"/>
<div class="d-flex mt-2 gap-3 align-items-center justify-content-center">
    	<c:forEach items="${movies}" var="m">
	    	<c:url value="/movie/detail" var="movieDetail">
	    		<c:param name="movieId" value="${ m.id }"></c:param>
	    	</c:url>
    		<a class="mr-2 mb-2 text-decoration-none" href="${ movieDetail }">
	   		<div style="width: 200px;height: 400px;overflow: hidden;">
	   			<c:url value="/image/poster/${ m.poster }" var="image"></c:url>
	  			<img src="${ image }" class="gii" style="width: 200px;height: 280px;border-radius: 0.25rem 0.25rem 0 0;">
  				<div class="card-body bg-secondary text-white" style="border-radius: 0 0 0.25rem 0.25rem">
  					<p style="font-size:14px;">${ m.name }</p>
	   				<div class="d-flex justify-content-between align-items-center">
	   					<p style="font-size:14px">${ m.releaseDate }</p>
	   					<p style="font-size:14px">${ m.episodes > 1 ? 'Series' : 'Movie' }</p>
	    			</div>
  				</div>
			</div>
		</a>
    	</c:forEach>
</div>
</div>
<div style="width: 100%;">
<c:import url="footer.jsp"></c:import>
</div>
           
  
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script></body>
</html>