<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login and Registration</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css">
</head>
<body style="background-color: #fffae3;">
   
<div class="container">
</div>
<main class="container" style="      font-family: auto;  display: flex;
    max-width: 720px;
    justify-content: space-around;
    margin: 0 auto;">
    <section style="margin-right: 20px">
        <form:form action="/register" method="post" modelAttribute="newUser">
        <h2 style="color: #809842;  text-decoration: underline;">Registration</h2><br>
        <div class="form-group row mb-3">
            <form:label path="userName" class="col-sm-4 col-form-label">User Name:</form:label>
            <form:errors path="userName" style="color:red;"/>
            <div class="col-sm-8">
                <form:input path="userName" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="email" class="col-sm-4 col-form-label">Email:</form:label>
            <form:errors path="email" style="color:red;"/>
            <div class="col-sm-8">
                <form:input typr="email" path="email" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="password" class="col-sm-4 col-form-label">Password:</form:label>
            <form:errors path="password" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="password" path="password" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="confirm" class="col-sm-4 col-form-label">Confirm PW:</form:label>
            <form:errors path="confirm" style="color:red;"/>
            <div class="col-sm-8">
                <form:input type="password" path="confirm" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="phoneNumber"
                        class="col-sm-4 col-form-label">phone number:</form:label>
            <form:errors path="phoneNumber" style="color:red;"/>
            <div class="col-sm-8">
                <form:input path="phoneNumber" class="form-control"/>
            </div>
        </div>
        <div class="form-group row mb-3">
            <form:label path="location" class="col-sm-4 col-form-label">location:</form:label>
                <form:errors path="location" style="color:red;"/>
            <div class="col-sm-8">
                <form:select path="location" class="form-control">
                    <form:option value="Select a location"/>
                    <form:option value="Ramallah"/>
                    <form:option value="Nablus"/>
                    <form:option value="Jebron"/>
                    <form:option value="Jerusalem"/>

                </form:select>
                <br>
            </div>
            <input id="button" type="submit" value="Submit" class="btn btn-primary"
                   style="background-color: #ff821c"/>
            </form:form>
    </section>
    <section>


        <form:form action="/login" method="post" modelAttribute="newLogin">
            <h2 style="color: #809842;text-decoration: underline;">Login</h2><br>
            <div class="form-group row mb-3">
                <form:label path="email" class="col-sm-4 col-form-label">Email:</form:label>
                <form:errors path="email" style="color:red;"/>
                <div class="col-sm-8">
                    <form:input typr="email" path="email" class="form-control"/>
                </div>
            </div>
            <div class="form-group row mb-3">
                <form:label path="password" class="col-sm-4 col-form-label">Password:</form:label>
                <form:errors path="password" style="color:red;"/>
                <div class="col-sm-8">
                    <form:input type="password" path="password" class="form-control"/>
                </div>
            </div>
            <input id="button" type="submit" value="Submit" class="btn btn-primary"
                   style="background-color: #ff821c"/>
        </form:form>
    </section>
</main>
</body>
</html>