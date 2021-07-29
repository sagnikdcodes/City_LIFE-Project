<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Compose Mail</title>
<script>
function myFunction() {
    var mylist = document.getElementById("myList");
    document.getElementById("mail").value = mylist.options[mylist.selectedIndex].text;
}
</script>
</head>
<body bgcolor="#c0c0c0">
<form action="mailjsp.jsp">
<table>
<tr>
<td><b><font color="blue">To :</font></b></td>
<td><b><input type="text" name="mail" placeholder="Enter sender address" id="mail"></td><br/>
<select id="myList" onchange="myFunction()">
<option>---------select id--------</option>
<%@page import="java.sql.*,java.util.*" %>
<%
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select * from REG_01");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		
%>
<option><%=rs.getString(1)%></option>
<%} %>
<%}catch(Exception e){
	e.printStackTrace();
}

%>
</select>
</tr>
<tr>
<td><font color="blue">Subject:</font></td>
<td><input type="text" name="sub" placeholder="Enter subject"></td>
</tr>
<tr>
<td><b><font color="blue"><strong>Message Text :</strong></font></b></td>
<td><textarea rows="12" cols="80" name="mess" placeholder="Write here..."></textarea><br></td>
</tr>
<tr>
<td><td><input type="submit" value="Send"> <input type="reset" value="Reset"></td></td>
</tr>
<br>
      <a href="002.jsp">Home</a>
      
</table>
</form>

</body>

</html>