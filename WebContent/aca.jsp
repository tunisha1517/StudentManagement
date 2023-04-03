<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
background:teal;
background-blend-mode: lighten;
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
table
{
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
<center><h1>Academic Details</h1></center>
<form action=ControllerS method=post enctype="multipart/form-data">
<table align=center>
<% out.println("<input type=hidden name=mob value="+mob+">");%>
<tr><td>
Type of Exam :<br><select name="o" id=o>
  <option>JEE
  <option>OJEE
 </select> </td><td>
OJEE Rank: <input type=text name=or></td><td>
OJEE Application no : <input type=text name=oa></td><tr><tr><td>
+2 Roll No :<input type=text name=r></td><td>
+2 School No : <input type=text name=s></td><td>
+2 Center No :<br><input type=text name=c></td></tr><tr><td>
% in 10th :<input type=text name=pt></td><td>
% in 12th : <input type=text name=pw></td><td>
% in 13th :<br><input type=text name=pr></td></tr>
<tr><td>Rank Card : <br><input type="file" name="file1"  id="t"/>
</td><td>10th Result : <br><input type="file" name="file2"  id="t"/></td><td>12th Result : <br><input type="file" name="file3"  id="t"/></td></tr>
<tr><td><button id=save name=b value=sAc>Save</button>
</table></form>
</body>
</html>