<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete Places</title>
<body background="images/3D_Autumn_Leaves.jpg">

</head>
<body>
<div>
<table border="3">
<h1>Records of Places to Visit<h1>
<tr>
<th>ID</th>
<th>Name</th>
<th>Address</th>
<th>Time</th>
<th>Events</th>
</tr>
<%@page import="java.sql.*,java.util.*" %>
<%
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select * from place");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
<td><%=rs.getString(6) %></td>
</tr>
<%} %>
<%}catch(Exception e){
	e.printStackTrace();
}

%>
</table>
</div>
<form action="Deleteptov">
<p>Select id for delete</p>

<select name="pid">
<option>---------select id--------</option>
<%
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select * from place");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		
%>
<option><%=rs.getString(1)%></option>
<%} %>
<%}catch(Exception e){
	e.printStackTrace();
}

%>
<input type="submit" value="delete">
</select>
</div>
</form>
</body>
</html>
