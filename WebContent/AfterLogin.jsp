<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
body{
  background: red;
}
#d1
{
 position : absolute;
 top: 10%;
 left :20%;
 width : 80%;
 height : 30%;
 right :10%;
 background :black;
}
 #d2{
position : absolute;
top :40%;
left :10%;
right :20%;
width :80%;
height :55%;
background : black;
box-shadow : 0 0 10px gray;

} 
#d3{
  positon :absolute;
  top:60%;
  left:20;
  
  color:white;
}
 #b1{
   position :absolute;
   height:40%;
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
   height:40%;
   width:80px;
   top :15%;
   left:20%;
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
   height:40%;
   width:80px;
   top :15%;
    left:40%;
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
   height:40%;
   width:80px;
   top :15%;
   left:60%;
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
   #h3{
     position : absolute;
     top :60%;
   }
</style>
</head>
<body>
<center><h1>Trident Application Form 2021-2022</h1></center><br>
<div id=d1>
<form action="AfterLogin.jsp">
 <button type=submit id=b1 value=Applicant name=a ></button>
 <button type=submit id=b2 value=Parent name=a></button>
 <button type=submit id=b3 value=Address name=a></button>
 <button type=submit id=b4 value=Adcademic name=a></button>
 </form>
 
</div>
<div id></div>
<%

if(request.getParameter("a")!=null)
{
	String a=request.getParameter("a");
	if(a.equals("Applicant"))
	{
		out.println("<div id=d2><center><h1>Applicant Details</h1></center>First Name : <input type=text name=n1></div>");
	}
	else if(a.equals("Parent"))
	{
		out.println("<div id=d2><center><h1>Parent Details</h1></center></div>");
		
	}
	else if(a.equals("Address"))
	{
		out.println("<div id=d2><center><h1>Address Details</h1></center></div>");
		
	}
	else if(a.equals("Adcademic"))
	{
		out.println("<div id=d2><center><h1>Academic Details</h1></center></div>");
		
	}
	
}
%>
</body>
</html>