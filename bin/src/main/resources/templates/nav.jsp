<!DOCTYPE html>
<html>
  <head>
    <meta charset="ISO-8859-1" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link rel="stylesheet" href="Nav.css" type="text/css" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"/>
    <link href="https://fonts.googleapis.com/css2?family=Anton&display=swap" rel="stylesheet">
    <title>Teepo</title>
  </head>
  <body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark d-flex">
      <div class="container-fluid">
        <a class="navbar-brand " href="Home.jsp" style="color:red; font-family: 'Anton', sans-serif; font-size: 35px">TEEPO</a>
        <button
          class="navbar-toggler"
          type="button"
          data-bs-toggle="collapse"
          data-bs-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
          <ul class="navbar-nav me-auto mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link" href="Home.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Movie.jsp">Movies</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Series.jsp">Series</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="Trend.jsp">Trend</a>
            </li>
            <li>
              <div class="dropdown">
                <button
                  class="btn btn-danger dropdown-toggle"
                  type="button"
                  id="dropdownMenuButton1"
                  data-bs-toggle="dropdown"
                  aria-expanded="false"
                >
                  Genre
                </button>
                <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                  <li><a class="dropdown-item" href="#">Action</a></li>
                  <li><a class="dropdown-item" href="#">Comedy</a></li>
                  <li><a class="dropdown-item" href="#">Thriller</a></li>
                  <li><a class="dropdown-item" href="#">Historical</a></li>
                  <li><a class="dropdown-item" href="#">Drama</a></li>
                  <li><a class="dropdown-item" href="#">Documentary</a></li>
                  <li><a class="dropdown-item" href="#">Adventure</a></li>
                </ul>
              </div>
            </li>
            </ul>
            </div>
        <form class="form-inline my-2 my-lg-0">
          <input
            class="form-control mr-sm-2"
            type="search"
            placeholder="Enter the Title"
            aria-label="Search"
          />
          
          
        </form>
        <div class="btn-group dropstart">
            <button
              type="button"
              class="btn btn-outline-danger dropdown-toggle"
              data-bs-toggle="dropdown"
              aria-expanded="false"
            >
              Username
            </button>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="Profile.jsp"><i class="fa-solid fa-user mr-2"></i>Profile</a></li>
              <li><a class="dropdown-item text-danger" href="Playlist.jsp"><i class="fa-solid fa-heart mr-2"></i>Favorite</a></li>
              <li><a class="dropdown-item" href="Login.jsp"><i class="fa-solid fa-arrow-right-to-bracket mr-2"></i>Login</a></li>
              <li><a class="dropdown-item text-warning" href="Premium.jsp"><i class="fa-solid fa-crown mr-2"></i>Premium</a></li>
              <li><a class="dropdown-item text-danger" href=""><i class="fa-solid fa-arrow-right-from-bracket mr-2"></i>Logout</a></li>
            </ul>
          </div>
      </div>
    </nav>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js"></script>
  </body>
</html>
