<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

<html>
<head>
    <title>Home</title>
  <link rel="stylesheet" href="css/home.css">
</head>
<body style="background-color: white !important;">

<header class="main-header" style="background-color:#82905f; height: 50%;background-color: #82905f;top: 0px; ">
  <div class="container">
    <nav class="navbar navbar-expand-lg main-nav px-0">
      <a class="navbar-brand" href="/home">
        <h1 style="color:#e58c00" >Pet<span style="color: #ffc980">VET</span></h1>
      </a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#mainMenu" aria-controls="mainMenu" aria-expanded="false" aria-label="Toggle navigation">
        <span class="icon-bar icon-bar-1"></span>
        <span class="icon-bar icon-bar-2"></span>
        <span class="icon-bar icon-bar-3"></span>
      </button>
      <div class="collapse navbar-collapse" id="mainMenu">
        <ul class="navbar-nav ml-auto text-uppercase f1">
          <li>
            <a href="/home" class="active active-first">home</a>
          </li>
          <li>
            <a href="#about">about us</a>
          </li>
          <li>
            <a href="#service">services</a>
          </li>
          <li>
            <a href="/logout">Logout</a>
          </li>
          <li>
            <a href="#team">team</a>
          </li>
          <li>
            <a href="#testimony">testimonils</a>
          </li>
          <li>
            <a href="#contact">contact</a>
          </li>
        </ul>
      </div>
    </nav>
    <br>
    <h1 style="    font-family: Gabriola;
    color: floralwhite;color:#ffdc95">Welcome, <c:out value="${user.userName}"/> !</h1>
  </div>
  <!-- /.container -->
</header>

</body>
</html>
