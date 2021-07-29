<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="images/update11.jpg">
<form action="updatehotel" method="post" enctype="multipart/form-data" value="1">
<br>
<br>
<div align="center"><strong>Update Details</strong></div>
<table align="center">

<%@page import="java.sql.*,java.util.*" %>
<%
try{
	String hid=request.getParameter("hid");
	session=request.getSession();
	session.setAttribute("hid",hid);
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select name,addr,phno,fileadd,rate from hotel where hid=?");
	ps.setString(1,hid);
	ResultSet rs=ps.executeQuery();
	if(rs.next()){
		
%>
<br>
<tr><td>Update Name:</td><td><input type="text" name="name"  value=<%=rs.getString(1) %>></td></tr>
<tr><td>Update Address:</td><td><input type="text" name="addr"  value=<%=rs.getString(2) %>></td></tr>
<tr><td>Update Phno:</td><td><input type="text" name="phno"  value=<%=rs.getString(3) %>></td></tr>
<tr><td>Photo Link :</td><td><input type="file" name="file" value=<%=rs.getString(4)%>></td></tr>
<tr><td>Update Rate:</td><td><input type="text" name="rate"  value=<%=rs.getString(5) %>></td></tr>
<tr><td><input type="submit" value="ok"></td></tr>
<%} %>
<%}catch(Exception e){
	e.printStackTrace();
	}%>
</table>
</form>
</body>
</html>