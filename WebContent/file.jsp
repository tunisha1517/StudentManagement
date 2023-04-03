<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import="java.sql.*" %>
<% 
String r=request.getParameter("f1");
try
{
   Class.forName("oracle.jdbc.driver.OracleDriver");
   Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
     PreparedStatement ps=con.prepareStatement("insert into pho values(?)");
     ps.setString(1, r);
     int r1=ps.executeUpdate(); 
     if(r1>=1)
       out.println("1 record is inserted..");

}
catch(Exception e)
{
    out.println(e);
}
%>

</body>
</html>