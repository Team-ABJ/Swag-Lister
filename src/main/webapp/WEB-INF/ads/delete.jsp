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
<h1 style="color: red;">Delete Ads</h1>
<form action="/ads/delete" method="post">

    <a href="/profile">Go back to profile</a>
    <form>
</body>
</html>
