<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style type="text/css">
input[type=text] {
  width: 100px;
  -webkit-transition: width .35s ease-in-out;
  transition: width .35s ease-in-out;
}
input[type=text]:focus {
  width: 250px;
   background-color: #c0c0c0;
}

#rev {
	font-size: 18px;
	color: #06F;
	font-family: Arial, Helvetica, sans-serif;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background= "images/WDF_2325985.jpg">

<form action="insertrev" >

<table border="1" align="center" bordercolor="green" >
<br>
<div align="center" id="rev">Insert into table</div>

<br>

<tr><td>Name: </td><td><input type="text" name="name"></td></tr>
<tr><td>Review: </td><td><input type="text" name="rev"></td></tr>
<tr><td>Date: </td><td><input type="date" name="date"></td></tr>
<tr>

</tr>

<tr><td colspan="2" align="center"><input type="submit" value="insert" onclick="insertnews"></td></tr>

</table>

</form>
</body>
</html>