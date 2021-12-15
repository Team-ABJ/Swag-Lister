<%--
  Created by IntelliJ IDEA.
  User: bernie_esquivel
  Date: 12/10/21
  Time: 9:41 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<%--<h1 style="color: red;">Your ad has been deleted!</h1>--%>
<%--<a href="/profile">Return to Profile</a>--%>
<div class="container col-7">
    <h1>Delete Swag</h1>
    <form action="/ads/delete/?id=${ads.id}" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <textarea id="title" name="title" class="form-control" type="text" readonly>${ads.title}</textarea>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text" readonly>${ads.description}</textarea>
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <textarea id="category" name="description" class="form-control" type="text" readonly>${ads.category}</textarea>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <textarea id="price" name="price" class="form-control" type="text" readonly>${ads.price}</textarea>
        </div>
        <input type="hidden" value="${swagId}" name="swagId">
        <a href="/profile" type="rest" class="btn btn-block btn-danger">Delete</a>
        <a href="/profile" type="rest" class="btn btn-block btn-primary">Cancel</a>

    </form>
</div>
</body>
</html>
