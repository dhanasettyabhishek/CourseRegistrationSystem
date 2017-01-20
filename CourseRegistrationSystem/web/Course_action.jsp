<%-- 
    Document   : RegisterStu
    Created on : 8 May, 2015, 11:58:53 PM
    Author     : Dhanasetty Abhishek
--%>
<%@include file="dbconnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Course</title>
    </head>
    <body>
        
        <%
            try{
        String crs_id = request.getParameter("crs_no");
        String crs_dept = request.getParameter("crs_dept");   
        String crs_name = request.getParameter("crs_name"); 
        String crs_det = request.getParameter("crs_det"); 

        PreparedStatement ps = con.prepareStatement("INSERT INTO CRS_COURSE VALUES(?,?,?,?)"); 
         
       ps.setString(1,crs_id);
       ps.setString(2,crs_dept);      
       ps.setString(3,crs_name);
       ps.setString(4,crs_det);
      
      
       ps.executeUpdate();
            }catch(SQLException e){e.printStackTrace();}
       response.sendRedirect("Professor.jsp");
      %>      
            
            
        
    </body>
</html>
