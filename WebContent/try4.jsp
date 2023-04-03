<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
<style>
#d1{
position:absolute;
width:30%;
height:50%;
left:5%;
color:white;
}
#d2{
position:absolute;
width:30%;
height:50%;
left:36%;
color:white;
}
#d3{
position:absolute;
width:30%;
height:50%;
right:5%;
color:white;
}
body{
background:#333;
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
int b=0,m=0,b1=0,m1=0,b2=0,m2=0,b3=0,m3=0,e=0,c=0,c11=0,c22=0,e1=0,e2=0,e3=0,c33=0,b4=0,e4=0,c4=0,c5=0,c6=0,e5=0,e6=0,c7=0,b5=0;
%>
<%-- <%
try
{
	b=0;m=0;b1=0;m1=0;b2=0;m2=0;b3=0;m3=0;e=0;c=0;c1=0;c2=0;e1=0;e2=0;c3=0;b4=0;e4=0;c4=0;c5=0;c6=0;e5=0;e6=0;c7=0;b5=0;
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
    PreparedStatement ps=con.prepareStatement("select * from regApp");
    ResultSet rs=ps.executeQuery();
    while(rs.next())
    {
    	if(rs.getString(10).equals("ETC"))
    	   b++;
    	else if(rs.getString(10).equals("CS & IT"))
    		m++;
    	else if(rs.getString(10).equals("CSE"))
    		b1++;
    	else if(rs.getString(10).equals("CST"))
    		m1++;
    	else if(rs.getString(10).equals("EE"))
    		b2++;
    	else if(rs.getString(10).equals("EEE"))
    		m2++;
    	else if(rs.getString(10).equals("CIVIL"))
    		b3++;
    	else{
    	    m3++;}

    	if(rs.getString(11).equals("ETC"))
    	   e++;
    	else if(rs.getString(11).equals("CS & IT"))
    		c++;
    	else if(rs.getString(11).equals("CSE"))
    		c1++;
    	else if(rs.getString(11).equals("CST"))
    		c2++;
    	else if(rs.getString(11).equals("EE"))
    		e1++;
    	else if(rs.getString(11).equals("EEE"))
    		e2++;
    	else if(rs.getString(11).equals("CIVIL"))
    		c3++;
    	else{
    	    b4++;}
    	if(rs.getString(11).equals("ETC"))
     	   e4++;
     	else if(rs.getString(11).equals("CS & IT"))
     		c4++;
     	else if(rs.getString(11).equals("CSE"))
     		c5++;
     	else if(rs.getString(11).equals("CST"))
     		c6++;
     	else if(rs.getString(11).equals("EE"))
     		e5++;
     	else if(rs.getString(11).equals("EEE"))
     		e6++;
     	else if(rs.getString(11).equals("CIVIL"))
     		c7++;
     	else{
     	    b5++;}
    	
    }
}
    catch(Exception e1) 
    		 {System.out.println(e1);} 
System.out.println(m);
%> --%>
 <div id=d1> Choice 1<canvas id="c1" ></canvas></div>
 <div id=d2> Choice 2<canvas id="c2" ></canvas></div>
 <div id=d3> Choice 3<canvas id="c3" ></canvas></div>
 <script>
 let b='<%=(int)b%>';
 let m='<%=(int)m%>';
 let b1='<%=(int)b1%>';
 let m1='<%=(int)m1%>';
 let b2='<%=(int)b2%>';
 let m2='<%=(int)m2%>';
 let b3='<%=(int)b3%>';
 let m3='<%=(int)m3%>';
 let e='<%=(int)e%>';
 let c='<%=(int)c%>';
 let c11='<%=(int)c11%>';
 let c22='<%=(int)c22%>';
 let e1='<%=(int)e1%>';
 let e2='<%=(int)e2%>';
 let c33='<%=(int)c33%>';
 let b4='<%=(int)b4%>';
 let e4='<%=(int)e4%>';
 let c4='<%=(int)c4%>';
 let c5='<%=(int)c5%>';
 let c6='<%=(int)c6%>';
 let e5='<%=(int)e5%>';
 let e6='<%=(int)e6%>';
 let c7='<%=(int)c7%>';
 let b5='<%=(int)b5%>';

 const label1 = [
	  'ETC',
	  'CS & IT',
	  'CSE',
	  'EE',
	  'EEE',
	  'CIVIL',
	  'BIOTECH'
	];
	const data1 = {
	  labels: label1,
	  datasets: [{
	    label: 'My First dataset',
	    backgroundColor: ['green','blue','red','pink','orange','magenta','yellow','brown'],
	    borderColor: 'white',
	    data: [2,3,4,1,2,3,4,5],
	  }]
	};
	const data2 = {
			  labels: label1,
			  datasets: [{
			    label: 'My First dataset',
			    backgroundColor: ['green','blue','red','pink','orange','magenta','yellow','brown'],
			    borderColor: 'white',
			    data: [2,3,4,1,2,3,4,5],
			  }]
			};
	const data3 = {
			  labels: label1,
			  datasets: [{
			    label: 'My First dataset',
			    backgroundColor: ['green','blue','red','pink','orange','magenta','yellow','brown'],
			    borderColor: 'white',
			    data: [2,3,4,1,2,3,4,5],
			  }]
			};
	const confi1 = {
			  type: 'doughnut',
			  data: data1,
			  options: {}
			};
	const confi2 = {
			  type: 'doughnut',
			  data: data2,
			  options: {}
			};
	const confi3 = {
			  type: 'doughnut',
			  data: data3,
			  options: {}
			};
	var c1 = new Chart(
		    document.getElementById('c1'),
		    confi1
		  );
	var c2 = new Chart(
		    document.getElementById('c2'),
		    confi2
		  );
	var c3 = new Chart(
		    document.getElementById('c3'),
		    confi3
		  );
	
 </script>
</body>
</html>