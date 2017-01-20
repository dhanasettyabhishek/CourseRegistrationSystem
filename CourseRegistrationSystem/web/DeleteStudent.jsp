<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbconnect.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>C.R.S</title>
    </head>
    <body>
        <%
            try{
        String pid = request.getParameter("id");
   
        PreparedStatement ps = con.prepareStatement("DELETE FROM CRS_REGISTRATION WHERE crs_id='"+pid+"'"); 
     

      int k=ps.executeUpdate();
        if(k!=0)
            response.sendRedirect("admin.jsp");
            }catch(SQLException e){e.printStackTrace();}
       
       
      %>      
            
            
        
    </body>
</html>
