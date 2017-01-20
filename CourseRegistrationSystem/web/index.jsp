<%-- 
    Document   : index
    Created on : Jan 11, 2017, 8:26:17 PM
    Author     : Abhishek Dhanasetty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Registration System!!!</title>
	<meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="jumbotron" style="height:200px;width:auto">
            <h3>Course Registration System</h3><br />
            <nav class="navbar navbar-default" role="navigation">
                <div class="container-fluid">
                    <!-- Brand and toggle get grouped for better mobile display -->
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <a class="navbar-brand" href="#">CRS</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav">
                            <li class="active"><a href="#">Home</a></li>
                            <li><a href="login.jsp">Login</a></li>
                            <li><a href="prof_register.jsp">Register</a></li>

                            <li><a href="About.jsp">About Us</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
        <div id="my-carousel" class="carousel slide" data-ride="carousel">
            <ol class="carousel-indicators">
                <li data-target="#my-carousel" data-slide-to="0" class="active"></li>
            </ol>
            <div class="carousel-inner">
                <div class="item active">
                    <img alt="First slide" src="Scripts/-text.png ">
                    <div class="carousel-caption">
                        <h3>Apply to Interesting Courses</h3>
                    </div>
                </div>
                <div class="item">
                    <img alt="Second slide" src="Scripts/-text1.png ">
                    <div class="carousel-caption">
                        <h3>C.R.S.</h3>
                    </div>
                </div>
            </div>
            <a class="left carousel-control" href="#my-carousel" data-slide="prev">
                <span class="glyphicon glyphicon-chevron-left"></span>
            </a>
            <a class="right carousel-control" href="#my-carousel" data-slide="next">
                <span class="glyphicon glyphicon-chevron-right"></span>
            </a>
        </div>
    </div>
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>