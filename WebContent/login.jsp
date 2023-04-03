<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login page</title>
<style>
#d1{
position:absolute;
top:0px;
width:50%;
left:0%;
height:15%;
background:black;
}
#d2{
position:absolute;
top:0px;
right:0%;
width:50%;
height:15%;
background:black;
}
#d3{
position:absolute;
 top:15%;
 left:0%;
 width:100%;
 height:85%;
  background-Image:url("tr3.jpg"); 
  background-position:center;
   background-size:cover;
}
#i1{
  width:40%;
 height:60%; 
 padding:10px 70px;
}
#p1{
color:white;
padding: 1px 0px 30px  250px;
font-style:verdana;
}
#d4{
position:absolute;
box-shadow : 0 0 15px white;
right:1%;
background:black;
width:400px;
height:400px;
top:16%;
color:white;
border-radius:10px;

}
#d5{
position:absolute;
color:black;
background:white;
top:0%;
width:400px;
height:10%;
border-radius:10px;
padding-bottom:20px;
}
#h3{
 position:absolute;
 color :black;
 font-style:verdana;
 padding-left:100px;
}
#p2{
position:absolute;
 top:10%; 
 font-style:verdana;
 font-size:20px;
 left:10%;
 
 right:10px;
}
input{
border-radius:10px;
height:25px;
width: 198px;

}
#b{
  height:40px;
   width:60px;
   background : thistle;
   border-radius:100%;
   color:black;
   font-style:verdana;
   cursor: pointer;
    visibility: hidden; 
}
#in{
 width:  85%;
 height: 30px;
 background :plum;
 font-style:verdana;
 font-size: 15px;
 cursor:pointer;
}
#o{
border-radius:10px;
height:25px;
width: 80px;
}
#a{

text-decoration:none;
color:purple;
cursor:pointer;

}
#otp{
visibility:hidden;
width:40%;

}
#otp2{
/* visibility:hidden; */
width:40%;
}
#pn{
/* visibility:hidden; */
}
#log{
width:  85%;
 height: 30px;
 background :plum;
 font-style:verdana;
 font-size: 15px;
 cursor:pointer;
/*  visibility:hidden; */
}
#pr3{
position:absolute;
 top:10%; 
 font-style:verdana;
 font-size:20px;
 left:10%;
 visibility:hidden;
 right:10px;
}
</style>
</head>
<body>
<div id=d1>
<img src=tr.jpg id=i1>
</div>
<div id=d2>
<p id=p1>Help Desk : 9097186189<br>9:00 AM to 5:00PM Monday-Saturday(excluding public holiday )<br>Email : admissions.india@srmist.edu.in</p>
</div>
<div id=d3>
<script>
     var img=['tr3.jpg','tat6.JPG','tat3.jpeg','tr6.png','tri2.jpg'];
     var i=0;
     function back_Change(){
        	 document.getElementById("d3").style.backgroundImage="url("+img[i]+")";
        	 
        	  i++;
        	  if(i==4){
        		  document.getElementById("d3").style.backgroundImage="url("+img[i]+")";
        		  i=0;}
         setTimeout("back_Change()",3000);}
     back_Change();
    </script>

</div>
<div id=d4>
<div id=d5><h3 id=h3>REGISTER YOURSELF</h3></div>
<form action=ControllerS method=post >
<pre id=p2>
Name   <input type=text placeholder="Enter  FullName" name=n><br>
Email  <input type=text placeholder="Enter Email" name=e><br>
Phone  <input type=text placeholder="Enter Phone" id=p name=p onkeyup="phn()" >
         <input type=text placeholder="enter otp" name=otp id=otp>
Course <select name="o" id=o>
  <option>B.Tech
  <option>M.Tech
  <option>BCA
  <option>MCA
  <option>BBA
  <option>MBA
  <option>B.Sc
  <option>M.Sc
 </select> <br>
 <input type=submit id=in name=b value=Register ><br>
 <a id=a onclick="log()">Existing User?Login</a>
</pre>
</form>

<form action=ControllerS method=post>
<pre id=pr3>
<br><br><br>
Phone No  <input type=text id=pn name=pn ><br><!-- onkeyup="logPhn()" -->
          <input type=text placeholder="Enter Otp" id=otp2 name=otpL><br>
   <input type=submit name=b id=log value=Login><br>
</pre>
</form>
<script>
function phn()
{
	let s=document.getElementById("p").value;
	let i,c=0;
	for(i=0;i<s.length;i++)
		c++;
	if(c==10)
		{
		var request;  
			let s=document.getElementById("p").value;
		  var url="otp.jsp?mobile="+s+"";  
		  if(window.XMLHttpRequest)
		   {  
		       request=new XMLHttpRequest();  
		   }  
		   else if(window.ActiveXObject)
		   {  
		     request=new ActiveXObject("Microsoft.XMLHTTP");  
		   }  
		 try{  
		      request.onreadystatechange=function()
		       {  
		           if(request.readyState==4)
		           {  
		            var val=request.responseText;  
		            document.getElementById("otp").style.visibility="visible";
		            
		           }  
		      }//end of function  
		    request.open("GET",url,true);  
		    request.send();  
		     }catch(e)
		    {alert("Unable to connect to server");}  
		 }  
		
	
	}
function logPhn()
{
	let s=document.getElementById("pn").value;
	let i,c=0;
	for(i=0;i<s.length;i++)
		c++;
	if(c==10)
		{
		var request;  
			let s=document.getElementById("pn").value;
		  var url="otp.jsp?mobile="+s+"";  
		  if(window.XMLHttpRequest)
		   {  
		       request=new XMLHttpRequest();  
		   }  
		   else if(window.ActiveXObject)
		   {  
		     request=new ActiveXObject("Microsoft.XMLHTTP");  
		   }  
		 try{  
		      request.onreadystatechange=function()
		       {  
		           if(request.readyState==4)
		           {  
		            var val=request.responseText;  
		           // document.getElementById("otp").style.visibility="visible";
		            
		           }  
		      }//end of function  
		    request.open("GET",url,true);  
		    request.send();  
		     }catch(e)
		    {alert("Unable to connect to server");}  
		 }  
		
	
	}
	function log()
	{
		document.getElementById("h3").innerHTML="LOGIN YOURSELF";
		document.getElementById("pr3").style.visibility="visible";
	     document.getElementById("p2").style.visibility="hidden";
	}
</script>
<!-- <iframe width="350" height="430" allow="microphone;" src="https://console.dialogflow.com/api-client/demo/embedded/1de97217-afd8-4bf6-be85-baf642fbea5c"></iframe> -->
</div>

</body>
</html>