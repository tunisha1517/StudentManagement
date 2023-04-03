<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
  background: black;
}
 #d1
{
 position : absolute;
 top: 10%;
 left :20%;
 width : 60%;
 height : 20%;
 right :10%;
 background :black; 
}
  #d3{
position : absolute;
top :42%;
left :10%;
right :20%;
width :80%;
height :55%;
background : black;
box-shadow : 0 0 10px gray;
color:white;

}  

  #b1{
   position :absolute;
   height:60%;
   width:80px;
   top :15%;
   background-color:pink;
   background:url("st.jpg");
   background-position:center;
   background-size:cover;
   font-style: Verdana;
   font-size: 20px;
   color:white;
   border-radius: 100%;
   cursor: pointer;
   border:2px solid white;
   } 
  #b2{
   position :absolute;
   height:60%;
   width:80px;
   top :15%;
   left:22%;
   background-color:purple;
   background:url("pd.png");
   background-position:center;
   background-size:cover;
   font-style: Verdana;
   font-size: 20px;
   color:white;
   border-radius: 100%;
   cursor: pointer;
   border:2px solid white;
   }
   #b3{
   position :absolute;
   height:60%;
   width:80px;
   top :15%;
    left:45%;
   background-color:blue;
   background:url("loc.png");
   background-position:center;
   background-size:cover;
   font-style: Verdana;
   font-size: 20px;
   color:white;
   border-radius: 100%;
   cursor: pointer;
   border:2px solid white;
   } 
    #b4{
   position :absolute;
   height:60%;
   width:80px;
   top :15%;
   left:70%;
   background-color: cornflowerblue;
   background:url("aca.jpg");
   background-position:center;
   background-size:cover;
   font-style: Verdana;
   font-size: 20px;
   color:white;
   border-radius: 100%;
   cursor: pointer; 
   border:2px solid white;
   }
    #b5{
   position :absolute;
   height:60%;
   width:80px;
   top :15%;
   left:95%;
   background-color: cornflowerblue;
   background:url("pay.jpg");
   background-position:center;
   background-size:cover;
   font-style: Verdana;
   font-size: 20px;
   color:white;
   border-radius: 100%;
   cursor: pointer; 
   border:2px solid white;
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
   
   #d2{
  position :absolute;
  top:26%;
  width:65%;
  height:10%;
  left:19%;
  background:black;
  font-style: Verdana;
   font-size: 20px;
  color:white;
}
#pr{
color:white;

}

td{
align:center;
font-size:25px;
padding: 1% 3% 0% 5%;
margin: 0px auto;
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
#fr{
position : absolute;
width :100%;
height :100%;
}
</style>
</head>
<body>
<center><h1>Trident Application Form 2021-2022</h1></center><br>
 <div id=d1>
<form action="AfterLogin2.jsp">
 <button type=submit id=b1 value=Applicant name=a ></button>
 <button type=submit id=b2 value=Parent name=a></button>
 <button type=submit id=b3 value=Address name=a></button>
 <button type=submit id=b4 value=Adcademic name=a></button>
 <button type=submit id=b5 value=Payment name=a></button>
 </form>

</div> 

<div id=d2> 
<pre>
 Applicant         Parent           Address          Academic
  Details          Details          Details           Details
</pre>
</div>
<%

if(request.getParameter("a")!=null)
{
	String a=request.getParameter("a");
	
	out.println("<div id=d3><center><h1>Applicant Details</h1></center>First Name : <input type=text name=n></div>");
	
	if(a.equals("Applicant"))
	{
		out.println("<div id=d3><iframe src=app.html id=fr></iframe></div>");
	}
	else if(a.equals("Parent"))
	{
		out.println("<div id=d3><iframe src=par.html id=fr></iframe></div>");
	}
	else if(a.equals("Address"))
	{
		out.println("<div id=d3><iframe src=add.html></iframe></div>");
		
	}
	else if(a.equals("Adcademic"))
	{
		out.println("<div id=d3><center><h1><iframe src=login.jsp id=fr></iframe></h1></center></div>");
		
	}
	else if(a.equals("Payment"))
	{
		out.println("<div id=d3><center><h1>Payment Details</h1></center></div>");
		
	}
	
}
%>
</body>
</html>