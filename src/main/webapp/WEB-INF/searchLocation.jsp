<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"/>
  <meta name="description" content=""/>
  <meta name="author" content=""/>
  <title>Shop Homepage - Start Bootstrap Template</title>
  <!-- Favicon-->
  <link rel="icon" type="image/x-icon" href="assets/favicon.ico"/>
  <!-- Bootstrap icons-->
  <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css"
        rel="stylesheet"/>
  <!-- Core theme CSS (includes Bootstrap)-->
  <link href="css/styles.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <!-- Core theme JS-->
  <script src="js/scripts.js"></script>
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container px-4 px-lg-5">
    <a class="navbar-brand" href="/home">Pet
      <apan style="color: #809842">And</apan>
      Vet</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"
            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"
            aria-expanded="false" aria-label="Toggle navigation"><span
            class="navbar-toggler-icon"></span></button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
        <li class="nav-item"><a class="nav-link active" aria-current="page" href="/home">Home</a>
        </li>
        <li class="nav-item"><a class="nav-link" href="#!">About</a></li>

        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"
             data-bs-toggle="dropdown" aria-expanded="false">${user.userName}</a>
          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
            <li><a class="dropdown-item" href="/profilePage">Profile Page</a></li>
            <li><a class="dropdown-item" href="/logout">Logout</a></li>


            <li>
              <hr class="dropdown-divider"/>
            </li>
            <li><a class="dropdown-item" href="#!">Admin</a></li>

          </ul>
        </li>
      </ul>
      <form class="d-flex">
        <button class="btn btn-outline-dark" type="submit">
          <i class="bi-cart-fill me-1"></i>
          Cart
          <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>
        </button>
      </form>
    </div>
  </div>
</nav>
<!-- Header-->
<header class="bg-dark py-5">
  <div class="container px-4 px-lg-5 my-5">
    <div class="text-center text-white">
      <h1 class="display-4 fw-bolder">Shop in style</h1>
      <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
    </div>
  </div>
</header>


<%--<nav class="navbar navbar-expand-lg navbar-light bg-light">--%>
<%--  <div class="container px-4 px-lg-5">--%>

<%--    <button class="navbar-toggler" type="button" data-bs-toggle="collapse"--%>
<%--            data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent"--%>
<%--            aria-expanded="false" aria-label="Toggle navigation"><span--%>
<%--            class="navbar-toggler-icon"></span></button>--%>
<%--    <div class="collapse navbar-collapse" id="navbarSupportedContent">--%>
<%--      <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">--%>

<%--        <li class="nav-item dropdown">--%>
<%--          <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"--%>
<%--             data-bs-toggle="dropdown" aria-expanded="false">Shop</a>--%>
<%--          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--            <li><a class="dropdown-item" href="#!">All Products</a></li>--%>
<%--            <li>--%>
<%--              <hr class="dropdown-divider"/>--%>
<%--            </li>--%>
<%--            <li><a class="dropdown-item" href="#!">Popular Items</a></li>--%>
<%--            <li><a class="dropdown-item" href="#!">New Arrivals</a></li>--%>
<%--          </ul>--%>
<%--        </li>--%>


<%--        <li class="nav-item dropdown">--%>
<%--          <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"--%>
<%--             data-bs-toggle="dropdown" aria-expanded="false">Breed</a>--%>
<%--          <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
<%--            <c:forEach items="${breed}" var="breeds">--%>

<%--              <li><a class="dropdown-item" href="#!">${breeds.name}</a></li>--%>
<%--            </c:forEach>--%>

<%--          </ul>--%>
<%--        </li>--%>

<%--        <li class="nav-item"><a class="nav-link" href="/favorite">Favorite</a></li>--%>
<%--        <li class="nav-item"><a class="nav-link" href="/pets/new">Add Pet</a></li>--%>

<%--        <li class="nav-item"><a class="nav-link" href="/pets/location">Search in ${user.location}</a></li>--%>
<%--      </ul>--%>
<%--      </form>--%>
<%--    </div>--%>
<%--  </div>--%>
<%--</nav>--%>



<div style="display: flex; justify-content: space-evenly">







</div>




<!-- Section-->
<section class="py-5">
  <div class="container px-4 px-lg-5 mt-5">
    <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">

      <c:forEach items="${pets}" var="pet">


        <div class="col mb-5">
          <div class="card h-100">
            <!-- Product image-->
            <img class="card-img-top" src="${pet.image}" alt="..."/>
            <!-- Product details-->
            <div class="card-body p-4">
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">${pet.name}</h5>
                <!-- Product price-->
                  ${pet.location}
              </div>
            </div>
            <!-- Product actions-->
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
              <div class="text-center"><a class="btn btn-outline-dark mt-auto"
                                          href="/pets/${pet.id}">Adopt</a></div>
            </div>
          </div>
        </div>

      </c:forEach>


    </div>
  </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
  <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website
    2023</p></div>
</footer>
<!-- Bootstrap core JS-->

</body>
</html>
