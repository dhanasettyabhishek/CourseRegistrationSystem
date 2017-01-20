<%-- 
    Document   : login
    Created on : Jan 11, 2017, 8:28:46 PM
    Author     : Abhishek Dhanasetty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
	<meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container">
        <div class="jumbotron" style="height:238px;width:auto;">
            <div class="row">
                <div class="col-md-9"><h2 align="center">LOGIN PAGE</h2></div>
            </div>
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
                        <a class="navbar-brand" href="#">C.R.S.</a>
                    </div>
                    <!-- Collect the nav links, forms, and other content for toggling -->
                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                        <ul class="nav navbar-nav navbar-center">
                            <li><a href="index.jsp">Home Page</a></li>
                            <li><a href="prof_register.jsp">Registration</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </div>
    <div class="container">
        <form role="form" class="form-horizontal" action="login_action.jsp" method="post">
            <div class="form-group">
                <label for="uname" class="control-label col-md-3">ID Number:</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="crsid" id="crsid" placeholder="User ID" />
                </div>
            </div>
            <div class="form-group">
                <label for="pwd" class="control-label col-md-3">Password:</label>
                <div class="col-md-6">
                    <input type="password" class="form-control" name="crspwd" id="crspwd" placeholder="Password" />
                </div>
            </div>
            <div class="form-group">
                <label for="univname" class="control-label col-md-3">ROLE:</label>
                <div class="col-md-6">
                    <select class="form-control" name="crs_role" id="crs_role">
                        <option>Select</option>
                        <option>Professor</option>
                        <option>student</option>
                    </select>
                </div>
            </div>
            <center>
                <input type="submit" value="Login" />
                <input type="reset" value="Reset" />
                <br />New User:<br />
                <li><a href="prof_register.jsp">Registration</a></li>
            </center><br /><br />
        </form>
    </div>
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>