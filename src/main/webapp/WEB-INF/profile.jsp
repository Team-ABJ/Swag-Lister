<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Your Profile" />--%>
<%--    </jsp:include>--%>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a New Ad" />
    </jsp:include>
    <style>
        body{
            background-image: url("../img/Black-cream.png");
            color: #eec1c4;
        }
    </style>

</head>
<body>

    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>
    <c:forEach var="swag" items="${swag}">
        <div class="col-md-6">
            <a href="singleSwagAd?id=${swag.id}"> <h2>${swag.title}</h2></a>
            <p>${swag.description}</p>
            <p>$${swag.price}</p>
            <a href="/ads/delete/${swag.id}" class="btn btn-primary">Delete</a>
            <a href="/ads/edit/${swag.id}" class="btn btn-primary">Edit</a>
        </div>
    </c:forEach>
    <br>
    <a class="btn btn-primary" href="EditProfile?id=${sessionScope.user.id}" method="GET" role="button" value="${sessionScope.user.id}">Edit Profile</a>
</body>
</html>
