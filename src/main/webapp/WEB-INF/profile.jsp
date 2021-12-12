<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Your Profile" />--%>
<%--    </jsp:include>--%>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Create a New Ad" />
    </jsp:include>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome, ${sessionScope.user.username}!</h1>
    </div>

    <c:forEach var="ad" items="${swag}">
        <div class="col-md-6">
            <a href="singleSwagAd"> <h2>${ad.title}</h2></a>
            <p>${ad.description}</p>
            <p>${ad.price}</p>
            <a href="#" class="btn btn-primary">Delete</a>
            <a href="#" class="btn btn-primary">Edit</a>
        </div>
    </c:forEach>
</body>
</html>
