<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
  background-Image:url("tri2.jpg");
}
#d2{

}

.topnav {
  background-color: #333;
  position:absolute;
  top:8%;
  left:0%;
  width:100%;
}

.topnav a {
  float: left;
  color: #f2f2f2;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 17px;
}

.topnav a:hover {
  background-color: #ddd;
  color: black;
}

.topnav a.active {
  background-color: #04AA6D;
  color: white;
}
#d1{
background:#333;
position:absolute;
top:0%;
height:8%;
width:100%;
left:0%;
color:white;
padding:10px 0px 0px 0px;
}
#fr1{
position : absolute;
width :80%;
height :100%;
top:15%;
left:10%;
visibility:hidden;
}
#fr2{
position : absolute;
width :80%;
height :100%;
top:15%;
left:10%;
visibility:hidden;
}
#fr3{
position : absolute;
width :80%;
height :100%;
top:15%;
left:10%;
visibility:hidden;
}
#fr4{
position : absolute;
width :80%;
height :100%;
top:15%;
left:10%;
visibility:hidden;
}
#fr5,#fr6,#fr7,#fr8{
position : absolute;
width :100%;
height :100%;
top:15%;
left:0%;
visibility:hidden;
}
a{
cursor:pointer;

}
</style>
</head>
<body>
<div id=d1>
<center>ADMIN PAGE</center>
</div>
<div class="topnav">
  <a id=a  onclick="v_Details()"> VIEW STUDENT</a>
  <a id=a onclick="b_Chart()">BRANCH REPORT</a>
  <a id=a onclick="t_Chart()">TODAY'S REPORT</a>
  <a id=a onclick="sa_Chart()">STATUS OF APPLICANT</a>
  <a id=a onclick="c_Chart()">CHOICE</a>  
</div>

<div id=d2 style="padding-left:16px">
<div id=d4><iframe id=fr1 src=view.jsp></iframe></div>
<div id=d4><iframe id=fr5 src=try2.jsp></iframe></div>
<div id=d4><iframe id=fr6 src=try3.jsp></iframe></div>
<div id=d4><iframe id=fr7 src=try5.jsp></iframe></div>
<div id=d4><iframe id=fr8 src=try4.jsp></iframe></div>
</div>
 <script>
 let ba=document.getElementById("a").text;
  function v_Details()
  {
  	 
  	   
  		document.getElementById("fr1").style.visibility="visible";
  		document.getElementById("fr5").style.visibility="hidden";
  		document.getElementById("fr6").style.visibility="hidden";
   	    document.getElementById("fr7").style.visibility="hidden";
   		document.getElementById("fr8").style.visibility="hidden";

  }
 
 
  
  function b_Chart()
  {
  	     document.getElementById("fr1").style.visibility="hidden";
  	     document.getElementById("fr5").style.visibility="visible";
  	     document.getElementById("fr6").style.visibility="hidden";
	     document.getElementById("fr7").style.visibility="hidden";
	     document.getElementById("fr8").style.visibility="hidden";
  	
  } 
  function t_Chart()
  {
	  
  	     document.getElementById("fr1").style.visibility="hidden";
  	     document.getElementById("fr5").style.visibility="hidden";
  	     document.getElementById("fr8").style.visibility="hidden";
  	     document.getElementById("fr7").style.visibility="hidden";
  	     document.getElementById("fr6").style.visibility="visible";
  	
  } 
  function sa_Chart()
  {
	  	 document.getElementById("fr1").style.visibility="hidden";
	  	 document.getElementById("fr5").style.visibility="hidden";
	  	 document.getElementById("fr6").style.visibility="hidden";
	  	 document.getElementById("fr8").style.visibility="hidden";
	  	 document.getElementById("fr7").style.visibility="visible";
  	
  } 
  function c_Chart()
  {
	     document.getElementById("fr1").style.visibility="hidden";
	  	 document.getElementById("fr5").style.visibility="hidden";
	  	 document.getElementById("fr6").style.visibility="hidden";
	  	 document.getElementById("fr7").style.visibility="hidden";
	  	 document.getElementById("fr8").style.visibility="visible";
  } 
  </script>
<%

%>
</body>
</html>
