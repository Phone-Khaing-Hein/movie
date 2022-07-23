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
          <h3 class="text-white mb-0">User ${ not empty user.id ? 'Update' : 'Add' }</h3>
          <c:if test="${ not empty message }">
          	<p class="alert alert-success" role="alert">
			  ${ message }
			</p>
          </c:if>
          <c:url value="/admin/user/list" var="userList"></c:url>
          <a href="${ userList }" class="btn btn-success">User List</a>
        </div>
        <div class="row ms-2">
          <div class="col-12">
          <c:url value="/admin/user/edit" var="addUser"></c:url>
            <form action="${ addUser }" method="post" class="text-white" enctype="multipart/form-data">
              <c:if test="${ not empty user.id }">
              	<input type="hidden" name="id" value="${ user.id }" />
              	<input type="hidden" name="photo" value="${ user.photo }" />
              </c:if>
              <div class="row">
              	<div class="col">
              	  <div>
	                <label for="name" class="form-label">Name</label>
	                <input type="text" id="name" name="name" class="form-control ${ not empty error1 ? 'is-invalid' : '' }" value="${ user.name }" readonly="readonly"/>
	                <div class="invalid-feedback">
				        ${ error1 }
				     </div>
	              </div>
              </div>
	              <div class="col-6">
              		<label class="form-label">Role</label>
              		<select name="role" class="form-select">
              			<option value="Admin" ${ user.role eq 'Admin' ? 'selected' : '' }>Admin</option>
              			<option value="Free" ${ user.role eq 'Free' ? 'selected' : '' }>Free</option>
              			<option value="Premium" ${ user.role eq 'Premium' ? 'selected' : '' }>Premium</option>
              		</select> 
              		<div class="invalid-feedback">
				        ${ error5 }
				  </div>
              </div>
              </div>
              <div class="row mt-2">
              	<div class="col">
              		<label for="" class="form-label">Email</label>
              		<input type="email" name="emil" class="form-control ${ not empty error3 ? 'is-invalid' : '' }" value="${ user.email }" readonly="readonly"/>
              		<div class="invalid-feedback">
				        ${ error3 }
				  </div>
              	</div>
              	<div class="col">
              		<label for="" class="form-label">Password</label>
              		<input type="text" name="trailer" class="form-control ${ not empty error4 ? 'is-invalid' : '' }" value="${ user.password }" readonly="readonly"/>
              		<div class="invalid-feedback">
				        ${ error4 }
				  </div>
              	</div>
              </div>
              	
              	<div class="mt-4 pt-2 float float-end">
		          <button class="btn btn-success" type="submit">${ not empty user.id ? 'Update' : 'Add' } User</button>
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
