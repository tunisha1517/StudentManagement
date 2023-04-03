<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
#d{
  background :red;
  width:400px;
  height:400px;
}
</style>
</head>
<body>
<a id=a onclick="d()"style="cursor:pointer">hi</a>
<script>
function d()
{
let h=document.getElementById("a").text;
	if(h=="hi")
		document.write("hello");

}
</script>
</body>
</html>