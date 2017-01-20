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
String pid = request.getParameter("id");
Statement st=con.createStatement();
ResultSet rs=st.executeQuery("select * from CRS_PROFREG WHERE crs_pid='"+pid+"'");
while(rs.next())
{
    %>
    <form action="Update_Prof_Action.jsp" method="POST">
        <table border="1px">
            <tr><th>Update Details... </th></tr>
            <tr><td><label>Professor Id:</label></td>
            <td><input type="text" value="<%=rs.getString(1)%>" name="crs_pid"/></td></tr>
            <tr><td><label>Full Name:</label></td>
            <td><input type="text" value="<%=rs.getString(2)%>" name="crs_pname"/></td></tr>
            <tr><td><label>Password:</label></td>
            <td><input type="text" value="<%=rs.getString(3)%>" name="crs_ppwd"/></td></tr>
            <tr><td><label>Email Id:</label></td>
            <td><input type="text" value="<%=rs.getString(4)%>" name="crs_email"/></td></tr>
            <tr><td><label>Department:</label></td>
            <td><input type="text" value="<%=rs.getString(5)%>" name="crs_dept"/></td></tr>
            <tr><td><label>Role:</label></td>
            <td><input type="text" value="<%=rs.getString(6)%>" name="crs_role"/></td></tr>
            <tr><td><input type="submit" value="Update"/></td>&nbsp;&nbsp;&nbsp;<td><input type="reset" value="Reset"/></td></tr>
        </table>
    </form>   
    <%}%>
    </body>
</html>
