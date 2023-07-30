<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %><!DOCTYPE html>
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
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css" rel="stylesheet" />
    <!-- Core theme CSS (includes Bootstrap)-->
    <link href="css/styles.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.3.1/dist/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>
<body>


<%-- integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anon--%>
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
                <li class="nav-item"><a class="nav-link" href="/aboutUs">About Us</a></li>

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
<!-- Section-->
<section class="py-5">
    <div class="container px-4 px-lg-5 mt-5">
        <div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
            <%--            <div class="col mb-5">--%>
            <%--                <div class="card h-100">--%>
            <%--                    <!-- Product image-->--%>
            <%--                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />--%>
            <%--                    <!-- Product details-->--%>
            <%--                    <div class="card-body p-4">--%>
            <%--                        <div class="text-center">--%>
            <%--                            <!-- Product name-->--%>
            <%--                            <h5 class="fw-bolder">Fancy Product</h5>--%>
            <%--                            <!-- Product price-->--%>
            <%--                            $40.00 - $80.00--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                    <!-- Product actions-->--%>
            <%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
            <%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <%--            <div class="col mb-5">--%>
            <%--                <div class="card h-100">--%>
            <%--                    <!-- Sale badge-->--%>
            <%--                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>--%>
            <%--                    <!-- Product image-->--%>
            <%--                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />--%>
            <%--                    <!-- Product details-->--%>
            <%--                    <div class="card-body p-4">--%>
            <%--                        <div class="text-center">--%>
            <%--                            <!-- Product name-->--%>
            <%--                            <h5 class="fw-bolder">Special Item</h5>--%>
            <%--                            <!-- Product reviews-->--%>
            <%--                            <div class="d-flex justify-content-center small text-warning mb-2">--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                            </div>--%>
            <%--                            <!-- Product price-->--%>
            <%--                            <span class="text-muted text-decoration-line-through">$20.00</span>--%>
            <%--                            $18.00--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                    <!-- Product actions-->--%>
            <%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
            <%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <%--            <div class="col mb-5">--%>
            <%--                <div class="card h-100">--%>
            <%--                    <!-- Sale badge-->--%>
            <%--                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>--%>
            <%--                    <!-- Product image-->--%>
            <%--                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />--%>
            <%--                    <!-- Product details-->--%>
            <%--                    <div class="card-body p-4">--%>
            <%--                        <div class="text-center">--%>
            <%--                            <!-- Product name-->--%>
            <%--                            <h5 class="fw-bolder">Sale Item</h5>--%>
            <%--                            <!-- Product price-->--%>
            <%--                            <span class="text-muted text-decoration-line-through">$50.00</span>--%>
            <%--                            $25.00--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                    <!-- Product actions-->--%>
            <%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
            <%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>


<%--            <c:forEach items="${pets}" var="pet">--%>


<%--                <div class="col mb-5">--%>
<%--                    <div class="card h-100">--%>
<%--                        <!-- Product image-->--%>
<%--                        <img class="card-img-top" src="${pet.image}" alt="https://png.pngtree.com/template/20190629/ourmid/pngtree-pet-shop-logo-templatevector-illustration-icon-element---vector-image_223677.jpg"/>--%>
<%--                        <!-- Product details-->--%>
<%--                        <div class="card-body p-4">--%>
<%--                            <div class="text-center">--%>
<%--                                <!-- Product name-->--%>
<%--                                <h5 class="fw-bolder">${pet.name}</h5>--%>
<%--                                <!-- Product price-->--%>
<%--                                    ${pet.location}<br>--%>
<%--                                    ${pet.status}<br>--%>
<%--                                    ${pet.createdAt}--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                        <!-- Product actions-->--%>
<%--                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
<%--                            <div class="text-center"><a class="btn btn-outline-dark mt-auto"--%>
<%--                                                        href="/pets/${pet.id}">Adopt</a></div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>


