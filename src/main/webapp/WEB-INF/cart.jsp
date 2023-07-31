<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %>
<html>
<head>
    <style>
      table {
        font-family: arial, sans-serif;
        border-collapse: collapse;
        width: 100%;
      }

      td, th {
        border: 1px solid #dddddd;
        text-align: left;
        padding: 8px;
      }

      tr:nth-child(even) {
        background-color: #dddddd;
      }
    </style>
    <title>Title</title>
</head>
<body>





<h1>Cart</h1>

<table>
    <tr>
        <th>Product name</th>
        <th>Price</th>
    </tr>
<c:forEach var="product" items="${user.products}">
    <tr>
        <td><c:out value="${product.name}"/></td>
        <td>   ${product.price}</td>
    </tr>
</c:forEach>

</table>


</body>
</html>
