<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
table{
color:white;
font-size:20px;
}
#d1{
position:absolute;
right:0%;
width:50%;
background:white;
color:white;
}
</style>
</head>
<table border=1>
<tr><th>Father's Name </th><th>Father's No.</th><th>Mother's Name</th><th>Mother's No.</th><th>Father's Occupation</th><th>Mother's Occupation</th></tr>
<body>
<%@page import="java.sql.*" %>
<%
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement ps=con.prepareStatement("select * from regPar");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	  out.println("<tr><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td></tr>");
    }
}
    catch(Exception e1) 
    		 {System.out.println(e1);}  %>
</body>
</table>
</html>