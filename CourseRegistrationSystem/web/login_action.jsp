<%-- 
    Document   : login_action
    Created on : Jan 11, 2017, 8:41:36 PM
    Author     : Abhishek Dhanasetty
--%>


<%@include file="dbconnect.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
        <%
            String id=request.getParameter("crsid");
            String stu="student";
            String prof="Professor";
            session.setAttribute("id",id);
            String pwd=request.getParameter("crspwd");
            String role=request.getParameter("crs_role");
            Statement st=con.createStatement();
            ResultSet rs=st.executeQuery("select crs_ppwd,crs_role from CRS_PROFREG where crs_pid='"+id+"'");
            if(id.equals("123456"))
            {
                if(pwd.equals("123456"))
                {%>
                <jsp:forward page="admin.jsp"></jsp:forward> 
               <% }
            }
            else if(rs.next())
            {
                String crs_ppwd=rs.getString(1);
                String crs_role1=rs.getString(2);
                if(crs_ppwd.equals(pwd)&&prof.equals(role)&&prof.equals(crs_role1))
                {%>
                <jsp:forward page="Professor.jsp"></jsp:forward> 
               <%
                    
                }
                else if(crs_ppwd.equals(pwd)&&stu.equals(role)&&stu.equals(crs_role1))
                {%>
                <jsp:forward page="student.jsp"></jsp:forward> 
               <%
                }
                else
                {
                        out.println("Invalid Details");
                }
            }
             else{
                 out.println("Invalid Details");
             }
           
            
      %>
    </body>
</html>