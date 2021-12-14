<%--
  Created by IntelliJ IDEA.
  User: uncleshredder
  Date: 12/13/21
  Time: 12:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
<jsp:include page="/WEB-INF/partials/head.jsp">
    <jsp:param name="title" value="Edit Profile Information" />
</jsp:include>
    <style>
        body{
            background-image: url("../img/5.jpg");
            color: white;
        }
    </style>

</head>
<body>
    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
        <form action="/EditProfile?id=${sessionScope.user.id}" method="post">
<%--            <input type="hidden" value="${sessionScope.user.id}" name="id">--%>
            <div class="form-group">
                <label for="title">Username</label>
                <textarea id="title" name="username" class="form-control" type="text">${sessionScope.user.username}</textarea>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <textarea id="email" name="email" class="form-control">${sessionScope.user.email}</textarea>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <textarea id="password" name="password" class="form-control">${sessionScope.user.password}</textarea>
            </div>
            <input type="submit" class="btn btn-primary btn-block">
        </form>
    </div>
</body>
</html>
