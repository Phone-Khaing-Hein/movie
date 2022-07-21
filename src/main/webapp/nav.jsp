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
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark d-flex">
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
              <a class="nav-link" href="Home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Movie.jsp">Movies</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Series.jsp">Series</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Trend.jsp">Trend</a>
            </li>
            <li>
            	<div class="btn-group">
				  <button type="button" class="btn btn-danger dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
				     Genre
				  </button>
				  <ul class="dropdown-menu">
				      <li><a class="dropdown-item" href="#">Action</a></li>
	                  <li><a class="dropdown-item" href="#">Comedy</a></li>
	                  <li><a class="dropdown-item" href="#">Thriller</a></li>
	                  <li><a class="dropdown-item" href="#">Historical</a></li>
	                  <li><a class="dropdown-item" href="#">Drama</a></li>
	                  <li><a class="dropdown-item" href="#">Documentary</a></li>
	                  <li><a class="dropdown-item" href="#">Adventure</a></li>
				  </ul>
				</div>
            </li>
            </ul>
            </div>
        <form class="form-inline my-2 my-lg-0">
          <input
            class="form-control mr-sm-2"
            type="search"
            placeholder="Enter the Title"
            aria-label="Search"
          />
          
          
        </form>
        <div class="dropdown">
		  <button class="btn btn-outline-danger dropdown-toggle" type="button" id="dropdownMenuButton1" data-bs-toggle="dropdown" aria-expanded="false">
		    ${ loginUser.name }
		  </button>
		  <ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
		    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-heart mr-2"></i>Favorite</a></li>
		    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-arrow-right-to-bracket mr-2"></i>Login</a></li>
		    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-crown mr-2"></i>Premium</a></li>
		    <li><a class="dropdown-item" href="#"><i class="fa-solid fa-arrow-right-from-bracket mr-2"></i>Logout</a></li>
		  </ul>
		</div>
      </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
    </body>
</html>
