<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>City Life</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="contentslider.css" />
<script type="text/javascript" src="contentslider.js"></script>
<!--[if lt IE 7]><style type="text/css">.thumb_box span { behavior: url(iepngfix.htc); }</style><![endif]-->
</head>
<body>
      
<div id="container">
  <div id="header_panel">
 
    <div id="title_section"> 
 		City Life
 		<br><font size="2">#explore, visit and experience</font>
 	</div>
	<div id="top_right_section">
      <ul>
        <li><a href="002.jsp" class="current">Home</a></li>
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
      <h1>Member Login</h1>
      <form  action="login1">
        <div class="form_row">
          <label>Email</label>
          <input class="inputfield" name="user1" type="text" id="email_addremss"/>
        </div>
        <div class="form_row">
          <label>Password</label>
          <input class="inputfield" name="pass1" type="password" id="password"/>
        </div>
        <input class="button" type="submit" name="Submit" value="Login" />
      </form>
      <a href="register.html">Register</a></div>
  </div>
  <div id="menu">
    <ul>
      <li class="first"><a href="002.jsp" class="current">Home</a></li>
      <li><a href="showp.jsp">Places to visits</a></li>
      <li><a href="showh.jsp">Hotels</a></li>
      <li><a href="showr.jsp">Restaurants</a></li>
      <li><a href="showsh.jsp">Shopping Malls</a></li>
      <li><a href="showhp.jsp">Hospitals</a></li>
      <li><a href="About01.html">About Us</a></li>
      <li  class="last">
    </ul>
  </div>
  <div id="content">
    <div id="leftcolumn">
      <div class="leftcolumn_twocolumn">
        <h1>Welcome</h1>
        <img src="images/image_01.jpg" alt="" />
        <p><font size="6" face="Times new roman"><br>Heartily welcome<br><br> to our website...    
        </font></p>
      </div>
      <div class="leftcolumn_twocolumn">
        <h1>Our Services</h1>
        <div class="service_box"> <img src="images/image_02.jpg" alt="" />
          <p align="justify">We can help you to find any Visiting places, Hotels, Restaurants, Shopping Malls and Hospitals in this city.<br> 
          <br>
          <font face="Aerial" color="black" size="4">
          <li>A member can check the map in the site without physically visiting the place with lots of effort in finding it and can view the entire information regarding different fields</li>
          <li>User can only view the outlook of different fields</li>
          <li>Administrator be able to maintain city details like - Map of the city, insert, update and delete various information regarding timings of places, history of visits and so on</li>
          <li>If a member has any query about these fields he/she can directly contact us through mail or phone number</li>
          </font>
          </p>
        </div>
        
      
      
      
      </div>
      <div class="cleaner"> &nbsp; </div>
      <div class="leftcolumn_fullrow">
        <h1>Photo Gallery</h1>
        <p></p>
        <div class="thumb_gallery">
          <div class="thumb_box"> <img src="images/image_03.jpg" alt="" /> <span></span> </div>
          <div class="thumb_box"> <img src="images/image_04.jpg" alt="" /> <span></span> </div>
          <div class="thumb_box"> <img src="images/image_11.jpg" alt="" /> <span></span> </div>
          <div class="thumb_box"> <img src="images/image_06.jpg" alt="" /> <span></span> </div>
          <div class="thumb_box"> <img src="images/image_07.jpg" alt="" /> <span></span> </div>
          <div class="thumb_box"> <img src="images/image_08.jpg" alt="" /> <span></span> </div>
          <div class="thumb_box"> <img src="images/image_09.jpg" alt="" /> <span></span> </div>
          <div class="thumb_box"> <img src="images/image_10.jpg" alt="" /> <span></span> </div>
        </div>
      </div>
    </div>
    <div id="rightcolumn">
      <div id="search_panel">
        
        <h1>News Updates</h1>

<%@page import="java.sql.*" %>
<%@page import="reg1.*" %>
<table  align="center">
<% 
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/CT_DB","SAYANTAN","password");
	PreparedStatement ps=cn.prepareStatement("select id,name,description,hyperlink from news");
	ResultSet rs=ps.executeQuery();
		
	while(rs.next()){
%>
<div>
<tr>
<td> <marquee direction="up" scrolldelay="500"><%=rs.getString(3) %><a href="<%=rs.getString(4)%>">Open</a></marquee></td>
</tr>

<%} %>
<%}catch(Exception e){
	e.printStackTrace();
} %>
</table>

</div>     <div id="blog_section">
        <h1>Reviews</h1>
        <div class="blog_box">
        <form action="">
<%@page import="java.sql.*" %>
<%@page import="reg1.*" %>
<table  align="center">
<% 
try{
	Class.forName("com.ibm.db2.jcc.DB2Driver");
	Connection cn=DriverManager.getConnection("jdbc:db2://localhost:50000/ct_db","sayantan","password");
	PreparedStatement ps=cn.prepareStatement("select name,rev,date from review");
	ResultSet rs=ps.executeQuery();
		
	while(rs.next()){
%>

<tr>
<td><%=rs.getString(2) %></td>
</tr>
<tr>
<td>Posted by:<span><strong> <%=rs.getString(1) %></span> on <span><%=rs.getString(3) %></strong></span></td>

</tr>        

<%} %>
<%}catch(Exception e){
	e.printStackTrace();
} %>
</div>
</div>
</div>
        <div class="more_button"><a href="tavrev.jsp">Write Review</a></div>
      </div>
</table>
</form> 
</div>
      <div class="cleaner">&nbsp;</div>
      
    </div>
  </div>
</div>
<div id="footer"> <a href="002.jsp">Home</a> | <a href="About01.html">About Us</a> | <a href="contactus.html">Contact Us</a><br/>
    Copyright © 2016 <strong>Softfonic</strong></a> | Designed by Saheli, Srijani, Sayantan </div>
</div>
</body>
</html>
