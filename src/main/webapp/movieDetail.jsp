<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="icon" type="image/x-icon"
	href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">

<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
<title>Teepo Detail</title>
</head>
<body style="min-height: 100vh; background-color: black;">
	<c:import url="nav.jsp"></c:import>
	<div class="container d-flex justify-content-center gap-5 align-items-center mt-5 mb-5">
		<div class="img mr-5">
			<c:url value="/image/poster/${ m.poster }" var="image"></c:url>
			<img
				src="${ image }"
				class="img-thumbnail" alt="Gumball" style="width: 300px">
		</div>
		<div class="w-50">
			<h1 style="color: white;">${ m.name }</h1>
			<div>

				<p style="color: white;">${ m.description  }</p>
				<p style="color: white;">Released: ${ m.releaseDate }
				<p style="color: white;">Genre: Sci-Fi, Thriller</p>

				<div class="d-flex mt-2 gap-2">

					<div class="submit mr-2">
						<button type="button" class="btn btn-outline-danger"
							data-bs-toggle="modal" data-bs-target="#watchnow">
							<i class="fa-solid fa-play mr-2"></i>Trailer
						</button>
					</div>

					<div class="submit mr-2">
						<button type="button" class="btn btn-outline-danger"
							data-bs-toggle="modal" data-bs-target="#download">
							<i class="fa-solid fa-cloud-arrow-down mr-2"></i>Download
						</button>
					</div>

					<div class="submit mr-2">
						<button type="button" class="btn btn-outline-danger">
							<i class="fa-solid fa-heart mr-2"></i>Add to Favorite
						</button>
					</div>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="watchnow" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
		<div class="modal-dialog modal-dialog-centered modal-lg">
			<div class="modal-content bg-dark">
				<div class="modal-header text-white">
					<h5 class="modal-title" id="exampleModalLabel">Trailer</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body d-flex justify-content-center">
					<iframe width="700" height="400"
						src="${ m.trailer }"
						title="YouTube video player" frameborder="0"
						allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
						allowfullscreen></iframe>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-danger"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div class="modal fade" id="download" tabindex="-1"
		aria-labelledby="exampleModalLabel" aria-hidden="true" data-bs-backdrop="static">
		<div class="modal-dialog modal-dialog-centered">
			<div class="modal-content bg-dark text-white">
				<div class="modal-header">
					<h5 class="modal-title" id="exampleModalLabel">Download Links</h5>
					<button type="button" class="btn-close" data-bs-dismiss="modal"
						aria-label="Close"></button>
				</div>
				<div class="modal-body">
					<h5>For Free User</h5>
					<a href="${ m.normalDl }" target="_blank">Download ${ m.name }</a><br>
					<h5 class="mt-3">For Premium User</h5>
					<a href="${ m.premiumDl }" target="_blank">Download ${ m.name }</a>
				</div>
				<div class="modal-footer">
					<button type="button" class="btn btn-secondary"
						data-bs-dismiss="modal">Close</button>
				</div>
			</div>
		</div>
	</div>

	<div style="">
		<c:import url="footer.jsp"></c:import>
	</div>

</body>
</html>