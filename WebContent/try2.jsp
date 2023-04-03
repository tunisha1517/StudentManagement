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
int b=0,m=0,b1=0,m1=0,b2=0,m2=0,b3=0,m3=0,m4=0;
%>
<%
try
{
	b=0;m=0;b1=0;m1=0;b2=0;m2=0;b3=0;m3=0;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement ps=con.prepareStatement("select * from regAms");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	if(rs.getString(5).equals("B.Tech"))
    	   b++;
    	else if(rs.getString(5).equals("M.Tech"))
    		m++;
    	else if(rs.getString(5).equals("BCA"))
    		b1++;
    	else if(rs.getString(5).equals("MCA"))
    		m1++;
    	else if(rs.getString(5).equals("BBA"))
    		b2++;
    	else if(rs.getString(5).equals("MBA"))
    		m2++;
    	else if(rs.getString(5).equals("B.Sc"))
    		b3++;
    	else{
    	    m3++;}
    	
    }
}
    catch(Exception e1) 
    		 {System.out.println(e1);} 
System.out.println(m);
%>
  <div id=d1><canvas id="myChart" ></canvas></div>
 <script>
 let b='<%=(int)b%>';
 let m='<%=(int)m%>';
 let b1='<%=(int)b1%>';
 let m1='<%=(int)m1%>';
 let b2='<%=(int)b2%>';
 let m2='<%=(int)m2%>';
 let b3='<%=(int)b3%>';
 let m3='<%=(int)m3%>';

 const labels = [
	  'B_Tech',
	  'M.Tech',
	  'BCA',
	  'BBA',
	  'MBA',
	  'B.Sc',
	  'M.Sc'
	];
	const data = {
	  labels: labels,
	  datasets: [{
	    label: 'My First dataset',
	    backgroundColor: ['green','blue','red','pink','orange','magenta','yellow','brown'],
	    borderColor: 'rgb(255, 99, 132)',
	    data: [b,m,b1,m1,b2,m2,b3,m3],
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