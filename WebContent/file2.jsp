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
<%@page import="java.io.*" %>
<%
Document d = new Document (PageSize.A4);
try
{
	PdfWriter.getInstance(d, new FileOutputStream("sample.pdf"));
	d.open ();
	d.addCreator("Sample Demo.java");
	d.addAuthor("Sundar");
	d.addTitle("First PDF");
     Class.forName("oracle.jdbc.driver.OracleDriver");
     Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
     PreparedStatement ps=con.prepareStatement("select * from pho");
    ResultSet rs=ps.executeQuery();
     while(rs.next())
     {
    	out.println(rs.getString(1));
     }
     
}
catch(Exception e)
{
    out.println(e);
}
%>

</body>
</html>