<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%

String r=(String)session.getAttribute("phn");
   
System.out.println(r);
session.setAttribute("p",r);



%>
</body>
</html>