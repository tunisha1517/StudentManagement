<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background:teal;
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
font-size:20px;
padding: 1% 3% 0% 5%;
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
left:5%;
}

</style>
</head>
<body>
<%
String mob=(String)session.getAttribute("p1");
System.out.println(mob);
%>
<center><h1>Parent Details</h1></center>
<table align=center>
<form action=ControllerS method=post>
<% out.println("<input type=hidden name=mob value="+mob+">");%>
<tr><td>Father's Name : <input type=text name=nf></td>
<td>Father's Phone Number : <input type=text name=fp></td></tr>
<tr><td>Mother's Name : <input type=text name=nm></td>
<td>Mother's Phone Number : <input type=text name=mp></td></tr>
<tr>
<td>Father's Occupation : <input type=text name=fo></td>
<td>Mother's Occupation : <input type=text name=mo></td></tr>
<tr>
<td><button id=save name=b value=sP>Save</button></td>
</tr>
</form>
</table>
</body>
</html>