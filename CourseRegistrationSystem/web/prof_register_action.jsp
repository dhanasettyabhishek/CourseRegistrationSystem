<%-- 
    Document   : prof_register_action
    Created on : Jan 11, 2017, 11:57:43 PM
    Author     : Abhishek Dhanasetty
--%>

<%@include file="dbconnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
    </head>
    <body>
        
        <%
            try{
        String crs_id = request.getParameter("crs_pid");
        String crs_name = request.getParameter("crs_pname");   
        String crs_pwd = request.getParameter("crs_ppwd"); 
        String crs_email = request.getParameter("crs_email"); 
        String crs_dept = request.getParameter("crs_dept"); 
        String crs_role = request.getParameter("crs_role");  
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO CRS_PROFREG VALUES(?,?,?,?,?,?)"); 
         
        ps.setString(1,crs_id);
        ps.setString(2,crs_name);      
        ps.setString(3,crs_pwd);
        ps.setString(4,crs_email);
        ps.setString(5,crs_dept);
        ps.setString(6,crs_role);
      
      
        ps.executeUpdate();
            }catch(SQLException e){e.printStackTrace();}
       response.sendRedirect("login.jsp");
      %>      
            
            
        
    </body>
</html>
