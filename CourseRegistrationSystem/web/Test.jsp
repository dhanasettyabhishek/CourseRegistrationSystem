<%-- 
    Document   : Test]
    Created on : 14 Dec, 2015, 9:55:02 AM
    Author     : Dhanasetty Abhishek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbconnect.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
            <link href="css/bootstrap.min.css" rel="stylesheet" />
    </head>
    <body>
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
                <a class="navbar-brand" href="#">Virtual Universities</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="admin.jsp">Home</a></li>
                    <li><a href="About_Us.jsp">About Us</a></li>
                    <li><a href="Professor.jsp">Professor Page</a></li>
                    <li><a href="Student.jsp">Student Page</a></li>
                    <li><a href="index.jsp">Logout</a></li>
                </ul>
            </div><!-- /.navbar-collapse -->
        </div><!-- /.container-fluid -->
    </nav>
    <div class="row">
        <div class="col-md-10 col-md-offset-1">
            <div class="panel-group">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#admin" href="#admin-one">
                                <h2 align="center"><u><i>List Of Professors...</u></i></h2>
                            </a>
                        </h4>
                    </div>
                    <div id="admin-one" class="panel-collapse collapse">
                        <div class="panel-body">
                          <font face="Palatino Linotype" size=5 color="black" stlye="italic"><i> <u>List Of Professors:</u></i></font>
                            ABhishek
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#admin" href="#admin-two">
                                <h2 align="center"><u><i>List Of Students...</u></i></h2>
                            </a>
                        </h4>
                    </div>
                    <div id="admin-two" class="panel-collapse collapse">
                        <div class="panel-body">
                         <font face="Palatino Linotype" size=5 color="black" stlye="italic"><i> <u>List Of Students:</u></i></font>

                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#admin" href="#admin-three">
                                <h2 align="center"><u><i>List of Materials...</u></i></h2>
                            </a>
                        </h4>
                    </div>
                    <div id="admin-three" class="panel-collapse collapse">
                        <div class="panel-body">
                            <font face="Palatino Linotype" size=5 color="black" stlye="italic"><i> <u>List Of Materials:</u></i></font>

                        </div>
                    </div>
                </div>
                        <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#uplres" href="#queans">
                                <h2 align="center"><u><i>Queries and Answers</u></i></h2>
                            </a>
                        </h4>
                    </div>
                    <div id="queans" class="panel-collapse collapse">
                        <div class="panel-body">
                            <div class="row">
                                <div class="col-md-5 col-md-offset-1">
                                    <div class="panel-group">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#uplres" href="#que-one">
                                                        <h2 align="center"><u><i>List Of Queries...</u></i></h2>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="que-one" class="panel-collapse collapse">
                                                <div class="panel-body">
                                                    <font face="Palatino Linotype" size=5 color="black" stlye="italic"><i> <u>List Of Queries:</u></i></font>

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="panel-group">
                                        <div class="panel panel-default">
                                            <div class="panel-heading">
                                                <h4 class="panel-title">
                                                    <a data-toggle="collapse" data-parent="#uplres" href="#que-two">
                                                        <h2 align="center"><u><i>List of Answers....</u></i></h2>
                                                    </a>
                                                </h4>
                                            </div>
                                            <div id="que-two" class="panel-collapse collapse">
                                                <div class="panel-body">

                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#admin" href="#deleg-one">
                                <h2 align="center"><u><i>List of Delegation Requests...</u></i></h2>
                            </a>
                        </h4>
                    </div>
                    <div id="deleg-one" class="panel-collapse collapse">
                        <div class="panel-body">
                            <font face="Palatino Linotype" size=5 color="black" stlye="italic"><i> <u>List Of Delegation Requests:</u></i></font>

                        </div>
                    </div>
                </div>
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4 class="panel-title">
                            <a data-toggle="collapse" data-parent="#admin" href="#revoc-one">
                                <h2 align="center"><u><i>List of Revocation Requests...</u></i></h2>
                            </a>
                        </h4>
                    </div>
                    <div id="revoc-one" class="panel-collapse collapse">
                        <div class="panel-body">
                            <font face="Palatino Linotype" size=5 color="black" stlye="italic"><i> <u>List Of Revocation Requests:</u></i></font>

                        </div>
                    </div>
                </div>
                            <div class="panel panel-default">
                            <div class="panel-heading">
                                <h4 class="panel-title">
                                    <a data-toggle="collapse" data-parent="#uplres" href="#feedback">
                                        <h2 align="center"><u><i>Feedback</u></i></h2>
                                    </a>
                                </h4>
                            </div>
                            <div id="feedback" class="panel-collapse collapse">
                                <div class="panel-body">
                                    <div class="row">
                                        <div class="col-md-5 col-md-offset-1">
                                            <div class="panel-group">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#uplres" href="#feedback_stu">
                                                                <h2 align="center"><u><i>By Students...</u></i></h2>
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="feedback_stu" class="panel-collapse collapse">
                                                        <div class="panel-body">

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-md-5">
                                            <div class="panel-group">
                                                <div class="panel panel-default">
                                                    <div class="panel-heading">
                                                        <h4 class="panel-title">
                                                            <a data-toggle="collapse" data-parent="#uplres" href="#feedback_prof">
                                                                <h2 align="center"><u><i>By Professors....</u></i></h2>
                                                            </a>
                                                        </h4>
                                                    </div>
                                                    <div id="feedback_prof" class="panel-collapse collapse">
                                                        <div class="panel-body">
                                                           <font face="Palatino Linotype" size=5 color="black" stlye="italic"><i><u>List Of Feedback by Professors</u></i></font>

                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                     
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
    </body>
</html>
