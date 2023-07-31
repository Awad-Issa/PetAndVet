<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <title>Shop Homepage - Start Bootstrap Template</title>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
    <!-- Bootstrap icons-->
    <link href="css/styles.css" rel="stylesheet" />

<%--    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.14.7/dist/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>--%>
<%--    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>--%>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">



    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
</head>
<body>
<!-- Navigation-->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
    <div class="container px-4 px-lg-5">
        <a class="navbar-brand" href="#!">Start Bootstrap</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation"><span class="navbar-toggler-icon"></span></button>
        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
                <li class="nav-item"><a class="nav-link active" aria-current="page" href="#!">Home</a></li>
                <li class="nav-item"><a class="nav-link" href="#!">About</a></li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" id="navbarDropdown" href="#" role="button" data-bs-toggle="dropdown" aria-expanded="false">Shop</a>
                    <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#!">All Products</a></li>
                        <li><hr class="dropdown-divider" /></li>
                        <li><a class="dropdown-item" href="#!">Popular Items</a></li>
                        <li><a class="dropdown-item" href="#!">New Arrivals</a></li>
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
<header class="bg-dark py-5" style="background-image:url('https://images.pexels.com/photos/956981/milky-way-starry-sky-night-sky-star-956981.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2') !important;">
    <div class="container px-4 px-lg-5 my-5">
        <div class="text-center text-white">
            <h1 class="display-4 fw-bolder">Shop in style</h1>
            <p class="lead fw-normal text-white-50 mb-0">With this shop hompeage template</p>
        </div>
    </div>
</header>
<!-- Section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">



<%--            <form:form modelAttribute="pet" method="post" action="/pets/new">--%>

    <form action="/pets/new"modelAttribute="pet" method="POST">


        <input type="hidden" name="user"value="${user_id}">

        <label >Name</label>
        <input type="text" name="name">

        <label >Age</label>
        <input type="text" name="age">

        <label >Gender</label>
        <select name="gender">
            <option vvalue="female"/>Female</option>
            <option vvalue="male">Male</option>
        </select>

        <label >Breed</label>
        <select name="breed">

<%--            <option items="${breeds}" itemLabel="name" itemValue="id"/>--%>
            <option value=""></option>

        </select>


    </form>

<%--                <h1>enter pet information</h1>--%>
<%--                <input type="hidden" value="${user_id}" name="user"/>--%>

<%--                <form:label path="name">name:</form:label>--%>
<%--                <form:input path="name"/>--%>
<%--                <form:errors path="name" cssClass="error"/>--%>

<%--                <form:label path="age">age:</form:label>--%>
<%--                <form:input path="age"/>--%>
<%--                <form:errors path="age" cssClass="error"/>--%>

<%--                <form:label path="gender">gender:</form:label>--%>
<%--                <form:select path="gender">--%>
<%--                    <form:option value="female"/>--%>
<%--                    <form:option value="male"/>--%>
<%--                </form:select>--%>
<%--                <form:errors path="gender"/>--%>



<%--                <form:label path="breed">breed:</form:label>--%>
<%--                <form:select path="breed">--%>
<%--                    <form:options items="${breeds}" itemLabel="name" itemValue="id"/>--%>
<%--                </form:select>--%>
<%--                <form:errors path="breed" cssClass="error"/>--%>

<%--                <form:label path="location">location:</form:label>--%>
<%--                <form:select path="location">--%>
<%--                    <form:option value="select a location"/>--%>
<%--                    <form:option value="ramallah"/>--%>
<%--                    <form:option value="nablus"/>--%>
<%--                    <form:option value="hebron"/>--%>
<%--                    <form:option value="jerusalem"/>--%>
<%--                </form:select>--%>
<%--                <form:errors path="location" style="color:red;"/>--%>

<%--                <form:label path="status">status:</form:label>--%>
<%--                <form:select path="status">--%>
<%--                    <form:option value="status"/>--%>
<%--                    <form:option value="for adoption"/>--%>
<%--                    <form:option value="adopted"/>--%>
<%--                </form:select>--%>
<%--                <form:errors path="status" style="color:red;"/>--%>

<%--                <form:label path="description">description:</form:label>--%>
<%--                <form:input path="description"/>--%>
<%--                <form:errors path="description" cssClass="error"/>--%>

<%--                <input type="submit" value="add post"/>--%>
<%--            </form:form>--%>






        </div>
    </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
</footer>
<!-- Bootstrap core JS-->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>
