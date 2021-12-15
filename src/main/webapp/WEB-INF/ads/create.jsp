<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a new Ad"/>
    </jsp:include>
    <style>
        body{
            background-image: url("../../img/Create_3.gif");
            color: white;
            background-size: inherit;
            background-position: unset;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<div class="container col-6">
<%--    <h1>Create an Ad</h1>--%>
    <form action="/ads/create" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <select id="category" name="category" class="form-control">
                <option disabled selected>Please Choose One:</option>
                <option>accessories</option>
                <option>shoes</option>
                <option>shirts</option>
                <option>pants</option>
            </select>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <textarea id="price" name="price" class="form-control" type="text"></textarea>
        </div>
        <input type="submit" class="btn btn-lg btn-primary">
        <a href="/profile" type="rest" class="btn btn-lg btn-danger">Cancel</a>

    </form>
</div>



</body>
</html>
