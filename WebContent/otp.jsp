<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@ page import="java.sql.*" %>
<%
   int p2=(int) Math.floor(Math.random()*10000);
   System.out.println("hi");
   String mobile=request.getParameter("mobile");
  
		String m="https://www.fast2sms.com/dev/bulkV2?authorization=zexSFVgTBywDEkljr4Adq9GYHPifu8QX7nMJWL6ZhcNOmtC2RKPi1FT03e7jUSm9hGNJcWK8ka2xEHOn&route=v3&sender_id=TXTIND&message=Your otp is"+p2+"&language=english&flash=0&numbers="+mobile;
		response.sendRedirect(response.encodeRedirectURL(m));


 
%>
</body>
</html>