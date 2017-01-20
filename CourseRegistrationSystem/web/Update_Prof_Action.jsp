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
        String crs_pid = request.getParameter("crs_pid");
        String crs_pname = request.getParameter("crs_pname");
        String crs_ppwd = request.getParameter("crs_ppwd");
        String crs_email = request.getParameter("crs_email"); 
        String crs_dept = request.getParameter("crs_dept"); 
        String crs_role = request.getParameter("crs_role"); 
        PreparedStatement ps=con.prepareStatement("update CRS_PROFREG set crs_pid=?,crs_pname=?,crs_ppwd=?,crs_email=?,crs_dept=?,crs_role=? where crs_pid='"+crs_pid+"'");        
            ps.setString(1,crs_pid);
            ps.setString(2,crs_pname);
            ps.setString(3,crs_ppwd);
            ps.setString(4,crs_email);
            ps.setString(5,crs_dept);
            ps.setString(6,crs_role);
        int k=ps.executeUpdate();
        if(k!=0)
            response.sendRedirect("admin.jsp");
      %>
    </body>
</html>
