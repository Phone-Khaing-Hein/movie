<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
      crossorigin="anonymous"
    />
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
</head>
<body>
	<c:import url="adminHeader.jsp"></c:import>
	<div class="d-flex mt-2 mb-2">
     <c:import url="adminSidebar.jsp"></c:import>
      <div class="w-75 rounded me-2 bg-dark p-4">
        <div class="d-flex justify-content-between align-items-center">
          <h3 class="text-white mb-0">Payments List</h3>
        </div>
        <table id="movieTable" class="table table-striped text-white">
          <thead>
            <tr>
              <th>#</th>
              <th>Name</th>
              <th>Months</th>
              <th>Control</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td class="text-white">1</td>
              <td class="text-white">Rimuru Tempest</td>
              <td class="text-white">3</td>
              <td>
                <a href="" class="btn btn-secondary btn-sm">Detail</a>
                <a href="movie-add.html" class="btn btn-warning btn-sm">Edit</a>
                <a href="" class="btn btn-danger btn-sm">Delete</a>
              </td>
            </tr>
            <tr>
              <td class="text-white">2</td>
              <td class="text-white">Rimuru Tempest 2</td>
              <td class="text-white">1</td>
              <td>
                <a href="" class="btn btn-secondary btn-sm">Detail</a>
                <a href="" class="btn btn-warning btn-sm">Edit</a>
                <a href="" class="btn btn-danger btn-sm">Delete</a>
              </td>
            </tr>
            <tr>
              <td class="text-white">3</td>
              <td class="text-white">Rimuru Tempest 3</td>
              <td class="text-white">6</td>
              <td>
                <a href="" class="btn btn-secondary btn-sm">Detail</a>
                <a href="" class="btn btn-warning btn-sm">Edit</a>
                <a href="" class="btn btn-danger btn-sm">Delete</a>
              </td>
            </tr>
            <tr>
              <td class="text-white">1</td>
              <td class="text-white">Rimuru Tempest</td>
              <td class="text-white">1</td>
              <td>
                <a href="" class="btn btn-secondary btn-sm">Detail</a>
                <a href="" class="btn btn-warning btn-sm">Edit</a>
                <a href="" class="btn btn-danger btn-sm">Delete</a>
              </td>
            </tr>
            <tr>
              <td class="text-white">1</td>
              <td class="text-white">Rimuru Tempest</td>
              <td class="text-white">1</td>
              <td>
                <a href="" class="btn btn-secondary btn-sm">Detail</a>
                <a href="" class="btn btn-warning btn-sm">Edit</a>
                <a href="" class="btn btn-danger btn-sm">Delete</a>
              </td>
            </tr>
            <tr>
              <td class="text-white">1</td>
              <td class="text-white">Rimuru Tempest</td>
              <td class="text-white">3</td>
              <td>
                <a href="" class="btn btn-secondary btn-sm">Detail</a>
                <a href="" class="btn btn-warning btn-sm">Edit</a>
                <a href="" class="btn btn-danger btn-sm">Delete</a>
              </td>
            </tr>
          </tbody>
        </table>
      </div>
    </div>
</body>
</html>