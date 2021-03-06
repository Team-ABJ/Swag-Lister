<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link rel="stylesheet" type="text/css" href="css/style.css">
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Dig our swag!</h1>
<%--Needs /?id= --%>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <a href="singleSwagAd?id=${ad.id}" method="GET"> <h2>${ad.title}</h2></a>
                <p>${ad.description}</p>
               <p>$${ad.price}</p>
<%--            <p>${ad.id}</p>--%>
        </div>
    </c:forEach>
</div>

</body>
</html>
