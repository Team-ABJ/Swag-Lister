<%@ page import="com.codeup.adlister.models.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="card mb-6" style="max-width: 640px;">
    <div class="row no-gutters">
        <div class="col-md-4">
            <img src="..." alt="...">
        </div>
        <div class="col-md-8">
            <h1>${ads.title}</h1>
            <div class="card-body">
                <h3 class="card-title">$${ads.price}</h3>
                <p class="card-text">${ads.description}</p>
                <!-- Button trigger modal -->

<%--                <% User user = (User) request.getSession().getAttribute("user");%>--%>

                <c:choose>
                    <c:when test="${validAttempt}">
                        <button type="button" class="btn btn-success"> Buy Now</button>
<%--                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">--%>
<%--                            Buy Now--%>
<%--                        </button>--%>
                    </c:when>
                    <c:otherwise>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                            Buy Now
                        </button>
<%--                        <p>logg in </p>--%>
                    </c:otherwise>
                </c:choose>

                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
                        <%--                    <div class="modal-dialog">--%>
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">List be Swagging</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>

                            <div class="modal-body">
                                <div class="container">
                                    <h1>Please Log In</h1>
                                    <form class="needs-validation" action="/login" method="POST" novalidate>
                                        <div class="form-group">
                                            <%--                                            <div class="form-check">--%>
                                            <input id="validationTooltipUsername" value="Mark" name="username"
                                                   class="form-control"
                                                   type="text" placeholder="username" required>
                                            <div class="valid-tooltip">
                                                Get your swag on!
                                            </div>
                                        </div>
                                        <%--                                        </div>--%>
                                        <div class="form-group">
                                            <input id="password" name="password" class="form-control" type="password"
                                                   placeholder="password">
                                            <small id="emailHelp" class="form-text text-muted">Do not share your
                                                password with anyone</small>

                                        </div>
                                        <input type="submit" class="btn btn-success btn-block" value="Log In" required>
                                    </form>
                                </div>
                                <%--                            </div>--%>
                                <div class="container">
                                    <h1>Please fill in your information.</h1>
                                    <form action="/register" method="post">
                                        <div class="form-group">
                                            <label for="username">Username</label>
                                            <input id="username" name="username" class="form-control" type="text">
                                        </div>
                                        <div class="form-group">
                                            <label for="email">Email</label>
                                            <input id="email" name="email" class="form-control" type="text">
                                        </div>
                                        <div class="form-group">
                                            <label for="password">Password</label>
                                            <input id="password" name="password" class="form-control" type="password">
                                        </div>
                                        <div class="form-group">
                                            <label for="confirm_password">Confirm Password</label>
                                            <input id="confirm_password" name="confirm_password" class="form-control"
                                                   type="password">
                                        </div>
                                        <input type="submit" class="btn btn-primary btn-block">
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <%--                                <button type="button" class="btn btn-primary">Register</button>--%>
                                    <%--                                <button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false">--%>
                                    <%--                                    Login--%>
                                    <%--                                </button>--%>
                                    <%--                                <button type="button" class="btn btn-primary" data-toggle="button" aria-pressed="false">--%>
                                    <%--                                    Register--%>
                                    <%--                                </button>--%>
                                </div>
                            </div>
                        </div>
                    </div>

                    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
                </div>
<%--                </c:otherwise>--%>
<%--                </c:choose>--%>
            </div>
        </div>
    </div>
</div>

