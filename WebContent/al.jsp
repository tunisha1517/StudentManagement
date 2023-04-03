<!DOCTYPE html>
<html>
<head>
<style>
body {
  font-family: "Lato", sans-serif;
  background-Image:url("tri2.jpg");
}

.sidenav {
  height: 100%;
  width: 0;
  position: fixed;
  z-index: 1;
  top: 0;
  left: 0;
  background-color: #111;
  overflow-x: hidden;
  transition: 0.5s;
  padding-top: 60px;
}

.sidenav a {
  padding: 8px 8px 8px 32px;
  text-decoration: none;
  font-size: 25px;
  color: #818181;
  display: block;
  transition: 0.3s;
}

.sidenav a:hover {
  color: #f1f1f1;
}

.sidenav .closebtn {
  position: absolute;
  top: 0;
  right: 25px;
  font-size: 36px;
  margin-left: 50px;
  cursor:pointer;
}

@media screen and (max-height: 450px) {
  .sidenav {padding-top: 15px;}
  .sidenav a {font-size: 18px;}
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
#fr5{
position : absolute;
width :80%;
height :100%;
top:15%;
left:10%;
visibility:hidden;
}
#d3{
position:absolute;
top:0%;
left:0%;
width:100%;
height:10%;
color:white;
background:black;
}
#l{
position:absolute;
left:10%;
}
</style>
</head>
<body>
<%
String p=request.getParameter("n");
System.out.println("al"+p);
session.setAttribute("p1",p);
%>
<div id="mySidenav" class="sidenav">
  <a class="closebtn" onclick="closeNav()">X</a>
  <a id=a1 style="font-size:25px;cursor:pointer"  onclick="a_Details()">Application Details</a>
  <a id=a1 style="font-size:25px;cursor:pointer"onclick="p_Details()">Parent Details</a>
  <a id=a1 style="font-size:25px;cursor:pointer"onclick="ad_Details()">Address Details</a>
  <a id=a1 style="font-size:25px;cursor:pointer"onclick="ac_Details()">Academic Details</a>
   <a id=a1 style="font-size:25px;cursor:pointer"onclick="ac_Details()">Fee Structure</a>
  <a id=a1 style="font-size:25px;cursor:pointer"onclick="pr_Details()">Profile</a>
  
</div>

<div id=d2>
<script>
     var img=['tr3.jpg','tat6.JPG','tat3.jpeg','tr6.png','tri2.jpg'];
     var i=0;
     function back_C(){
        	 document.getElementById("d2").style.backgroundImage="url("+img[i]+")";
        	 
        	  i++;
        	  if(i==4){
        		  document.getElementById("d2").style.backgroundImage="url("+img[i]+")";
        		  i=0;}
         setTimeout("back_C()",3000);}
     back_C();
    </script>
<div id=d3><span id=l style="font-size:30px;cursor:pointer"  onclick="openNav()"><br>-Menu</span></div>
<div id=d4><iframe id=fr1 src=app.jsp></iframe></div>
<div id=d4><iframe id=fr2 src=par1.jsp></iframe></div>
<div id=d4><iframe id=fr3 src=add.jsp></iframe></div>
<div id=d4><iframe id=fr4 src=aca.jsp></iframe></div>
<div id=d4><iframe id=fr5 src=profile.jsp></iframe></div>
</div>
<script>
function openNav() {
  document.getElementById("mySidenav").style.width = "250px";
}

function closeNav() {
  document.getElementById("mySidenav").style.width = "0";
}
function a_Details()
{
	 
	    document.getElementById("fr3").style.visibility="hidden";
	    document.getElementById("fr4").style.visibility="hidden";
		document.getElementById("fr2").style.visibility="hidden";
		document.getElementById("fr5").style.visibility="hidden";
		document.getElementById("fr1").style.visibility="visible";

}
 function p_Details()
{
	document.getElementById("fr2").style.visibility="visible";
	 document.getElementById("fr1").style.visibility="hidden";
	    document.getElementById("fr3").style.visibility="hidden";
	    document.getElementById("fr5").style.visibility="hidden";
	    document.getElementById("fr4").style.visibility="hidden";
	
}
function ad_Details()
{
	 document.getElementById("fr1").style.visibility="hidden";
	    document.getElementById("fr4").style.visibility="hidden";
		document.getElementById("fr2").style.visibility="hidden";
		document.getElementById("fr5").style.visibility="hidden";
	document.getElementById("fr3").style.visibility="visible";
	
}
function ac_Details()
{
 document.getElementById("fr1").style.visibility="hidden";
	    document.getElementById("fr3").style.visibility="hidden";
		document.getElementById("fr2").style.visibility="hidden";
		document.getElementById("fr5").style.visibility="hidden";
	document.getElementById("fr4").style.visibility="visible";

	
} 
function pr_Details()
{
	document.getElementById("fr1").style.visibility="hidden";	    
    document.getElementById("fr4").style.visibility="hidden";
    document.getElementById("fr2").style.visibility="hidden";
	document.getElementById("fr3").style.visibility="hidden";
	document.getElementById("fr5").style.visibility="visible";
	
}
</script>
   
</body>
</html> 
