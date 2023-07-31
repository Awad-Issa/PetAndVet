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
    <title>Admin</title>
</head>
<body style="background-color: #4899cb">

<h1 style="    text-align: center;
    background-color: white;">Admin Page</h1>


<div class="newProduct" style="display: table-caption;">
<form action="/product/new" method="post">
    <label>product Name</label>
    <input type="text" name="name">

    <label>product Price</label>
    <input type="text" name="price">

    <label>product Image</label>
    <input type="text" name="image">

    <label>product Description</label>
    <input type="text" name="description">

    <input type="submit" name="" id="">
</form>
</div>

<div style="text-align-last: center">


    <table>
        <tr>
            <th>Product Name</th>
            <th>Product date</th>
            <th>Action</th>
        </tr>
        <c:forEach items="${products}" var="product">
        <tr>
            <td>${product.name}</td>
            <td>${product.createdAt}</td>
            <td><a href="/product/${product.id}/delete">Delete</a>        <a href="/product/${product.id}/edit">Edit</a></td>
        </tr>
        </c:forEach>
    </table>


</div>

<a href="/home">Home</a>

</body>
</html>
