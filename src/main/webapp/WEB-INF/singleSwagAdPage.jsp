<%--
  Created by IntelliJ IDEA.
  User: macos
  Date: 12/9/21
  Time: 11:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<%--This file will be put into the WEB-INF--%>

<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are is your ad!</h1>


        <div class="col-md-6">
            <h2>Your ad that you clicked on</h2>
<jsp:include page="/WEB-INF/partials/singleSwagAd.jsp"/>
        </div>

</div>

</body>
</html>