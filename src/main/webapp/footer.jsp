<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <footer class="bg-dark text-center text-white mt-5" style="width: 100%">
      <div class="container p-4">
        <section class="mb-4">
          <p>
            TEEPO is a Free Movies streaming site with zero ads. We let you
            watch movies online without having to register or paying, with over
            10000 movies and TV-Series. You can also Download full movies from
            TEEPO and watch it later if you want. If you want to contact us.
          </p>
          <p>
            Visit :
            <a
              href="https://twitter.com/i/flow/login"
              target="_blank"
              class="text-white"
              ><i class="fa-brands fa-twitter-square"></i
            ></a>
            <a
              href="https://www.facebook.com/channelmyamar"
              target="_blank"
              class="text-white"
              ><i class="fa-brands fa-facebook-square"></i
            ></a>
            <a
              href="https://www.instagram.com/"
              target="_blank"
              class="text-white"
              ><i class="fa-brands fa-instagram-square"></i
            ></a>
            <a href="https://discord.com/" target="_blank" class="text-white"
              ><i class="fa-brands fa-discord"></i
            ></a>
          </p>
        </section>
        <div class="input-group ms-5">
        <c:url value="/suggestion/add" var="add"></c:url>
         <form action="${ add }" method="post">
         	<div class="d-flex justify-content-center align-items-center ms-5">
         		<c:if test="${ not empty loginUser }">
         			<input type="hidden" name="userId" value="${ not empty loginUser ? loginUser.id : 0}" />
         			<textarea cols="30" name="feedback" rows="1" class="form-control me-2 ms-5" style="width: 900px;max-height: 100px">Suggest Here...</textarea>
		          <button
		            class="btn btn-danger"
		            type="submit"
		            id="button-addon1"
		          >
		            <i class="fa-solid fa-paper-plane"></i>
		          </button>
         	
         		</c:if>
         	</div>
         </form>
        </div>
      </div>
    </footer>