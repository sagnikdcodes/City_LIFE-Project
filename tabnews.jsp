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
<title>Insert title here</title>
</head>
<body background= "images/WDF_2325985.jpg">

<form action="insertnews" >

<table border="1" align="center">

<div align="center" id="i">Insert into table</div>


<tr><td>ID: </td><td><input type="text" name="id"></td></tr>
<tr><td>Name: </td><td><input type="text" name="name"></td></tr>
<tr><td>Description: </td><td><input type="text" name="description"></td></tr>
<tr>
<td colspan="2" align="center">
<select name="hyperlink">
<option>--Select Hyperlink--</option>
<option value="http://localhost:8080/Demo1/showp.jsp">Places to visit</option>
<option value="http://localhost:8080/Demo1/showh.jsp" >Hotels</option>
<option value="http://localhost:8080/Demo1/showr.jsp">Restaurants</option>
<option value="http://localhost:8080/Demo1/showsh.jsp">Shopping Malls</option>
<option value="http://localhost:8080/Demo1/showhp.jsp">Hospitals</option>
</select>
</td>
</tr>

<tr><td colspan="2" align="center"><input type="submit" value="insert" onclick="insertnews"></td></tr>

</table>

</form>
</body>
</html>