
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
font-size:25px;
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
left:15%;
}

</style>
</head>
<body>
<%
String mob=(String)session.getAttribute("p1");
System.out.println(mob);
%>
<center><h1>Address Details</h1></center>
<form action=ControllerS method=post>
<table align=center>
<% out.println("<input type=hidden name=mob value="+mob+">");%>
<tr><td>
Country : <br><input type=text name=c></td><td>
 State : <br><input type=text name=s></td>
<tr><td>
 House No.: <input type=text name=h></td><td>
Address Line :<input type=text name=a></td></tr>
<tr><td>
Street : <br><input type=text name=st></td><td>
Landmark:<input type=text name=l></td>
<td>
PinCode :<input type=text name=p></td></tr>
<tr><td><button id=save name=b value=sAd>Save</button></td></tr>
</table></form>
</body>
</html>
</body>
</html>