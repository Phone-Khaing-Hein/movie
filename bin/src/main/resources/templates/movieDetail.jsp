<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
<link rel="icon" type="image/x-icon" href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" ></script>
<title>Teepo Detail</title>
</head>
<body style="height: 100vh; background-color: black;">
<c:import url="Nav.jsp"></c:import>
<div class="container d-flex justify-content-between align-items-center h-100">
   <div class="img w-30 mr-5">
     <img src="https://static2.showtimes.com/poster/660x980/bright-netflix-122195.jpg" class="img-thumbnail" alt="Gumball">
   </div>
    <div class="w-70">
    <h1 style="color: white;">BRIGHT</h1>
    <div>
    
<p style="color: white;">Despite the events of Avengers: Endgame and Spider-Man: No Way Home, Dr. Stephen Strange continues his investigation into the Time Stone. Dr. Strange's plan to exterminate all sorcerers on the planet is thrown into jeopardy by an old ally who has turned against him.</p>
<p style="color: white;">Released: 2022-06-17
<p style="color: white;">Genre: Sci-Fi, Thriller</p>
<p style="color: white;">Duration: 107 min</p>

	<div class="d-flex mt-2">
		
		<div class="submit mr-2">
		<button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#watchnow"><i class="fa-solid fa-play mr-2"></i>Watch now</button>
		</div>
		
		<div class="submit mr-2">
		<button type="button" class="btn btn-outline-danger" data-bs-toggle="modal" data-bs-target="#download"><i class="fa-solid fa-cloud-arrow-down mr-2"></i>Download</button>
		</div>
		
		<div class="submit mr-2">
		<button type="button" class="btn btn-outline-danger"><i class="fa-solid fa-heart mr-2"></i>Add to Favorite</button>
		</div>
		
		<!--<div class="goback mr-2">
		<a href="Home.jsp"><button type="button" class="btn btn-outline-danger"><i class="fa-solid fa-house mr-2"></i>Home</button></a>
		</div>-->
	</div>
	</div>
    </div>
    </div>
    
<div class="modal fade" id="watchnow" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content bg-dark">
      <div class="modal-header text-white">
        <h5 class="modal-title" id="exampleModalLabel">Trailer</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body d-flex justify-content-center">
        <iframe width="380" height="350" src="https://www.youtube.com/embed/RMyFf73Stoc" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-danger" data-bs-dismiss="modal">Close</button>
      </div>
    </div>
  </div>
</div>
    
<div class="modal fade" id="download" tabindex="-1" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Download</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <a href="https://youtu.be/dQw4w9WgXcQ">Watch Morbius [720P]</a><br>
        <a href="https://youtu.be/dQw4w9WgXcQ">Watch Morbius [1080P]</a>
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <button type="button" class="btn btn-primary">Download</button>
      </div>
    </div>
  </div>
</div>

<div style="width: 100%">
<c:import url="Footer.jsp"></c:import>
</div>
    
</body>
</html>