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
font-size:15px;
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
<table border="1">
<tr><th>RegNo</th><th>F_NAME</th><th>M_NAME</th><th>L_NAME</th><th>ADHAR</th><th>EMAIL</th><th>MOBILE NO.</th><th>GENDER</th><th>DOB</th></tr>
<body>
<%@page import="java.sql.*" %>
<%
String p1=(String)session.getAttribute("p2");
System.out.println(p1); 
try
{
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement ps=con.prepareStatement("select * from regApp");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	if(p1.equals(rs.getString(1)))
    	  out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>"+rs.getString(7)+"</td><td>"+rs.getString(8)+"</td><td>"+rs.getString(9)+"</td></tr>");
    }
}
    catch(Exception e1) 
    		 {System.out.println(e1);}  %>
</body>
</table>
</html>