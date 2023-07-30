<%--
  Created by IntelliJ IDEA.
  User: Awad Issa
  Date: 7/30/2023
  Time: 11:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
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

</body>
</html>
