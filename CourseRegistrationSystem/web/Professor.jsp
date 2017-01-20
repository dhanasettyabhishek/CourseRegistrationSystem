<%-- 
    Document   : Professor
    Created on : Jan 12, 2017, 12:08:34 AM
    Author     : Abhishek Dhanasetty
--%>

<%@include file="dbconnect.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Professor</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-image: url('1.png');
            background-size: cover;
        }
    </style>
</head>
    <%String pid=(String)session.getAttribute("id");%>
<body>
    <div class="container">
        <div class="jumbotron" style="height:238px;width:auto;">
            <div class="row">
                <div class="col-md-9"><h2 align="center">Course Registration System</h2></div>
            </div>
            <div class="row">
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
                                <li><a href="login.jsp">Logout</a></li>
                            </ul>
                        </div><!-- /.navbar-collapse -->
                    </div><!-- /.container-fluid -->
                </nav>
            </div>
        </div>
    </div>
    <div class="container">
        <h2 align="center"><u><i>Professor DashBoard With ID: <%=pid%></i></u></h2>
        <hr />
        <div class="row" align="center">
            <div class="col-md-12" align="center">
                <div class="panel-group" id="uplres">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#uplres" href="#uplres-one">
                                    <h2 align="center" id="upmat"><u><i>Add Courses...</u></i></h2>
                                </a>
                            </h4>
                        </div>
                        <div id="uplres-one" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <form role="form" class="form-horizontal" action="Course_action.jsp"  method="POST">
                                    <div class="form-group">
                                    <label for="title" class="control-label col-md-3">Department:</label>
                                    <div class="col-md-6">
                                        <select class="form-control" name="crs_dept" id="crs_dept" >
                                            <option>Select</option>
                                            <option>C.S.E.</option>
                                            <option>I.T.</option>
                                            <option>E.C.E.</option>
                                            <option>E.E.E.</option>
                                        </select>
                                    </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="control-label col-md-3">Course No:</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="crs_no" id="title" placeholder="Course Number" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="control-label col-md-3">Course Name:</label>
                                        <div class="col-md-6">
                                            <input type="text" class="form-control" name="crs_name" id="title" placeholder="Course Name" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="control-label col-md-3">About the Course:</label>
                                        <div class="col-md-6">
                                            <%--<input type="textarea" id="title" placeholder="Name of the Book" />--%>
                                            <textarea rows="4" cols="50" class="form-control" name="crs_det" placeholder="About the Course..."></textarea>
                                        </div>
                                    </div>
                                    <center>
                                        <input type="submit" value="Send" />&nbsp;&nbsp;
                                        <input type="reset" value="Reset" />
                                    </center><br /><br />
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
          <hr/>
          <div class="col-md-12" align="center">
                <div class="panel-group" id="uplres">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <h4 class="panel-title">
                                <a data-toggle="collapse" data-parent="#uplres" href="#uplres-one">
                                    <h2 align="center" id="upmat"><u><i>Manage Student Request...</u></i></h2>
                                </a>
                            </h4>
                        </div>
                                                                <%
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from CRS_REG_COURSE");
        while(rs.next())
        {%>
                        <div id="uplres-one" class="panel-collapse collapse in">
                            <div class="panel-body">
                                <form role="form" class="form-horizontal" action="Accept_Request.jsp" method="POST">
                                    <div class="form-group">
                                        <label for="title" class="control-label col-md-3">Student Id:</label>
                                        <div class="col-md-6">
                                            <input type="text" readonly="readonly" class="form-control" name="crs_sid"  value="<%=rs.getString(1)%>" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="control-label col-md-3">Department:</label>
                                        <div class="col-md-6">
                                            <input type="text" readonly="readonly" class="form-control" name="crs_dept2" id="title" value="<%=rs.getString(2)%>" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="control-label col-md-3">Course No:</label>
                                        <div class="col-md-6">
                                            <input type="text" readonly="readonly" class="form-control" name="crs_no2" id="title" value="<%=rs.getString(3)%>" />
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="title" class="control-label col-md-3">Course Name:</label>
                                        <div class="col-md-6">
                                            <input type="text" readonly="readonly" class="form-control" name="crs_name2" id="title" value="<%=rs.getString(4)%>" />
                                        </div>
                                    </div>
                                    <center>
                                        <input type="submit" value="Accept Course"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                        <%--a href="Accept_Request.jsp?id=<%=rs.getString(1)%>">Accept Course </a> &nbsp;&nbsp;&nbsp;&nbsp;--%>
                                        <a href="Delete_Request.jsp?id=<%=rs.getString(1)%>">Delete Request</a><br/>
                                    </center><br /><br />
                                </form>
                            </div>
                        </div>
                                   <% }
        %>
                    </div>
                </div>
            </div>
                                            
        </div>
        <br />
        <hr />
        <br />
        
        <%--<div class="row">
            <center>
                <form role="form" action="FeedBack_Prof_Action.jsp" method="post">
                <h3 align="center" id="feedk"><hr>Please give your feedback...</hr></h3><br/><center>Professor Id:<input type="text" readonly="readonly" name="pid" value="<%=pid%>"/></center>
        <center>
            <textarea rows=5 cols=100 placeholder="add your feedback here.." name="feedback"></textarea><br /><br />
            <input type="submit" value="Submit" /><input type="reset" value="Cancel">
        </center>
    </form>
</div>--%>
    </div>
    <script src="Scripts/jquery-2.1.3.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
</body>
</html>