<%--            </c:forEach>--%>
<div>
                <form:form modelAttribute="pet" method="post" action="/pets/new" cssStyle="    font-variant: small-caps;
    display: grid;
    color: darkcyan;">
                    <h1>Enter your Pet's information</h1>
                    <input type="hidden" value="${user_id}" name="user"/>

                    <form:label path="name">Name:</form:label>
                    <form:input path="name"/>
                    <form:errors path="name" cssClass="error"/><br>

                    <form:label path="age">Age:</form:label>
                    <form:input path="age"/>
                    <form:errors path="age" cssClass="error"/><br>

                    <form:label path="gender">Gender:</form:label>
                    <form:select path="gender">
                        <form:option value="female"/>
                        <form:option value="male"/>
                    </form:select>
                    <form:errors path="gender"/><br>

                    <form:label path="breed">Breed:</form:label>
                    <form:select path="breed">
                        <form:options items="${breeds}" itemLabel="name" itemValue="id"/>
                    </form:select>
                    <form:errors path="breed" cssClass="error"/><br>

                    <form:label path="location">Location:</form:label>
                    <form:select path="location">
                        <form:option value="Select a location"/>
                        <form:option value="Ramallah"/>
                        <form:option value="Nablus"/>
                        <form:option value="Hebron"/>
                        <form:option value="Jerusalem"/>
                    </form:select>
                    <form:errors path="location" style="color:red;"/><br>

                    <form:label path="status">Status:</form:label>
                    <form:select path="status">
                        <form:option value="status"/>
                        <form:option value="for adoption"/>
                        <form:option value="adopted"/>
                    </form:select>
                    <form:errors path="status" style="color:red;"/><br>

                    <form:label path="description">Description:</form:label>
                    <form:input path="description"/>
                    <form:errors path="description" cssClass="error"/>
                    <br>
                    <form:label path="image">Image:</form:label>
                    <form:input path="image"/>
                    <form:errors path="image" cssClass="error"/><br>

                    <input style="    background: #008b8b;
    border-radius: 15px;
    color: ivory;
    box-shadow: 0px 0px 8px 2px black;" type="submit" value="add post"/>
                </form:form>
</div>
            <%--            <div class="col mb-5">--%>
            <%--                <div class="card h-100">--%>
            <%--                    <!-- Sale badge-->--%>
            <%--                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>--%>
            <%--                    <!-- Product image-->--%>
            <%--                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />--%>
            <%--                    <!-- Product details-->--%>
            <%--                    <div class="card-body p-4">--%>
            <%--                        <div class="text-center">--%>
            <%--                            <!-- Product name-->--%>
            <%--                            <h5 class="fw-bolder">Sale Item</h5>--%>
            <%--                            <!-- Product price-->--%>
            <%--                            <span class="text-muted text-decoration-line-through">$50.00</span>--%>
            <%--                            $25.00--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                    <!-- Product actions-->--%>
            <%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
            <%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <%--            <div class="col mb-5">--%>
            <%--                <div class="card h-100">--%>
            <%--                    <!-- Product image-->--%>
            <%--                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />--%>
            <%--                    <!-- Product details-->--%>
            <%--                    <div class="card-body p-4">--%>
            <%--                        <div class="text-center">--%>
            <%--                            <!-- Product name-->--%>
            <%--                            <h5 class="fw-bolder">Fancy Product</h5>--%>
            <%--                            <!-- Product price-->--%>
            <%--                            $120.00 - $280.00--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                    <!-- Product actions-->--%>
            <%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
            <%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">View options</a></div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <%--            <div class="col mb-5">--%>
            <%--                <div class="card h-100">--%>
            <%--                    <!-- Sale badge-->--%>
            <%--                    <div class="badge bg-dark text-white position-absolute" style="top: 0.5rem; right: 0.5rem">Sale</div>--%>
            <%--                    <!-- Product image-->--%>
            <%--                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />--%>
            <%--                    <!-- Product details-->--%>
            <%--                    <div class="card-body p-4">--%>
            <%--                        <div class="text-center">--%>
            <%--                            <!-- Product name-->--%>
            <%--                            <h5 class="fw-bolder">Special Item</h5>--%>
            <%--                            <!-- Product reviews-->--%>
            <%--                            <div class="d-flex justify-content-center small text-warning mb-2">--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                            </div>--%>
            <%--                            <!-- Product price-->--%>
            <%--                            <span class="text-muted text-decoration-line-through">$20.00</span>--%>
            <%--                            $18.00--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <%--                    <!-- Product actions-->--%>
            <%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
            <%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
            <%--            </div>--%>
            <%--            <div class="col mb-5">--%>
            <%--                <div class="card h-100">--%>
            <%--                    <!-- Product image-->--%>
            <%--                    <img class="card-img-top" src="https://dummyimage.com/450x300/dee2e6/6c757d.jpg" alt="..." />--%>
            <%--                    <!-- Product details-->--%>
            <%--                    <div class="card-body p-4">--%>
            <%--                        <div class="text-center">--%>
            <%--                            <!-- Product name-->--%>
            <%--                            <h5 class="fw-bolder">Popular Item</h5>--%>
            <%--                            <!-- Product reviews-->--%>
            <%--                            <div class="d-flex justify-content-center small text-warning mb-2">--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                                <div class="bi-star-fill"></div>--%>
            <%--                            </div>--%>
            <%--                            <!-- Product price-->--%>
            <%--                            $40.00--%>
            <%--                        </div>--%>
            <%--                    </div>--%>
            <!-- Product actions-->
            <%--                    <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">--%>
            <%--                        <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>--%>
            <%--                    </div>--%>
            <%--                </div>--%>
        </div>
    </div>
    </div>
</section>
<!-- Footer-->
<footer class="py-5 bg-dark">
    <div class="container"><p class="m-0 text-center text-white">Copyright &copy; Your Website 2023</p></div>
</footer>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>
</body>
</html>
