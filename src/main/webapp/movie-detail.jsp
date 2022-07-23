<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" />
<link rel="icon" type="image/x-icon"
	href="https://cdn.discordapp.com/attachments/937998980133056517/992323476566315008/Teepo1.png">
  </head>
  <body class="bg-secondary">
    <c:import url="adminHeader.jsp"></c:import>

    <div class="d-flex mt-2 mb-2" style="margin-top: 80px !important;">
     <c:import url="adminSidebar.jsp"></c:import>

      <div class="w-75 rounded me-2 bg-dark p-4 d-flex gap-5 align-items-center" style="margin-left: 390px !important;">
      	<c:url value="/image/poster/${ m.poster }" var="poster"/>
        <img src="${ poster }" class="img-thumbnail" alt="Gumball" style="width: 300px">
        <div>
        	<h2 style="color: white;">${ m.name }</h2>
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
							<i class="fa-solid fa-play me-2"></i>Trailer
						</button>
					</div>

					<div class="submit mr-2">
						<button type="button" class="btn btn-outline-danger"
							data-bs-toggle="modal" data-bs-target="#download">
							<i class="fa-solid fa-cloud-arrow-down me-2"></i>Download
						</button>
					</div>

					<div class="submit mr-2">
						<button type="button" class="btn btn-outline-danger">
							<i class="fa-solid fa-heart me-2"></i>Add to Favorite
						</button>
					</div>
				</div>
				<div class="d-flex mt-3 gap-2">
					<c:url value="/admin/movie/add" var="movieEdit">
	                	<c:param name="movieId" value="${ m.id }"></c:param>
	                </c:url>
	                <a href="${ movieEdit }" class="btn btn-warning">Edit</a>
	                <c:url value="/admin/movie/delete" var="movieDelete">
	                	<c:param name="movieId" value="${ m.id }"></c:param>
	                </c:url>
	                <a href="${ movieDelete }" class="btn btn-danger">Delete</a>
	                <c:url value="/admin/movie/list" var="movieList"/>
	                <a href="${ movieList }" class="btn btn-secondary">Back</a>
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

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
