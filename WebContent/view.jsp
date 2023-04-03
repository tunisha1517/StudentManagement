<%@ page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{background:#333;
color:white;}
#table_id{
color:black;
backgroundColor:#333;
}
</style>
</head>
<body>

<link rel="stylesheet" href="https://cdn.datatables.net/1.11.1/css/jquery.dataTables.min.css">
<link rel="stylesheet" href="https://cdn.datatables.net/buttons/2.0.0/css/buttons.dataTables.min.css">

<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.datatables.net/1.11.1/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/buttons/2.0.0/js/dataTables.buttons.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jszip/3.1.3/jszip.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/pdfmake.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/pdfmake/0.1.53/vfs_fonts.js"></script>
<script src="https://cdn.datatables.net/buttons/2.0.0/js/buttons.html5.min.js"></script>

<script>
$(document).ready(function() {
    $('#table_id').DataTable( {
        dom: 'Bfrtip',
        buttons: [
            'copyHtml5',
            'excelHtml5',
            'csvHtml5',
            'pdfHtml5'
        ]
    } );
} );
</script>
</head>
<body>
<h3 align=center>Visitor Applicant</h3><br>
<p id=d>
<%
  String res="";
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
	  PreparedStatement ps=con.prepareStatement("select * from regAms");
	  ResultSet rs=ps.executeQuery();
	  out.println("<table align=center id=table_id><thead><th>ID</th><th>Name</th><th>email</th><th>Phone</th><th>course</th><th>date</th><th></th><th>MarkSheet</th></thead><tbody>");
	  while(rs.next())
	  {
		  if(rs.getString(4).equals("4"))
		  out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td><form action=viewpdf.jsp><input type=hidden name=regno value=rs.getString(1)><input type=submit name=n value=MarkSheet></form></td></tr>");
		  else	
			  out.println("<tr><td>"+rs.getString(1)+"</td><td>"+rs.getString(2)+"</td><td>"+rs.getString(3)+"</td><td>"+rs.getString(4)+"</td><td>"+rs.getString(5)+"</td><td>"+rs.getString(6)+"</td><td>Not Completed</td></tr>");
		  
	  }
	  con.close();
	}
	catch(Exception e)
	{
		System.out.println(e);
	}
   out.println("</tbody></table>");
   out.println("hi");
   out.println("hello");
%>
</p>

</body>
</html>