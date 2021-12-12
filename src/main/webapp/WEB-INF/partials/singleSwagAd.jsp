
<div class="card" style="width: 18rem;">
    <img src="..." class="card-img-top" alt="...">
    <div class="card-body">
        <h5 class="card-title">${ad.title}Test Title</h5>
        <p class="card-text">${ad.description}TEST description</p>
        <div class="card-footer">$${ad.price}TESt Test</div>
        <a href="#" class="btn btn-primary">Throw It In The Bag</a>

<%--<div class="card" style="width: 18rem;">--%>
<%--    <img src="..." class="card-img-top" alt="...">--%>
<%--    <div class="card-body">--%>
<%--        <h5 class="card-title">${ad.title}Test Title</h5>--%>
<%--        <p class="card-text">${ad.description}TEST description</p>--%>
<%--        <div class="card-footer">$${ad.price}TESt Test</div>--%>
<%--        <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>--%>
<%--        <a href="#" class="btn btn-primary">Throw It In The Bag</a>--%>
<%--    </div>--%>
<%--</div>--%>

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
                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                    Buy so you can throw it in the bag
                </button>

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
                            <%--                            <form class="needs-validation" novalidate>--%>
                            <%--                                <div class="form-row">--%>
                            <%--                                    <div class="col-md-6 mb-3">--%>
                            <%--                                        <label for="validationCustom01">First name</label>--%>
                            <%--                                        <input type="text" class="form-control" id="validationCustom01" value="Mark" required>--%>
                            <%--                                        <div class="valid-feedback">--%>
                            <%--                                            Looks good!--%>
                            <%--                                        </div>--%>
                            <%--                                    </div>--%>
                            <%--                            <form class="needs-validation" novalidate>--%>
                            <%--                                <div class="form-row">--%>
                            <%--                                    <div class="col-md-6 mb-3">--%>
                            <%--                                        <label for="validationTooltip01">First name</label>--%>
                            <%--                                        <input type="text" class="form-control" id="validationTooltip01" value="Mark" required>--%>
                            <%--                                        <div class="valid-tooltip">--%>
                            <%--                                            Looks good!--%>
                            <%--                                        </div>--%>
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
                                </body>
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
            </div>
        </div>
    </div>
</div>

