<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Shopping Mall Details</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="contentslider.css" />
<script type="text/javascript" src="contentslider.js"></script>
<!--[if lt IE 7]><style type="text/css">.thumb_box span { behavior: url(iepngfix.htc); }</style><![endif]-->
</head>

</head>
<body>


<body>
<div id="container">
  <div id="header_panel">
    <div id="title_section"> City Life <br>
 		<font size="2">#explore, visit and experience</font>
 </div>
    <div id="top_right_section">
      <ul>
        <li><a href="002.jsp">Home</a></li>
        <li><a href="gmap.jsp">Road Map</a></li>
        <li><a href="contactus.html">Contact</a></li>
      </ul>
      
            <div>
      <br>
      <br>
      <br>
     <a href="logout"> logout</a>
     </div>  
      
      
    </div>
  </div>
  <div id="login_banner_panel">
    <div id="banner_panel">
      <div id="paginate-slider2" class="pagination"> <a href="http://all-free-download.com/free-website-templates/" class="toc">&nbsp;</a> <a href="http://all-free-download.com/free-website-templates/" class="toc anotherclass">&nbsp;</a> <a href="http://all-free-download.com/free-website-templates/" class="toc">&nbsp;</a> </div>
      <div id="slider2" class="sliderwrapper">
        <div class="contentdiv"><img src="images/image_12.jpg" alt="" /></div>
        <div class="contentdiv"><img src="images/image_13.jpg" alt="" /></div>
        <div class="contentdiv"><img src="images/image_14.jpg" alt="" /></div>
        <div class="contentdiv"><img src="images/image_15.jpg" alt="" /></div>
      	<div class="contentdiv"><img src="images/image_16.jpg" alt="" /></div>
      </div>
      <script type="text/javascript">
            featuredcontentslider.init({
            id: "slider2",
            contentsource: ["inline", ""],
            toc: "markup",
            nextprev: ["Previous", "Next"],
            revealtype: "click",
            enablefade: [true, 0.2],
            autorotate: [true, 3000],
            onChange: function(previndex, curindex){
            }
            })
            </script>
    </div>
    <div id="login_panel">
      <h1 align="center"><font face="broadway">What goes into</font></h1>
      <h1 align="center"><font face="broadway">MIND</font></h1>
      <h1 align="center"><font face="broadway">Comes out in a</font></h1>
      <h1 align="center"><font face="broadway">LIFE</font></h1>
    </div>
  </div>
<div id="menu">
    <ul>
<li class="first"><a href="002.jsp">Home</a></li>
      <li><a href="showp.jsp">Places to visits</a></li>
      <li><a href="showh.jsp" >Hotels</a></li>
      <li><a href="showr.jsp" >Restaurants</a></li>
      <li><a href="showsh.jsp" class="current">Shopping Malls</a></li>
      <li><a href="showhp.jsp">Hospitals</a></li>
      <li><a href="About01.html">About Us</a></li>
      <li  class="last">

    </ul>
  </div>

<div id="content">

<%@page import="java.sql.*" %>

<% 
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select name,addr,time,fileadd,sid from shoppingmall");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
		String picname=rs.getString(4);
%>

<table width="70%" border="1" cellpadding="2">
  <tr>
   <% System.out.println("file address" +picname);%>
  <%String newpicadd= picname.substring(picname.lastIndexOf('\\')+1,picname.length()); %>
    <td rowspan="4" width="40%"><img src="${pageContext.request.contextPath}/images/imagesh/<%=newpicadd %>" height=200 width=350 ></td>
    <td><strong>Name: </strong><%=rs.getString(1) %></td>
  </tr>
  <tr>
    <td><strong>Address: </strong><%=rs.getString(2) %></td>
  </tr>
  <tr>
    <td><strong>Time: </strong><%=rs.getString(3) %></td>
  </tr>
  <tr>
    <td><a href="logchecksh?uid=<%=rs.getString(5)%>">MoreDetails</a></td>
<div style="margin-bottom:20px; border-bottom:5px dotted #000; padding-bottom:10px;"/>

</tr>
</table>
<%} %>
<%}catch(Exception e){
	e.printStackTrace();
} %>

</div>
  <div id="footer"> <a href="002.jsp">Home</a> | <a href="About01.html">About Us</a> | <a href="contactus.html">Contact Us</a><br/>
    Copyright © 2016 <strong>Softfonic</strong></a> | Designed by Saheli, Srijani, Sayantan </div>

</div>


</body>
</html>