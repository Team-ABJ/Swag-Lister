<nav class="navbar navbar-default">
    <div class="container-fluid">
        <!-- Brand and toggle get grouped for better mobile display -->
        <div class="navbar-header">
            <a class="navbar-brand" href="/ads">Swaglister</a>
            <form action="/searchAdsResults" method="GET" class="form-inline my-4 my-lg-4">
                <input class="form-control mr-sm-4" type="text" placeholder="Search for some swag" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit" >Search</button>
            </form>
        </div>
        <ul class="nav navbar-nav navbar-right">

            <li><a href="/login">Login</a></li>
            <li><a href="/logout">Logout</a></li>
            <li><a href="/profile">Return to Profile</a></li>
            <li><a href="/ads/create">Create Ad</a></li>
        </ul>
    </div><!-- /.navbar-collapse -->
    </div><!-- /.container-fluid -->
</nav>
