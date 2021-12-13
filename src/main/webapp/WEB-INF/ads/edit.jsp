<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Ad"/>
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp"/>
<%--<div class="container">--%>
<%--    <form action="/ads/edit/" method="post">--%>
<%--        <input type="hidden" name="adToUpdate" value="${adObject}">--%>
<%--        <div class="col-md-6 justify-content-center form-group">--%>
<%--            <h1>Edit Ad.</h1>--%>

<%--            <label for="title"> Title:</label>--%>
<%--            <input id="title" type="text" name="title" value="${existingTitle}">--%>
<%--        </div>--%>
<%--        <div class="form-group">--%>
<%--            <label for="description"> Description: </label>--%>
<%--            <textarea id="description" type="text" name="description">${existingDescription}</textarea>--%>
<%--            <button>Save Changes</button>--%>
<%--        </div>--%>

<%--    </form>--%>

<%--</div>--%>
<div class="container">
    <h1>Edit Ad</h1>
    <form action="/ads/edit" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <input id="title" name="title" class="form-control" type="text">
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text"></textarea>
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <textarea id="category" name="category" class="form-control" type="text"></textarea>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <textarea id="price" name="price" class="form-control" type="text"></textarea>
        </div>
        <input type="hidden" value="${swagId}" name="swagId">
        <input type="submit" class="btn btn-block btn-primary">
    </form>
</div>

</body>
</html>