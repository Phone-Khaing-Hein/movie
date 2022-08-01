<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
	<div class="sidebar w-25 me-2 rounded ms-2 bg-dark h-100 p-1" style="position: fixed;height: 85vh !important;">
        <div
          class="d-flex align-items-center justify-content-center flex-column"
        >
        	<c:url value="/image/profile/${ adminUser.photo }" var="image"/>
          <img
          	src="${ image }"
          	height="200"
            alt=""
            class="rounded w-75 mt-2"
          />
          <h4 class="text-white mb-1">${ adminUser.name }</h4>
          <c:url value="/admin/dashboard" var="dashboard"/>
          <a href="${ dashboard }" class="w-75 btn btn-outline-light">Dashboard</a>
          <c:url value="/admin/movie/list" var="movieList"/>
          <a
            href="${ movieList }"
            class="w-75 btn btn-outline-light mt-3"
            >Movie Management</a
          >
          <c:url value="/admin/genre/list" var="genreList"/>
          <a
            href="${ genreList }"
            class="w-75 btn btn-outline-light mt-3"
            >Genre Management</a
          >
           <c:url value="/admin/user/list" var="userList"/>
          <a href="${ userList }" class="w-75 btn btn-outline-light mt-3"
            >User Management</a
          >
          <c:url value="/admin/suggestion/list" var="feedbackList"/>
          <a
            href="${ feedbackList }"
            class="w-75 btn btn-outline-light mt-3"
            >Feedback Management</a
          >
          <c:url value="/admin/payment/list" var="paymentList"/>
          <a
            href="${ paymentList }"
            class="w-75 btn btn-outline-light mt-3"
            >Payment Management</a
          >
          <c:url value="/admin/logout" var="logout"/>
          <a
            href="${ logout }"
            class="w-75 btn btn-danger mt-3"
            >Logout</a
          >
        </div>
      </div>