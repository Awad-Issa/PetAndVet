<%--
  Created by IntelliJ IDEA.
  User: odayi
  Date: 7/26/2023
  Time: 1:37 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>
<html>
<head>
	<title>pet details</title>
</head>
<body>
<c:out value="${pet.image}"/>
<c:out value="${pet.name}"/>
<c:out value="${pet.age}"/>
<c:out value="${pet.gender}"/>
<c:out value="${pet.breed.name}"/>
<c:out value="${pet.location}"/>
<c:out value="${pet.description}"/>
<c:out value="${pet.status}"/>
</body>
</html>
