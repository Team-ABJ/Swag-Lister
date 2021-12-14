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
    <style>
        body{
            background-image: url("../img/Green-cream.png");
        }
    </style>
</head>

<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<%--<div class="container">--%>
<%--    <div class="col-md-6">--%>

<jsp:include page="/WEB-INF/partials/singleSwagAd.jsp"/>


</body>
</html>