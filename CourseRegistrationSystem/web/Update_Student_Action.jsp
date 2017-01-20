<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="dbconnect.jsp" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update</title>
    </head>
    <body>
        <%
      String sid = request.getParameter("sid");
        String name = request.getParameter("name");
        String email = request.getParameter("email");
        String phone = request.getParameter("phone"); 
        String pwd = request.getParameter("pwd"); 
        String dept = request.getParameter("dept");  
        PreparedStatement ps=con.prepareStatement("update CRS_REGISTRATION set crs_id=?,crs_name=?,crs_email=?,crs_phone=?,crs_pwd=?,crs_dept=? where crs_id='"+sid+"'");
            ps.setString(1,sid);
            ps.setString(2,name);
            ps.setString(3,email);
            ps.setString(4,phone);
            ps.setString(5,pwd);
            ps.setString(6,dept);
              int k=ps.executeUpdate();
          if(k!=0)
          {
             response.sendRedirect("admin.jsp");
          }
      %>
    </body>
</html>
