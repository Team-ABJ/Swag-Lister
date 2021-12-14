<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Edit your Ad"/>
    </jsp:include>
    <style>
        body {
            background-image: url("../../img/Edit_fashion.gif");
            color: #2d88da;
        }

        h1 {
            margin-left: 250px;
            color: #023e8a;
        }

        .container {
            /*height: 160px;*/
            margin-left: 15px;
            margin-top: 8em;
        }

        label {
            font-size: x-large;
            font-weight: bolder;
        }
    </style>
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
<div class="container col-7">
    <h1>Edit Swag</h1>
    <form action="/ads/edit/?id=${ads.id}" method="post">
        <div class="form-group">
            <label for="title">Title</label>
            <textarea id="title" name="title" class="form-control" type="text">${ads.title}</textarea>
        </div>
        <div class="form-group">
            <label for="description">Description</label>
            <textarea id="description" name="description" class="form-control" type="text">${ads.description}</textarea>
        </div>
        <div class="form-group">
            <label for="category">Category</label>
            <select id="category" name="category" class="form-control" type="text">
                    <option disabled selected>Please Choose One:</option>
                    <option>accessories</option>
                    <option>shoes</option>
                    <option>shirts</option>
                    <option>pants</option>
            </select>
        </div>
        <div class="form-group">
            <label for="price">Price</label>
            <textarea id="price" name="price" class="form-control" type="text">${ads.price}</textarea>
        </div>
        <input type="hidden" value="${swagId}" name="swagId">
        <input type="submit" class="btn btn-block btn-primary">
        <a href="/profile" type="rest" class="btn btn-block btn-primary btn-danger">Cancel</a>

    </form>
</div>

</body>
</html>