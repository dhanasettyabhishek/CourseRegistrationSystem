<%-- 
    Document   : admin
    Created on : Jan 12, 2017, 12:16:24 AM
    Author     : Abhishek Dhanasetty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbconnect.jsp" %>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Admin Home page</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <style> body {
                 background-image: url('1.png');
                 background-size:cover;
        }</style>
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
                <a class="navbar-brand" href="#">Course Registration System</a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav">
                    <li><a href="admin.jsp">Home</a></li>
                    <li><a href="Professor.jsp">Professor Page</a></li>
                    <li><a href="student.jsp">Student Page</a></li>
                    <li><a href="login.jsp">Logout</a></li>
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
        <%
        Statement st=con.createStatement();
        ResultSet rs=st.executeQuery("select * from CRS_PROFREG where crs_role = 'Professor'");
        while(rs.next())
        {%>
        

<div class="row">
    <div class="col-md-6"><ul><br/>
        <li><b>NAME:<%=rs.getString(2)%></b><br/><i>PASSWORD:<%=rs.getString(3)%><br/>EMAIL:<%=rs.getString(4)%><br>DEPARTMENT:<%=rs.getString(5)%><br>ROLE:<%=rs.getString(6)%><br/></i></li>
                            <a href="DeleteProf_Admin.jsp?id=<%=rs.getString(1)%>">Delete Professor</a><br/>
                            <a href="UpdateProf_Admin.jsp?id=<%=rs.getString(1)%>">Update Details </a>                 </ul></div>
</div>
    <br/>
            
       <% }
        %>
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
        <%
        Statement st2=con.createStatement();
        ResultSet rs2=st2.executeQuery("select * from CRS_PROFREG where crs_role = 'student'");
        while(rs2.next())
        {%>
        

<div class="row">
    <div class="col-md-6"><ul><br/>
        <li><b>NAME:<%=rs2.getString(2)%></b><br/><i>EMAIL:<%=rs2.getString(3)%><br/>PHONE NUMBER:<%=rs2.getString(4)%><br/></i></li>
                      <a href="DeleteStudent.jsp?id=<%=rs2.getString(1)%>">Delete Student</a><br/>
        <a href="Update_Students.jsp?id=<%=rs2.getString(1)%>">Update Details </a>  </ul></div>
</div>
    <br/>
            
       <% }
        %>
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
