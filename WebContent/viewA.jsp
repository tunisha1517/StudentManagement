
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background:#333;
}
h1{
    color:white;
    font-style: Verdana;
    
   }
   #h{
      position :absolute;
      top:0%;
      left:10%;
      text-align:center;
   }
   
  
#pr{
color:white;

}

td{
font-size:25px;
padding: 1% 3% 0% 4%;
margin: 0px auto;
color:white;
}
#save{
position:absolute;
left:15%;
width:10%;
height:15%;
}
#edit{
position:absolute;
right:15%;
width:10%;
height:15%;
}
table{
position:absolute;
top:20%;
left:10%;
width:80%;
color:white;
}
#d3{
position:absolute;
width:100%;
top:30%;
height:80%;

}
</style>
</head>
<body>
<div id=d1>
<div id=d2>
<center><h1>View</h1></center>
<form action=viewA.jsp method=post>
<table align=center>
<tr><td><input type=submit name=a value=Staff></td>
<td><input type=submit name=a value=Accountant></td>
<td><input type=submit name=a value=Student></td></tr>
</table></form></div>
<div id=d3>
<table border=1 bgcolor=black>
<tr><th>NAME</th><th>Mobile</th><th>Age</th><th>Permission</th></tr>
<%@page import="java.sql.*" %>
<%
if(request.getParameter("a")!=null){
try
{
	String a=request.getParameter("a");
	if(a.equals("Staff")){
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement ps=con.prepareStatement("select * from sta");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getInt(3)+"</td><td><form action=update.jsp><input type=submit name=n3 value=Accept></td><td><input type=submit value=Block></td></tr></form>");     
    }  
    
  }
 else if(a.equals("Accountant"))
 {
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	    PreparedStatement ps=con.prepareStatement("select * from acc");
	    ResultSet rs=ps.executeQuery();
	    while(rs.next())
	    {
	    	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td><form action=update.jsp><input type=submit name=n3 value=Accept></td><td><input type=submit value=Block></td></tr></form>");     
	    }  
	    
 }
else
{
	 Class.forName("oracle.jdbc.driver.OracleDriver");
	    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	    PreparedStatement ps=con.prepareStatement("select * from regAms");
	    ResultSet rs=ps.executeQuery();
	    while(rs.next())
	    {
	    	out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td><form action=update.jsp><input type=submit name=n3 value=Accept></td><td><input type=submit value=Block></td></tr></form>");     
	    }    }  
	    
}
 catch(Exception e1) 
 {System.out.println(e1);}
}
%>
</table>
</div>
</div>
</body>
</html>
</body>
</html>