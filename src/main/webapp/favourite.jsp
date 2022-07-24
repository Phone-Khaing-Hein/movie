<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>${ nav }</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
</head>
<body style="background-color: black;">
	<c:import url="/nav.jsp"/>
	<div class="container">
		<h4 style="color:white;margin-top: 100px;">Your Favourite</h4><hr class="bg-white"/>
	</div>
	<div class="d-flex mt-2 mb-5 gap-3 align-items-center justify-content-center container flex-wrap">
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
	<c:import url="/footer.jsp"></c:import>
	<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script></body>
</body>
</html>