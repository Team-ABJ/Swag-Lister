<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
    <style>
        h1{
            font-family: cursive;
            font-size: 100px;
            margin-left: -70px;

        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Welcome to Swaglister!</h1>
    </div>
</body>
</html>
