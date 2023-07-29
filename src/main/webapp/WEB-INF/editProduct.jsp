<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>New Product</title>
</head>
<body>
<form:form modelAttribute="product" method="post" action="/product/new">
    <h1>Enter product information</h1>

    <input type="hidden" value="${product.id}" name="id"/>

    <form:label path="name">name:</form:label>
    <form:input path="name"/>
    <form:errors path="name" cssClass="error"/>

    <form:label path="description">Description:</form:label>
    <form:input path="description"/>
    <form:errors path="description" cssClass="error"/>

    <form:label path="breed">breed:</form:label>
    <form:select path="breed">
        <form:options items="${breeds}" itemLabel="name" itemValue="id"/>
    </form:select>
    <form:errors path="breed" cssClass="error"/>


    <form:label path="price">Price:</form:label>
    <form:input path="price"/>
    <form:errors path="price" cssClass="error"/>

    <input type="submit" value="add post"/>
</form:form>
</body>
</html>
