<%--
  Created by IntelliJ IDEA.
  User: macos
  Date: 12/12/21
  Time: 5:41 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Be Your Search Results</h1>
    <%--Needs /?id= --%>
    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">
            <a href="singleSwagAd?id=${ads.id}" method="GET">
                <h2>${ads.title}</h2></a>
            <p>${ads.description}</p>
            <p>$${ads.price}</p>
                <%--            <p>${ad.id}</p>--%>
        </div>
    </c:forEach>
</div>

</body>
</html>