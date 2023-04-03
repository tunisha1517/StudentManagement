<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<style>
body {
  background: teal;
  font-family: "Arial";
}

.container {
  position:absolute;
  top:15%;
  left:5%;
  max-width: 1250px;
  margin: 30px auto 30px;
  padding: 10px;
  width: 90%;
  height: 95%;
  background:teal;
  
}



main {
      padding: 20px 20px 0px 20px;
}

.photo {
  width: 200px;
  height: 200px;
  margin-top: -120px;
  border-radius: 100px;
  border: 4px solid #fff;
}
#nav{
position:absolute;
top:5%;
right:15%;
 word-spacing:40px;
  color: #f2f2f2;
  padding: 30px 0px 30px 30px;
  text-decoration: none;
  font-size: 13px;
  width:40%;
  background:#333}
  #fr1{
position : absolute;
width :70%;
height :70%;
top:30%;
left:30%;
visibility:hidden;
}
#fr2{
position : absolute;
width :70%;
height :70%;
top:30%;
left:30%;
visibility:hidden;
}
#fr3{
position : absolute;
width :70%;
height :70%;
top:30%;
left:30%;
visibility:hidden;
}
#fr4{
position : absolute;
width :70%;
height :70%;
top:30%;
left:30%;
visibility:hidden;
}
#fr5{
position : absolute;
width :70%;
height :70%;
top:30%;
left:27%;
visibility:hidden;
}
a{
cursor:pointer;

}
.active{
position:absolute;
width:50%;
color:white;
font-size:20px;
}
</style>
<title>Insert title here</title>
</head>
<body>
<% 
String p2=(String)session.getAttribute("p1");
System.out.println(p2);
session.setAttribute("p2",p2);
%>
<div class="container">
  <main>
    <div class="row">
      <div class="left col-lg-4">
        <div class="photo-left">
          <img class="photo" src="https://images.pexels.com/photos/1804796/pexels-photo-1804796.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=750&w=1260"/>
          <div class="active">NAME:Tunisha-Choudhary<br>BRANCH:CSE<br>REGD NO:210000<br></div>
         <div id=nav>
  <a   onclick="v_Details()">PERSONAL </a>
  <a  onclick="a_Details()"> PARENT</a>
  <a  onclick="s_Details()">ADDRESS</a>
  <a  onclick="va_Details()">ACADEMY</a>
 
         </div>
    <div id=d4>
    <div id=d2 style="padding-left:16px">
<div id=d4><iframe id=fr1 src=per.jsp></iframe></div>
<div id=d4><iframe id=fr2 src=par.jsp></iframe></div>
<div id=d4><iframe id=fr3 src=add2.jsp></iframe></div>
<div id=d4><iframe id=fr5 src=try.html></iframe></div>
<div id=d4><iframe id=fr4 src=viewA.jsp></iframe></div>

</div>
<script>

function v_Details()
{
	 
	    document.getElementById("fr3").style.visibility="hidden";
	    document.getElementById("fr4").style.visibility="hidden";
		document.getElementById("fr2").style.visibility="hidden";
		document.getElementById("fr1").style.visibility="visible";
		document.getElementById("fr5").style.visibility="hidden";

}
 function a_Details()
{
	document.getElementById("fr2").style.visibility="visible";
	 document.getElementById("fr1").style.visibility="hidden";
	    document.getElementById("fr3").style.visibility="hidden";
	    document.getElementById("fr4").style.visibility="hidden";
	  document.getElementById("fr5").style.visibility="hidden";
	
}
function s_Details()
{
	 document.getElementById("fr1").style.visibility="hidden";
	    document.getElementById("fr4").style.visibility="hidden";
		document.getElementById("fr2").style.visibility="hidden";
	document.getElementById("fr3").style.visibility="visible";
	document.getElementById("fr5").style.visibility="hidden";
	
}
function va_Details()
{
	 document.getElementById("fr1").style.visibility="hidden";
	    document.getElementById("fr3").style.visibility="hidden";
		document.getElementById("fr2").style.visibility="hidden";
	document.getElementById("fr4").style.visibility="visible";
	document.getElementById("fr5").style.visibility="hidden";
	
}
</script>
    </div>
        </div>
       </div>
       </div>
      </main>
</div>
</body>
</html>