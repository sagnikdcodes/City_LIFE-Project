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

</style>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert into shoppingmall</title>

</head>
<body background= "images/WDF_2325985.jpg">

<form action="insertsh" name="r"  method="post" enctype="multipart/form-data" value="1">

<table border="1" align="center">

<div align"center">Insert into table</div>


<tr><td>ID: </td><td><input type="text" name="sid"></td></tr>
<tr><td>Name: </td><td><input type="text" name="name"></td></tr>
<tr><td>Address: </td><td><input type="text" name="addr"></td></tr>
<tr><td>Contact number: </td><td><input type="text" name="phno"></td></tr>
<tr><td>Time: </td><td><input type="text" name="time"></td></tr>
<tr><td>Stores: </td><td><input type="text" name="brandname"></td></tr>
<tr><td>Description: </td><td><input type="text" name="des"></td></tr>
<tr><td>Resturants: </td><td><input type="text" name="resturants"></td></tr>
<tr><td> Photo Link :</td><td><input type="file" name="file"></td></tr>
<td colspan="2" align="center"><input type="submit" value="insert" onclick="insertptov"></td>

</table>

</form>
</body>
</html>