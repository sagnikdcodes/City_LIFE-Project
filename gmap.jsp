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
<title>Route Map</title>

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
<!--Deploy Script For Google Maps API-->
 <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCGjgf-qdp9Esq1AdEHZ7dn_z1s134tEl4 &sensor=true">
</script>
<script type="text/javascript" src="http://maps.googleapis.com/maps/api/js?sensor=false&libraries=places"></script>
<script src="scripts/google-maps-3-vs-1-0.js" type="text/javascript"></script>
<!--Deployments Ends-->
<script type="text/javascript" src="javascript/mainJavaScript.js"></script> 
<script type="text/javascript">
</script>
<script type="text/javascript">

var distanceInput;
var directionsDisplay;
var directionsService = new google.maps.DirectionsService();
var map;
var myCenter = new google.maps.LatLng(22.5726,88.3639);
/*Onload initialize function*/

function initialize() {
 
    directionsDisplay = new google.maps.DirectionsRenderer();
     
        var mapOptions = {
            center: myCenter,
            zoom: 8,
            mapTypeId: google.maps.MapTypeId.ROADMAP
        };
 
        map = new google.maps.Map(document.getElementById('map_canvas'), mapOptions);
        directionsDisplay.setMap(map);
        directionsDisplay.setPanel(document.getElementById('directionsPanel'));
     var points;
     var latitude;
     var longitude; 
     var locate = "";
     var geocoder = new google.maps.Geocoder();
     var address = locate;
 
    geocoder.geocode({ 'address': address }, function (results, status) {
 
        if (status == google.maps.GeocoderStatus.OK) {
            latitude = results[0].geometry.location.lat();
            longitude = results[0].geometry.location.lng();
            points = new google.maps.LatLng(latitude, longitude);
        var mapProp = {
                center: points,
                zoom: 12,
                panControl: true, 
                zoomControl: true,
                mapTypeControl: true,
                scaleControl: true,
                streetViewControl: true, 
                overviewMapControl: true,
                rotateControl: true,
                mapTypeId: google.maps.MapTypeId.ROADMAP
            };
 
            var map = new google.maps.Map(document.getElementById('map_canvas'), mapProp);
            map.setTilt(45);  
            var marker = new google.maps.Marker({
                position: points,
               
            });
 
            marker.setMap(map);
 
        }
    });
    document.getElementById('directionsPanel').innerHTML = "";
}
        
/*autocomplete location*/

        google.maps.event.addDomListener(window, 'load', function () {
            var places = new google.maps.places.Autocomplete(document.getElementById('first_location'));
            google.maps.event.addListener(places, 'place_changed', function () {
                var place = places.getPlace();
            //    var address = place.formatted_address;
              
            });
        });
    
google.maps.event.addDomListener(window, 'load', function () {
            var places2 = new google.maps.places.Autocomplete(document.getElementById('second_location'));
            google.maps.event.addListener(places2, 'place_changed', function () {
                var place2 = places2.getPlace();
               
            });
        });
    

 
/*direction click function*/

    function drive() {
    var start = document.getElementById('first_location').value;
    var end = document.getElementById('second_location').value;
    if(start!="" || end!="")
    {

    var request = {
        origin:start,
        destination:end,
        travelMode: google.maps.DirectionsTravelMode.DRIVING
    };

    directionsService.route(request, function(response, status) {
        if (status == google.maps.DirectionsStatus.OK) {
            directionsDisplay.setDirections(response);
            distanceInput = response.routes[0].legs[0].distance.value / 1000;
             //alert(distanceInput);

 
        }
    });

 //   document.getElementById("case").style.visibility='visible';
//    document.getElementById("case2").style.visibility='visible';
    }
}

function calculate() {
    var direction_type = document.getElementById('case').value;
        if (direction_type == '1') {
        document.getElementById("case4").style.visibility='visible';
        document.getElementById("case3").style.visibility='visible';
        case3.value=parseInt(distanceInput*10)+" Rs";
        document.getElementById("case5").style.visibility='visible';
    }
    else if (direction_type == '2') {
        document.getElementById("case4").style.visibility='visible';
        document.getElementById("case3").style.visibility='visible';
        case3.value=parseInt(distanceInput*12)+" Rs";
        document.getElementById("case5").style.visibility='visible';
    }
    else if (direction_type == '3') {
        document.getElementById("case4").style.visibility='visible';
        document.getElementById("case3").style.visibility='visible';
        case3.value=parseInt(distanceInput*5)+" Rs";
        document.getElementById("case5").style.visibility='visible';
    }
 
}

</script>
</head>
 
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


<%@page import="reg1.*,java.sql.*,java.util.*" %>
<%
session = request.getSession(false);
String name=(String)session.getAttribute("name");
%>
<div class="main">

<aside style="padding-top:0px;margin-top:0px;" id="cnt1">
<div>
<center>
<br><font face="broadway" size="8">Route Direction</font></br>
<table style="margin-top:30px;">
<tr>

<td>
<input type="text" class="text_box" placeholder="select start Point"  id="first_location"/>
</td>
</tr>
<tr>

<td style="padding-top:4px;">
<input type="text" class="text_box" placeholder="select end Point"  id="second_location"/>
</td>
</tr>

<tr>
<th  colspan="2" align="center"style="padding-left:60px; padding-top:4px;" ><input type="button" class="btn_box" value="Find Direction" id="getDirection" onClick="drive()"/></th>
</tr>


</form>
</table>
</center>
</div>
<div  style="overflow:auto; max-height:300px">
   <div id="directionsPanel"></div>
   </div>
</aside>
 
<aside id="cnt2">
<!--To print map-->
<div id="map_canvas" style="height:100%;"></div>
</aside>
<!--
<footer>
<br/>
<p style="padding-left:60%">Footer</p>
</footer>
-->


<div id="footer"> <a href="002.jsp">Home</a> | <a href="About01.html">About Us</a> | <a href="contactus.html">Contact Us</a><br/>
    Copyright © 2016 <strong>Softfonic</strong></a> | Designed by Saheli, Srijani, Sayantan </div>
</div>
                       
        </div>
        
    





</div>
 
</body>
</html>