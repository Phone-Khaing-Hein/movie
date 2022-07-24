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
	<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>
<title>Teepo Detail</title>
</head>
<c:import url="nav.jsp"></c:import>
<body style="min-height: 100vh; background-color: black;margin-top: 150px;">
	
	<div class="container d-flex justify-content-center gap-5 align-items-center mt-5 mb-5" style="margin-bottom: 300px;">
		<div class="img mr-5">
			<c:url value="/image/poster/${ m.poster }" var="image"></c:url>
			<img
				src="${ image }"
				class="img-thumbnail" alt="Gumball" style="width: 300px">
		</div>
		<div class="w-50">
			<h1 style="color: white;">${ m.name }</h1>
			<div>

				<p class="text-white-50">${ m.description  }</p>
				<p class="mb-2 text-white-50">Released: ${ m.releaseDate } </p>
				<p>
					<span class="text-white-50">Genre: </span>
					<c:forEach items="${genres}" var="g">
						<span class="text-white-50">${ g.name }${ g.name eq genres.get(genres.size()-1).name ? '' : ',' }</span>
					</c:forEach>
				</p>
				<c:if test="${ m.episodes != 1 }">
					<p class="text-white-50">Episodes: ${ m.episodes }</p>
				</c:if>

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

					<c:if test="${ not empty loginUser }">
						<div class="submit mr-2">
							<button type="button" id="fav" class="btn btn-outline-danger">
								<i class="fa-solid fa-heart mr-2"></i>Add to Favorite
							</button>
						</div>
					</c:if>
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
					<h5>720P</h5>
					<a href="${ m.normalDl }" target="_blank">Download ${ m.name }</a><br>
					<c:if test="${ loginUser.role eq 'Premium' }">
						<h5 class="mt-3">1080P</h5>
						<a href="${ m.premiumDl }" target="_blank">Download ${ m.name }</a>
					</c:if>
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
	<c:url value="/addToFav" var="fav">
		<c:param name="userId" value="${ loginUser.id }"></c:param>
		<c:param name="movieId" value="${ m.id }"></c:param>
	</c:url>
<script>
	$('#fav').click(function(){
		Swal.fire({
			  title: '<strong>Added to favourite!</strong>',
			  icon: 'success',
			  focusConfirm: true,
			  confirmButtonText:
			    '<a  href=${ fav } class="text-decoration-none text-white"><i class="fa fa-thumbs-up"></i> Great!<a>',
			  confirmButtonAriaLabel: 'Thumbs up, great!',
			})
	});
</script>
</body>
</html>