<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%@page import ="java.sql.*" %>
<%@ page import="java.io.IOException, java.io.*"%>
<%
try
{
    int c=0;String r="";String[]r1;	
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement ps=con.prepareStatement("select * from regAca");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    { 
    	r=rs.getString(11);
    	
    			r1=r.split("\\\\");
    			System.out.println(r1[2]);
    			 response.setContentType("text/html");
    			  
    			  //String filename="timetable.pdf";
    			  String filepath="c:\\updata\\";
    			  String file=rs.getString(11);
    			  System.out.println(file);
    			  response.setContentType("application/pdf");
    			  response.setHeader("Content-Disposition", "inline; filename="+r1[2]);
    			  OutputStream ot = response.getOutputStream(); 
    			  try (FileInputStream in = new FileInputStream(file)) {
    			    int content;
    			    while ((content = in.read()) != -1) {
    			        ot.write(content);
    			    }
    			  } catch (IOException e) {
    			    e.printStackTrace();
    			  }
    			  ot.close();
    		
    			
    	
      
    }
}
    catch(Exception e1) 
	 {System.out.println(e1);} 
    %>

</body>
</html>