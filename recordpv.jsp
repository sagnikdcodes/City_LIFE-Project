<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE HTML>
<html>
<head>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" integrity="sha384-1q8mTJOASx8j1Au+a5WDVnPi2lkFfwwEAa8hDDdjZlpLegxhjVME1fgjWPGmkzs7" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap-theme.min.css" integrity="sha384-fLW2N01lMqjakBkx3l/M9EahuwpSfeNvV63J5ezn3uZzapT0u7EYsXMjQV+0En5r" crossorigin="anonymous">
<!--jQuery CSS-->
<link rel="stylesheet" herf="//code.jquer.com/ui/1.10.4/them/smoothness/jquery-ui.css">
<!--FontAwesome-->
<link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
<!--footer CSS-->
<style>
html {
  position: relative;
  min-height: 100%;
}
body {
  margin-bottom: 60px;
}
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 60px;
  background-color: #f5f5f5;
}
#case
{
    display: inline;
}
</style>
<!--jQuer-->
<script src="//code.jquery.com/jquery-1.10.2.min.js"></script>
<!--jquery UI -->
<script src="//code.jquery.com/ui/1.10.4/jquery-ui.js"></script>
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js" integrity="sha384-0mSbJDEHialfmuBBQP6A4Qrprq5OVfW37PRR3j5ELqxss1yVqOtnepnHVP9aJ7xS" crossorigin="anonymous"></script>


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>Record Place</title>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="contentslider.css" />
<script type="text/javascript" src="contentslider.js"></script>
<!--[if lt IE 7]><style type="text/css">.thumb_box span { behavior: url(iepngfix.htc); }</style><![endif]-->


<style>
@charset "utf-8";
header{
    border-style: groove;
}
 

#cnt1{
    height:500px;
    width:300px;
   background-color:    #F8F8F8 ;
    float:left;
    border-style: groove;
}
 

#cnt2{
    height:500px;
    width:auto;
    border-style: groove;
}
 
footer{
    height:45px;
}
 

#search_cnt{
    height:auto;
    width:auto;
}
 

#tab{
    padding-top:30px;
}
 

 
.text_box{
  
    border:2px solid #456879;
    border-radius:10px;
   width:200px;
    height:20px;
    text-align: center;
}
 
.text_box:focus{
    border:1px solid blue;
}
 

 
.btn_box{
 
 background: #3498db;

  height:24px;
 border-radius: 28px;
  font-family: Arial;
  color: #ffffff;
  font-size: 10px;
  text-decoration: none;
}
 
.btn_box:hover{
    border:1px solid blue;
}
 

.drop_list{
    border:1px solid blue;
    height:20px;
}
 
.label_font{
    font-family:"Comic Sans MS", cursive;
    font-size:40px;
}
 
.label_font:hover{
    color:white;
}
 
 
.title{
    font-family:"Comic Sans MS", cursive;
    font-size:18px;
    color:#06F;
}
 
.footer {
  position: absolute;
  bottom: 0;
  width: 100%;
  height: 98px;
  background-color: #f5f5f5;
}


</style>
<%@page import="java.sql.*,java.util.*,java.io.*" %>
<body onload="initialize()">
<div id="container">
  <div id="header_panel">
 
    <div id="title_section"> 
 		City Life<br>
 		<font size="2">#explore.visit, and experience</font>
 	</div>
	<div id="top_right_section">
      <ul>
        <li><a href="002.jsp">Home</a></li>
        <li><a href="gmap.jsp" class="current">Road Map</a></li>
        <li><a href="contactus.html">Contact</a></li>
      </ul>
    </div>
  </div>



<%
try{
	String pid=request.getParameter("uid");
	String sql="select * from place where pid=?";
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement(sql);
	ps.setString(1, pid);
	ResultSet rs=ps.executeQuery();
	PreparedStatement ps1=cn.prepareStatement("select * from reg_01");
	ResultSet rs1=ps1.executeQuery();
	//session=request.getSession(false);
	//String name=(String)session.getAttribute("pass1");
	//if(name==null){
	//	System.out.println("Not found...");
		//out.print("<script>alert('please login');</script>");
		//RequestDispatcher rd=request.getRequestDispatcher("showp.jsp");
		//rd.forward(request, response);
		//}
	//else{
		
		
	
	while(rs.next()){
		String picname=rs.getString(5);
	
%>
<table  border="1" bordercolor="black"  borderwidth="2px" cellpadding="2" align="center">
<tr><td colspan="3" align="center"><b><%=rs.getString(2) %></b></td></tr>
<tr>
<% System.out.println("file address" +picname);%>
  <%String newpicadd= picname.substring(picname.lastIndexOf('\\')+1,picname.length()); %>

    <td rowspan="4" align="center" ><img src="${pageContext.request.contextPath}/images/imageptov/<%=newpicadd %>" height=300 width=400 ></td>
    
  </tr>
  </table>
  <table  border="1" bordercolor="black"  borderwidth="2px" cellpadding="2" align="center">
<tr><td><strong>Full Address :</strong></td><td><%=rs.getString(3) %></td></tr>
<tr><td><strong>Time :</strong></td><td><%=rs.getString(4) %></td></tr>
<tr><td><strong>Events :</strong></td><td><%=rs.getString(6) %></td></tr>
<div style="margin-bottom:20px; border-bottom:5px dotted #000; padding-bottom:10px;"/>

</table>

<%} %>

<%}catch(Exception e){
	e.printStackTrace();
} %>

<div id="footer"> <a href="002.jsp">Home</a> | <a href="About01.html">About Us</a> | <a href="contactus.html">Contact Us</a><br/>
    Copyright © 2016 <strong>Softfonic</strong></a> | Designed by Saheli, Srijani, Sayantan </div>
</div>
                       
        </div>

</body>
</html>