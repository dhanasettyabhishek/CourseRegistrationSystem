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
ResultSet rs=st.executeQuery("select * from CRS_REGISTRATION WHERE crs_id='"+pid+"'");
while(rs.next())
{
    %>
    <form action="Update_Student_Action.jsp" method="POST">
        <table border="1px">
            <tr><th>Update Details... </th></tr>
            <tr><td><label>Student Id:</label></td>
            <td><input type="text" value="<%=rs.getString(1)%>" name="sid"/></td></tr>
            <tr><td><label>Full Name:</label></td>
            <td><input type="text" value="<%=rs.getString(2)%>" name="name"/></td></tr>
            <tr><td><label>EMAIL ID:</label></td>
            <td><input type="text" value="<%=rs.getString(3)%>" name="email"/></td></tr>
            <tr><td><label>PHONE NO:</label></td>
            <td><input type="text" value="<%=rs.getString(4)%>" name="phone"/></td></tr>
            <tr><td><label>PASSWORD:</label></td>
            <td><input type="text" value="<%=rs.getString(5)%>" name="pwd"/></td></tr>
            <tr><td><label>DEPARTMENT:</label></td>
            <td><input type="text" value="<%=rs.getString(6)%>" name="dept"/></td></tr>
            <tr><td><input type="submit" value="Update"/></td>&nbsp;&nbsp;&nbsp;<td><input type="reset" value="Reset"/></td></tr>
        </table>
    </form>   
    <%}%>
    </body>
</html>