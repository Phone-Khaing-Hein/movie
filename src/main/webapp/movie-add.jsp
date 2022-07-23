<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
  </head>
  <body class="bg-secondary">
    <c:import url="adminHeader.jsp"></c:import>

    <div class="d-flex mt-2 mb-2" style="margin-top: 80px !important;">
     <c:import url="adminSidebar.jsp"></c:import>

      <div class="w-75 rounded me-2 bg-dark p-4" style="margin-left: 390px !important;">
        <div class="d-flex justify-content-between align-items-center p-3">
          <h3 class="text-white mb-0">Movie ${ not empty movie.id ? 'Update' : 'Add' }</h3>
          <c:if test="${ not empty message }">
          	<p class="alert alert-success" role="alert">
			  ${ message }
			</p>
          </c:if>
          <c:url value="/admin/movie/list" var="movieList"></c:url>
          <a href="${ movieList }" class="btn btn-success">Movie List</a>
        </div>
        <div class="row ms-2">
          <div class="col-12">
          <c:url value="/admin/movie/add" var="addMovie"></c:url>
            <form action="${ addMovie }" method="post" class="text-white" enctype="multipart/form-data">
              <c:if test="${ not empty movie.id }">
              	<input type="hidden" name="id" value="${ movie.id }" />
              	<input type="hidden" name="poster" value="${ movie.poster }" />
              </c:if>
              <div class="row">
              	<div class="col">
              	  <div>
	                <label for="name" class="form-label">Movie Name</label>
	                <input type="text" id="name" name="name" class="form-control ${ not empty error1 ? 'is-invalid' : '' }" value="${ movie.name }"/>
	                <div class="invalid-feedback">
				        ${ error1 }
				     </div>
	              </div>
              </div>
              <div class="col">
	              	<div>
		                <label for="photo" class="form-label">Movie Poster</label>
		                <input
		                  type="file"
		                  id="photo"
		                  name="posterFile"
		                  class="form-control ${ not empty error2 ? 'is-invalid' : '' }"
		                />
		                 <div class="invalid-feedback">
					        ${ error2 }
					  	</div>
	              </div>
              </div>
              </div>
              <div class="row mt-2">
              	<div class="col">
              		<label for="" class="form-label">Release Date</label>
              		<input type="date" name="releaseDate" class="form-control ${ not empty error3 ? 'is-invalid' : '' }" value="${ movie.releaseDate }"/>
              		<div class="invalid-feedback">
				        ${ error3 }
				  </div>
              	</div>
              	<div class="col">
              		<label for="" class="form-label">Trailer(Embed Link)</label>
              		<input type="text" name="trailer" class="form-control ${ not empty error4 ? 'is-invalid' : '' }" value="${ movie.trailer }"/>
              		<div class="invalid-feedback">
				        ${ error4 }
				  </div>
              	</div>
              </div>
               <div class="row mt-2">
              	<div class="col">
              		<label for="" class="form-label">Normal Download Link</label>
              		<input type="text" name="normalDl" class="form-control ${ not empty error5 ? 'is-invalid' : '' }" value="${ movie.normalDl }"/>
              		<div class="invalid-feedback">
				        ${ error5 }
				  </div>
              	</div>
              	<div class="col">
              		<label for="" class="form-label">Premium Download Link</label>
              		<input type="text" name="premiumDl" class="form-control ${ not empty error6 ? 'is-invalid' : '' }" value="${ movie.premiumDl }"/>
              		<div class="invalid-feedback">
				        ${ error6 }
				  </div>
              	</div>
              </div>
           	  <div class="row mt-2">
           		   <div class="col">
	                <label for="description" class="form-label"
	                  >Movie Description</label
	                >
	                <textarea
	                  name="description"
	                  id="description"
	                  cols="30"
	                  rows="5"
	                  class="form-control ${ not empty error7 ? 'is-invalid' : '' }"
	                >${ movie.description }</textarea>
	                <div class="invalid-feedback">
				        ${ error7 }
				  </div>
	              </div>
	              <div class="col">
		              <label class="form-label"
		                  >Movie Genres
		               </label>
	              		<select class="form-select  ${ not empty error8 ? 'is-invalid' : '' }" multiple="multiple" name="genres">
							<c:forEach items="${ allGenres }" var="g">
								<option value="${ g.id }" ${ genres.contains(g) ? 'selected' : '' }>${ g.name }</option>
							</c:forEach>
						</select>
						<div class="invalid-feedback">
					        ${ error8 }
					  </div>
		            <div class="mt-4 pt-2 float float-end">
		                <button class="btn btn-success" type="submit">${ not empty movie.id ? 'Update' : 'Add' } Movie</button>
	              	</div>
	              </div>
              </div>
              <div class="row" style="margin-top: -45px;'">
					<div class="col-6">
						<div class="">
		              		<label for="" class="form-label">Episode</label>
		              		<input type="number" name="episodes" class="form-control" value="${ movie.episodes }" />
			            </div>
					</div>
              </div>
            </form>
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
