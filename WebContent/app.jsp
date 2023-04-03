<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background:black ;
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
<center><h1>Applicant Details</h1></center>
<form action=ControllerS method=post>
<% out.println("<input type=hidden name=mob value="+mob+">");%>
<table align=center><tr><td>
<tr><td>Regd No(college):<input type=text name=regN></td></tr>
<tr><td>First Name : <input type=text name=fn></td>
<td>Last Name : <input type=text name=ln></td>
<td>Middle Name : <input type=text name=mn></td><tr>
<tr><td>Aadhar no :<input type=text name=a></td>
<td>Email Address : <input type=text name=e></td>
<td>Phone no:<input type=text name=ap></td></tr>
<tr><td>Gender :<br><input type=text name=g></td>
<td>Date of Birth : <input type=text name=dob></td></tr>
<tr><td>choice 1 :<br><select name="c1" id=o>
  <option>ETC
  <option>CS & IT
  <option>CSE
  <option>CST
  <option>EE
  <option>EEE
  <option>CIVIL
  <option>BIOTECH
 </select></td><td> choice 2 :<br><select name="c1" id=o>
  <option>ETC
  <option>CS & IT
  <option>CSE
  <option>CST
  <option>EE
  <option>EEE
  <option>CIVIL
  <option>BIOTECH
 </select></td><td>choice 3  :<br><select name="c1" id=o>
  <option>ETC
  <option>CS & IT
  <option>CSE
  <option>CST
  <option>EE
  <option>EEE
  <option>CIVIL
  <option>BIOTECH
 </select></td></tr>
<tr><td><button id=sA name=b value=sA>Save</button></td>
</tr></table></form>
</body>
</html>