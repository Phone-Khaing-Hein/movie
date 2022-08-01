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
        <h3 class="text-white">Admin Profile</h3>
        <c:url value="/admin/profile/update" var="updateProfile"/>
        <form action="${ updateProfile }" method="post">
        	<c:if test="${ not empty adminUser.id }">
        		<input type="hidden" value="${ adminUser.id }" name="id" />
        	</c:if>
        	<div class="row mt-3">
	        	<div class="col-6">
	        		<label class="text-white">Name</label>
	        		<input type="text" class="form-control ${ not empty error2 ? 'is-invalid' : '' }" value="${ adminUser.name }" name="name" />
	        		<div class="invalid-feedback">
					     ${ error2 }
					 </div>
	        	</div>
	        </div>
	        <div class="row mt-3">
	        	<div class="col-6">
	        		<label class="text-white">Email</label>
	        		<input type="text" class="form-control ${ not empty error1 ? 'is-invalid' : '' }" value="${ adminUser.email }" name="email" />
	        			<div class="invalid-feedback">
					        ${ error1 }
					  	</div>
	        	</div>
	        </div>
	        <div class="row mt-3">
	        	<div class="col-6">
	        		<button type="submit" class="btn btn-success">Update Profile</button>
	        	</div>
	        </div>
        </form>
      </div>
      <hr class="bg-white" />
    </div>
    
    <div class="d-flex mt-2 mb-2" >
      <div class="w-75 rounded me-2 bg-dark p-4" style="margin-left: 390px !important;">
        <h3 class="text-white">Change Password</h3>
        <c:url value="/admin/password-change" var="passwordChange"/>
        <form action="${ passwordChange }" method="post">
        	<div class="row">
	        	<div class="col-6">
	        		<label class="text-white">Old Password</label>
	        		<input type="password" class="form-control ${ not empty error1 ? 'is-invalid' : '' }" name="oldPassword"/>
	        		<div class="invalid-feedback">
					        ${ error1 }
					  	</div>
	        	</div>
	        </div>
	        <div class="row mt-3">
	        	<div class="col-6">
	        		<label class="text-white">New Password</label>
	        		<input type="password" class="form-control ${ not empty error2 || not empty error5 ? 'is-invalid' : '' }" name="password"/>
	        		<div class="invalid-feedback">
					        ${ error2 }
					  	</div>
					  	<div class="invalid-feedback">
					        ${ error5 }
					  	</div>
	        	</div>
	        </div>
	        <div class="row mt-3">
	        	<div class="col-6">
	        		<label class="text-white">Confirm Password</label>
	        		<input type="password" class="form-control ${ not empty error3 || not empty error4 ? 'is-invalid' : '' }" name="cpassword"/>
	        		<div class="invalid-feedback">
					        ${ error3 }
					  	</div>
					  	<div class="invalid-feedback">
					        ${ error4 }
					  	</div>
	        	</div>
	        </div>
	        <div class="row mt-3">
	        	<div class="col-6">
	        		<a href="" class="btn btn-success">Change Password</a>
	        	</div>
	        </div>
        </form>
      </div>
      <hr class="bg-white" />
    </div>
    

    <script
      src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
      integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
      crossorigin="anonymous"
    ></script>
  </body>
</html>
