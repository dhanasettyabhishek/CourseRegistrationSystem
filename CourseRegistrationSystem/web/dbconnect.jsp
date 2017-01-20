<%-- 
    Document   : dbconnect
    Created on : Jan 11, 2017, 8:48:41 PM
    Author     : Abhishek Dhanasetty
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course Registration System </title>
    </head>
    <body>
    <%@page import="javax.servlet.*" %>      
    <%@page import="java.sql.*" %>
    <%@page import="java.io.*" %>
    <%@page import="java.lang.*" %>
    <%!Connection con;%>
    <%Class.forName("oracle.jdbc.driver.OracleDriver");
    con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:ORACLE","system","Arc14_Abhi18");
    if(con!=null)
    {
        //out.println("connected");
    }
    %>
</body>
</html>
