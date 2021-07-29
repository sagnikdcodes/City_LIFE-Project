<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Records</title>
</head>
<body background="images/del.jpg">
<form action="updatepv.jsp">
<div align="center" style="color: #666666; padding-left: 5px; padding-right: 5px; padding-top: 200px; padding-bottom: 5px;">
<select name="pid" style="width: 200px; height: 50px">
<option>----------SELECT ID--------------</option>
<%@page import="java.sql.*,java.util.*" %>
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
</select>
<input type="submit" value="update">
</div>
</form>
</body>
</html>