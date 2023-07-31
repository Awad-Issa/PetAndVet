<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Profile Page</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
</head>
<body>


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
                <li class="nav-item"><a class="nav-link" href="/aboutUs">About Us</a></li>

                <%--                <li class="nav-item dropdown">--%>
                <%--                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button"--%>
                <%--                       data-bs-toggle="dropdown" aria-expanded="false">${user.userName}</a>--%>
                <%--                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">--%>
                <%--                        <li><a class="dropdown-item" href="/profilePage">Profile Page</a></li>--%>
                <%--                        <li><a class="dropdown-item" href="/logout">Logout</a></li>--%>


                <%--                        <li>--%>
                <%--                            <hr class="dropdown-divider"/>--%>
                <%--                        </li>--%>
                <%--                        <li><a class="dropdown-item" href="#!">Admin</a></li>--%>

                <%--                    </ul>--%>
                <%--                </li>--%>
                <%--            </ul>--%>
                <%--            <form class="d-flex">--%>
                <%--                <button class="btn btn-outline-dark" type="submit">--%>
                <%--                    <i class="bi-cart-fill me-1"></i>--%>
                <%--                    Cart--%>
                <%--                    <span class="badge bg-dark text-white ms-1 rounded-pill">0</span>--%>
                <%--                </button>--%>
                <%--            </form>--%>
        </div>
    </div>
</nav>
<!-- Header-->
<header class="bg-dark py-5" style="background-image:  !important;">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Pet<span style="color: #809842" >And</span>Vet </h1>
            <p class="lead fw-normal text-white-50 mb-0">Enjoy in our website</p>
        </div>
    </div>
</header>

<section style="background-color: #eee;">
    <div class="container py-5">
<%--        <div class="row">--%>
<%--            <div class="col">--%>
<%--                <nav aria-label="breadcrumb" class="bg-light rounded-3 p-3 mb-4">--%>
<%--                    <ol class="breadcrumb mb-0">--%>
<%--                        <li class="breadcrumb-item"><a href="#">Home</a></li>--%>
<%--                        <li class="breadcrumb-item"><a href="#">User</a></li>--%>
<%--                        <li class="breadcrumb-item active" aria-current="page">User Profile</li>--%>
<%--                    </ol>--%>
<%--                </nav>--%>
<%--            </div>--%>
<%--        </div>--%>
    <br>
    <br>
    <br>
        <div class="row">
            <div class="col-lg-4">
                <div class="card mb-4">
                    <div class="card-body text-center">
                        <img src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-chat/ava3.webp" alt="avatar"
                             class="rounded-circle img-fluid" style="width: 150px;">
                        <h5 class="my-3">${user.userName}</h5>
<%--                        <p class="text-muted mb-1">Full Stack Developer</p>--%>
<%--                        <p class="text-muted mb-4">Bay Area, San Francisco, CA</p>--%>
                        <div class="d-flex justify-content-center mb-2">
<%--                            <button type="button" class="btn btn-primary">Follow</button>--%>
<%--                            <button type="button" class="btn btn-outline-primary ms-1">Message</button>--%>
                        </div>
                    </div>
                </div>
<%--                <div class="card mb-4 mb-lg-0">--%>
<%--                    <div class="card-body p-0">--%>
<%--                        <ul class="list-group list-group-flush rounded-3">--%>
<%--                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">--%>
<%--                                <i class="fas fa-globe fa-lg text-warning"></i>--%>
<%--                                <p class="mb-0">https://mdbootstrap.com</p>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">--%>
<%--                                <i class="fab fa-github fa-lg" style="color: #333333;"></i>--%>
<%--                                <p class="mb-0">mdbootstrap</p>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">--%>
<%--                                <i class="fab fa-twitter fa-lg" style="color: #55acee;"></i>--%>
<%--                                <p class="mb-0">@mdbootstrap</p>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">--%>
<%--                                <i class="fab fa-instagram fa-lg" style="color: #ac2bac;"></i>--%>
<%--                                <p class="mb-0">mdbootstrap</p>--%>
<%--                            </li>--%>
<%--                            <li class="list-group-item d-flex justify-content-between align-items-center p-3">--%>
<%--                                <i class="fab fa-facebook-f fa-lg" style="color: #3b5998;"></i>--%>
<%--                                <p class="mb-0">mdbootstrap</p>--%>
<%--                            </li>--%>
<%--                        </ul>--%>
<%--                    </div>--%>
<%--                </div>--%>
            </div>
            <div class="col-lg-8">
                <div class="card mb-4">
                    <div class="card-body">
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Full Name</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${user.userName}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Email</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${user.email}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Mobile</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${user.phoneNumber}</p>
                            </div>
                        </div>
                        <hr>
                        <div class="row">
                            <div class="col-sm-3">
                                <p class="mb-0">Address</p>
                            </div>
                            <div class="col-sm-9">
                                <p class="text-muted mb-0">${user.location}</p>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <br>
                    <br>
                    <br>
<%--                    <div class="col-md-6">--%>
<%--                        <div class="card mb-4 mb-md-0">--%>
<%--                            <div class="card-body">--%>
<%--                                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status--%>
<%--                                </p>--%>
<%--                                <p class="mb-1" style="font-size: .77rem;">Web Design</p>--%>
<%--                                <div class="progress rounded" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>--%>
<%--                                <div class="progress rounded" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>--%>
<%--                                <div class="progress rounded" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>--%>
<%--                                <div class="progress rounded" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>--%>
<%--                                <div class="progress rounded mb-2" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="col-md-6">--%>
<%--                        <div class="card mb-4 mb-md-0">--%>
<%--                            <div class="card-body">--%>
<%--                                <p class="mb-4"><span class="text-primary font-italic me-1">assigment</span> Project Status--%>
<%--                                </p>--%>
<%--                                <p class="mb-1" style="font-size: .77rem;">Web Design</p>--%>
<%--                                <div class="progress rounded" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 80%" aria-valuenow="80"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                                <p class="mt-4 mb-1" style="font-size: .77rem;">Website Markup</p>--%>
<%--                                <div class="progress rounded" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 72%" aria-valuenow="72"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                                <p class="mt-4 mb-1" style="font-size: .77rem;">One Page</p>--%>
<%--                                <div class="progress rounded" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 89%" aria-valuenow="89"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                                <p class="mt-4 mb-1" style="font-size: .77rem;">Mobile Template</p>--%>
<%--                                <div class="progress rounded" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 55%" aria-valuenow="55"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                                <p class="mt-4 mb-1" style="font-size: .77rem;">Backend API</p>--%>
<%--                                <div class="progress rounded mb-2" style="height: 5px;">--%>
<%--                                    <div class="progress-bar" role="progressbar" style="width: 66%" aria-valuenow="66"--%>
<%--                                         aria-valuemin="0" aria-valuemax="100"></div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
                </div>
            </div>
        </div>
    </div>
</section>
<footer class="py-5 bg-dark">
<div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>

</body>
</html>
