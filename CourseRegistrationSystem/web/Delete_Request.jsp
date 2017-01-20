
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbconnect.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title></title>
    </head>
    <body>
        <%
            try{
        String sid = request.getParameter("id");
   
        PreparedStatement ps = con.prepareStatement("DELETE FROM CRS_REG_COURSE WHERE crs_sid='"+sid+"'"); 
     

      int k=ps.executeUpdate();
        if(k!=0)
            response.sendRedirect("Professor.jsp");
            }catch(SQLException e){e.printStackTrace();}
       
       
      %>      
            
            
        
    </body>
</html>
