<%--
  Created by IntelliJ IDEA.
  User: odayi
  Date: 7/26/2023
  Time: 1:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <title>Breed Products</title>
</head>
<body>
<h1>${breed.name}</h1>

<c:forEach var="product" items="${breed.products}">
    <c:out value="${product.name}"/> <br> <br>
</c:forEach>

</body>
</html>
