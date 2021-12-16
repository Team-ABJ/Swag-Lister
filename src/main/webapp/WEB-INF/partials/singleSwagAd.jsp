<%@ page import="com.codeup.adlister.models.User" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<div class="card mb-6" style="max-width: 640px;">
    <div class="row no-gutters">
        <div class="col-md-4">
            <img src="..">
        </div>
        <div class="col-md-8">
            <h1>${ads.title}</h1>
            <div class="card-body">
                <h3 class="card-title">$${ads.price}</h3>
                <p class="card-text">${ads.description}</p>
                <c:choose>
                    <c:when test="${validAttempt}">
                        <!-- Button trigger modal -->

                        <button type="button" class="btn btn-success" data-toggle="modal" data-target="#staticBackdrop">
                            Buy Now
                        </button>

                        <!-- Modal -->
                        <div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false"
                             tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="staticBackdropLabel">Swagged OUT!!</h5>
                                       <a href="WEB-INF/ads"  type="button" class="close" data-dismiss="modal" aria-label="Close">
                                            <span aria-hidden="true">&times;</span>
                                        </a>
                                    </div>
                                    <div class="modal-body">
                                        You just threw some swag in your bag. Now I'll get the bag and flip it and
                                        tumble it to your crib.
                                    </div>
                                    <div class="modal-footer">
                                        <a class="btn btn-primary" type="button" role="button" data-dismiss="modal" href="/ads">
                                                 Continue to Swag Surf
                                        </a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:when>
                    <c:otherwise>
                        <!-- Button trigger modal -->
                        <%--                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">--%>
                        <%--                            Buy Now--%>
                        <%--                        </button>--%>
                        <button class="btn btn-primary" type="button" data-toggle="collapse"
                                data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                            Buy Now
                        </button>
                        </p>
                        <div class="collapse" id="collapseExample">
                            <div class="card card-body">
                                You must be
                                <a href="/login">Registered or Logged In </a>
                                to get your swag on
                            </div>
                        </div>

                    </c:otherwise>
                </c:choose>
                <!-- Modal -->
                <div class="modal fade" id="exampleModal" tabindex="-1" aria-labelledby="exampleModalLabel"
                     aria-hidden="true">
                    <div class="modal-dialog modal-dialog-centered modal-dialog-scrollable">
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
                                    <%--                                    Log In Form --%>

                                    <form class="needs-validation" action="/login" method="POST" novalidate>
                                        <div class="form-group">
                                            <input id="validationTooltipUsername" name="username"
                                                   class="form-control"
                                                   type="text" placeholder="username" required>
                                            <div class="valid-tooltip">
                                                Get your swag on!
                                            </div>
                                        </div>
                                        <%--           <a href="singleSwagAd?id=${ad.id}">                              </div>--%>
                                        <div class="form-group">

                                            <input id="password" name="password" class="form-control" type="password"
                                                   placeholder="password">
                                            <small id="emailHelp" class="form-text text-muted">Do not share your
                                                password with anyone</small>

                                        </div>
                                        <div>
                                            <a href="singleSwagAd?id=${ad.id}">
                                                <input type="submit" class="btn btn-success btn-block" value="Log In"
                                                       required></a>
                                        </div>
                                    </form>
                                </div>
                                <%--                            </div>--%>
                                <div class="container">
                                    <h1>Please fill in your information.</h1>
                                    <form action="/register" method="post">
                                        <%--                                       Register form--%>
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

