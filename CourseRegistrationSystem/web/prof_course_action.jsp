
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
        String crs_sid = request.getParameter("crs_sid");
        String crs_dept = request.getParameter("crs_dept2");   
        String crs_no = request.getParameter("crs_no2"); 
        String crs_name = request.getParameter("crs_name2"); 
        String crs_det = request.getParameter("crs_det2"); 
        
        PreparedStatement ps = con.prepareStatement("INSERT INTO CRS_REG_COURSE VALUES(?,?,?,?,?)"); 
         
       ps.setString(1,crs_sid);
       ps.setString(2,crs_dept);      
       ps.setString(3,crs_no);
       ps.setString(4,crs_name);
       ps.setString(5,crs_det);
      
      
       ps.executeUpdate();
            }catch(SQLException e){e.printStackTrace();}
       response.sendRedirect("student.jsp");
      %>      
            
            
        
    </body>
</html>
