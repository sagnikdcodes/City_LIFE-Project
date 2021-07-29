<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Place Details 1</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="contentslider.css" />
<script type="text/javascript" src="contentslider.js"></script>
<!--[if lt IE 7]><style type="text/css">.thumb_box span { behavior: url(iepngfix.htc); }</style><![endif]-->
</head>


<body>
<div id="container">
  <div id="header_panel">
    <div id="title_section"> City Life  <br>
 		<br><font size="2">#explore, visit and experience</font>
 	</div>
    <div id="top_right_section">
      <ul>
        <li><a href="002.jsp">Home</a></li>
        <li><a href="gmap.jsp">Road Map</a></li>
        <li><a href="http://all-free-download.com/free-website-templates/">Contact</a></li>
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
      <h1>Member Login</h1>
      <form method="get" action="http://all-free-download.com/free-website-templates/">
        <div class="form_row">
          <label>Email</label>
          <input class="inputfield" name="email_address" type="text" id="email_addremss"/>
        </div>
        <div class="form_row">
          <label>Password</label>
          <input class="inputfield" name="password" type="password" id="password"/>
        </div>
        <input class="button" type="submit" name="Submit" value="Login" />
      </form>
      <a href="http://all-free-download.com/free-website-templates/">Register</a> </div>
  </div>
<div id="menu">
    <ul>
<li class="first"><a href="http://all-free-download.com/free-website-templates/">Home</a></li>
      <li><a href="showp.jsp" class="current">Places to visits</a></li>
      <li><a href="showh.jsp">Hotels</a></li>
      <li><a href="showr.jsp">Restaurants</a></li>
      <li><a href="showsh.jsp">Shopping Malls</a></li>
      <li><a href="showhp.jsp">Hospitals</a></li>
<li><a href="About01.html">About Us</a></li>
      <li  class="last">

    </ul>
  </div>
  <form action="profile1">
<%@page import="java.sql.*" %>
<% 
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select pid,name,addr,time,fileadd from place");
	ResultSet rs=ps.executeQuery();
	while(rs.next()){
%>
<table width="70%" border="1" cellpadding="2">
  <tr>
    <td rowspan="4" width="40%"><img src="<%=rs.getString(5)%>" height=200 width=350 ></td>
    <td>Name:<%=rs.getString(2) %></td>
  </tr>
  <tr>
    <td>Address:<%=rs.getString(3) %></td>
  </tr>
  <tr>
    <td>Time:<%=rs.getString(4) %></td>
  </tr>
  <tr>
    <td><a href="recordpv.jsp?uid=<%=rs.getString(1)%>">Open</a></td>
<div style="margin-bottom:20px; border-bottom:5px dotted #000; padding-bottom:10px;"/>

  </tr>
</table>
<br id="br">
<!-- <td><a href="test.jsp">Open</a></td> -->
    
<%} %>
<%}catch(Exception e){
	e.printStackTrace();
} %>

</form>

  <div id="footer"> <a href="http://all-free-download.com/free-website-templates/">Home</a> | <a href="http://all-free-download.com/free-website-templates/">About Us</a> | <a href="http://all-free-download.com/free-website-templates/">Gallery</a> | <a href="http://all-free-download.com/free-website-templates/">Contact Us</a><br/>
    Copyright © 2016 <a href="http://all-free-download.com/free-website-templates/"><strong>Softfonic</strong></a> | Designed by Saheli, Srijani, Sayantan </div>
</div>

</script>

</body>
</html>