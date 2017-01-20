<%-- 
    Document   : prof_register
    Created on : Jan 11, 2017, 8:30:42 PM
    Author     : Abhishek Dhanasetty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
	<meta charset="utf-8" />
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-size: cover;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="jumbotron" style="height:238px;width:auto;">
            <div class="row">
                <div class="col-md-9"><h2 align="center">Registration</h2></div>
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
                            <li><a href="login.jsp">Login</a></li>
                        </ul>
                    </div><!-- /.navbar-collapse -->
                </div><!-- /.container-fluid -->
            </nav>
        </div>
    </div>
    <div class="container">
        <form role="form" class="form-horizontal" action="prof_register_action.jsp" method="post">
            <div class="form-group">
                <label for="name" class="control-label col-md-3">Full Name:</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="crs_pname" id="crs_pname" placeholder="Full Name" />
                </div>
            </div>
            <div class="form-group">
                <label for="sid" class="control-label col-md-3">Id Number:</label>
                <div class="col-md-6">
                    <input type="text" class="form-control" name="crs_pid" id="crs_pid" placeholder="Id Number" />
                </div>
            </div>
            <div class="form-group">
                <label for="pwd" class="control-label col-md-3">Password:</label>
                <div class="col-md-6">
                    <input type="password" class="form-control" name="crs_ppwd" id="crs_ppwd" placeholder="Password" />
                </div>
            </div>
            <div class="form-group">
                <label for="email" class="control-label col-md-3">Email:</label>
                <div class="col-md-6">
                    <input type="email" class="form-control" name="crs_email" id="crs_email" placeholder="Email" />
                </div>
            </div>
            <div class="form-group">
                <label for="univname" class="control-label col-md-3">Department:</label>
                <div class="col-md-6">
                    <select class="form-control" name="crs_dept" id="crs_dept">
                        <option>Select</option>
                        <option>C.S.E.</option>
                        <option>I.T.</option>
                        <option>E.C.E.</option>
                        <option>E.E.E.</option>
                    </select>
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
                <input type="submit" value="Register" />&nbsp;&nbsp;&nbsp;
                <input type="reset" value="Reset" />
            </center><br /><br />
        </form>
    </div>
    <script src="Scripts/jquery-3.1.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
