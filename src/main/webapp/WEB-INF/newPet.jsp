<%--
  Created by IntelliJ IDEA.
  User: odayi
  Date: 7/26/2023
  Time: 1:21 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>new pet</title>
</head>
<body>
<form:form modelAttribute="pet" method="post" action="/pets/new">
    <h1>enter pet information</h1>
    <input type="hidden" value="${user_id}" name="user"/>

    <form:label path="name">name:</form:label>
    <form:input path="name"/>
    <form:errors path="name" cssClass="error"/>

    <form:label path="age">age:</form:label>
    <form:input path="age"/>
    <form:errors path="age" cssClass="error"/>

    <form:label path="gender">gender:</form:label>
    <form:select path="gender">
        <form:option value="female"/>
        <form:option value="male"/>
    </form:select>
    <form:errors path="gender"/>

    <form:label path="breed">breed:</form:label>
    <form:select path="breed">
        <form:options items="${breeds}" itemLabel="name" itemValue="id"/>
    </form:select>
    <form:errors path="breed" cssClass="error"/>

    <form:label path="location">location:</form:label>
    <form:select path="location">
        <form:option value="select a location"/>
        <form:option value="ramallah"/>
        <form:option value="nablus"/>
        <form:option value="hebron"/>
        <form:option value="jerusalem"/>
    </form:select>
    <form:errors path="location" style="color:red;"/>

    <form:label path="status">status:</form:label>
    <form:select path="status">
        <form:option value="status"/>
        <form:option value="for adoption"/>
        <form:option value="adopted"/>
    </form:select>
    <form:errors path="status" style="color:red;"/>

    <form:label path="description">description:</form:label>
    <form:input path="description"/>
    <form:errors path="description" cssClass="error"/>

    <input type="submit" value="add post"/>
</form:form>
</body>
</html>
