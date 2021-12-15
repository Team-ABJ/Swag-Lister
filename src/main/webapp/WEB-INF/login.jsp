<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Please Log In" />
    </jsp:include>
    <style>
        body{
            background-image: url("../img/High_fashion2.gif");
            /*background-size: cover;*/
            /*height: 1800px;*/
            /*width: 2000px;*/
            color: #023e8a;
        }
        .container{
            height: 50px;
        }
        h1{
            padding-top: 15px;
        }
    </style>
</head>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Please Log In</h1>
        <form action="/login" method="POST">
            <div class="form-group col-5">
                <label for="username">Username</label>
                <input id="username" name="username" class="form-control" type="text">
            </div>
            <div class="form-group col-5">
                <label for="password">Password</label>
                <input id="password" name="password" class="form-control" type="password">
            </div>
            <input type="submit" class="btn btn-primary btn-block col-5" value="Log In">
            <br>
            <p>New User?  <a href="/register">Register Here</a></p>
        </form>
    </div>
</body>
</html>
