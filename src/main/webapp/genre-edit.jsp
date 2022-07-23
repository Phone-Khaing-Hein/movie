<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Genre Edit</title>
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
          <h3 class="text-white mb-0">Genre ${ not empty genre.id ? 'Update' : 'Add' }</h3>
          <c:if test="${ not empty message }">
          	<p class="alert alert-success" role="alert">
			  ${ message }
			</p>
          </c:if>
          <c:url value="/admin/genre/list" var="movieList"></c:url>
          <a href="${ movieList }" class="btn btn-success">Genre List</a>
        </div>
        <div class="row ms-2">
          <div class="col-12">
          <c:url value="/admin/genre/edit" var="addGenre"></c:url>
            <form action="${ addGenre }" method="post" class="text-white" enctype="multipart/form-data">
            	<c:if test="${ not empty genre.id }">
            		<input type="hidden" name="id" value="${ genre.id }" />
            	</c:if>
              <div class="row">
              	<div class="col-6">
              	  <div>
	                <label for="name" class="form-label">Genre Name</label>
	                <div class="d-flex gap-3 text-nowrap">
	                	<input type="text" id="name" name="name" class="form-control ${ not empty error1 ? 'is-invalid' : '' }" value="${ genre.name }" />
		                <div>
				          <button class="btn btn-success" type="submit">${ not empty genre.id ? 'Update' : 'Add' } Genre</button>
			       	  	</div>
	                </div>
	                <div class="invalid-feedback">
				        ${ error1 }
				     </div>
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
