<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
body{
background:#333;
}
#d1{
position:absolute;
left:35%;
right:35%;
width:30%;
height:10%;
}
#myChart{
background:#333;
position:absolute;
height:1px;
width:20px ;
top:0%;
left:0%;
}
</style>
</head>
<body>
<%@page import="java.sql.*" %>
<%!
int z=0,o=0,t=0,t1=0,f=0;
%>
<%
try
{
	z=0;o=0;t=0;t1=0;f=0;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement ps=con.prepareStatement("select * from regAms");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	if(rs.getInt(7)==1)
    	{
    		o++;
    	}
    	else if(rs.getInt(7)==2)
    	{
    		t++;
    	}
    	else if(rs.getInt(7)==3)
    	{
    		t1++;
    	}
    	else if(rs.getInt(7)==0)
    	{
    		z++;
    	}
    	else
    	{
    		f++;
    	}
    }
}
    catch(Exception e1) 
    		 {System.out.println(e1);} 
%>
 <div id=d1><canvas id="myChart" ></canvas></div>
 <script>
 let b='<%=(int)z%>';
 let m='<%=(int)o%>';
 let b1='<%=(int)t%>';
 let m1='<%=(int)t1%>';
 let b2='<%=(int)f%>';
 const labels = [
	  'Register',
	  'Applicant Details',
	  'Parent Details',
	  'Address Details',
	  'Academic Details'
	  
	];
	const data = {
	  labels: labels,
	  datasets: [{
	    label: 'My First dataset',
	    backgroundColor: ['green','blue','red','pink','orange'],
	    borderColor: 'rgb(255, 99, 132)',
	    data: [b,m,b1,m1,b2],
	  }]
	};
	const confi = {
			  type: 'doughnut',
			  data: data,
			  options: {}
			};
	var myChart = new Chart(
		    document.getElementById('myChart'),
		    confi
		  );
	
 </script>
</body>
</html>