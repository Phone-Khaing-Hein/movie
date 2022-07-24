<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <title>Teepo</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark d-flex" style="position: fixed;width: 100%;top: 0;z-index: 5;">
      <div class="container">
      	<c:url value="/home" var="home"></c:url>
        <a class="navbar-brand " href="${ home }" style="color:red; font-family: 'Anton', sans-serif; font-size: 35px">TEEPO</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
            <c:url value="/home" var="home"/>
              <a class="nav-link ${ nav eq 'home' ? 'active' : '' }" href="${ home }">Home</a>
            </li>
            <li class="nav-item">
            <c:url value="/movies" var="movies"/>
              <a class="nav-link ${ nav eq 'Movies' ? 'active' : '' }" href="${ movies }">Movies</a>
            </li>
            <li class="nav-item">
            <c:url value="/series" var="series"/>
              <a class="nav-link ${ nav eq 'Series' ? 'active' : '' }" href="${ series }">Series</a>
            </li>
            <li class="nav-item">
            <c:url value="/trends" var="trend"/>
              <a class="nav-link ${ nav eq 'Trends' ? 'active' : '' }" href="${ trend }">Trend</a>
            </li>
            <li>
            	<div class="dropdown">
				  <button class="btn btn-danger dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
				    Genre
				  </button>
				  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
					  <c:forEach items="${ genres }" var="g">
					  	<c:url value="/genre" var="genre">
					  		<c:param name="name" value="${ g.name }"></c:param>
					  	</c:url>
					  	<li><a class="dropdown-item" href="${ genre }">${ g.name }</a></li>
					  </c:forEach>
				  </ul>
				</div>
            </li>
            </ul>
            </div>
            <c:url value="/search" var="search"/>
        <form class="form-inline my-2 my-lg-0" action="${ search }">
          <input
            class="form-control"
            type="search"
            placeholder="Enter the Title"
            aria-label="Search"
            name="keyword"
          />
        </form>
        <div class="dropdown">
		  <button class="btn btn-outline-danger dropdown-toggle ms-2" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
		    <c:choose>
		    	<c:when test="${ not empty loginUser }">${ loginUser.name }</c:when>
		    	<c:otherwise><i class="fa-solid fa-arrow-right-to-bracket me-2"></i>Login</c:otherwise>
		    </c:choose>
		  </button>
		  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		  	<c:if test="${ empty loginUser}">
		  		<c:url value="/login" var="login" />
		  		<li><a class="dropdown-item" href="${ login }"><i class="fa-solid fa-arrow-right-to-bracket me-2"></i>Login</a></li>
		  	</c:if>
		  	<c:if test="${ not empty loginUser && loginUser.role eq 'Free' }">
		  		<c:url value="/premium" var="premium" />
		    	<li><a class="dropdown-item text-warning" href="${ premium }"><i class="fa-solid fa-crown me-2"></i>Premium</a></li>
		  	</c:if>
		    <c:if test="${ not empty loginUser || loginUser.role eq 'Admin' }">
		    	<c:url value="/favourite" var="favourite" />
		    	<li><a class="dropdown-item text-danger" href="${ favourite }"><i class="fa-solid fa-heart me-2"></i>Favorite</a></li>
		    	<hr />
		    	<c:url value="/logout" var="logout" />
		    	<li><a class="dropdown-item" href="${ logout }"><i class="fa-solid fa-arrow-right-from-bracket me-2"></i>Logout</a></li>
		    </c:if>
		  </ul>
		</div>
      </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct" crossorigin="anonymous"></script>
</html>
