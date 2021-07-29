<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Delete News</title>
</head>
<body  background="images/3D_Autumn_Leaves.jpg">
<div>
<table border="3">
<h1>Records of Places to Visit<h1>
<tr>
<th>ID</th>
<th>Name</th>
<th>Description</th>
<th>Hyperlink</th>
</tr>
<%@page import="java.sql.*,java.util.*" %>
<%
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select * from news");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		
%>
<tr>
<td><%=rs.getString(1) %></td>
<td><%=rs.getString(2) %></td>
<td><%=rs.getString(3) %></td>
<td><%=rs.getString(4) %></td>
</tr>
<%} %>
<%}catch(Exception e){
	e.printStackTrace();
}

%>
</table>
</div>
<form action="delnews">
<div align="center" style="color: #666666;padding-left: 5px; padding-right: 5px; padding-top: 5px; padding-bottom: 50px;">
<div style="color: #666666;padding-left: 5px; padding-right: 5px; padding-top: 5px; padding-bottom: 2px;">
<h1>select id for delete</h1>
</div>
<select name="id">
<option>---------select id--------</option>
<%
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select * from news");
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