<%--
  Created by IntelliJ IDEA.
  User: odayi
  Date: 7/31/2023
  Time: 12:00 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
	<title>Title</title>
</head>
<body>
thank you <c:out value="${user.userName}"/> for adopting <c:out value="${pet.name}"/>
</body>
</html>
