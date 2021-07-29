<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Admin Page</title>
<style type="text/css">
.ins {
	font-family: Verdana, Geneva, sans-serif;
}
.ad {
	font-family: Verdana, Geneva, sans-serif;
}
</style>
<body background="images/White-Texture-HD-Backgrounds-10 - Copy.jpg">
<bgsound src="E:\Eclipse_Workspace\G 1 Free Horror Music - Purple Planet Royalty.mp3" loop="1">

<script type="text/javascript">
function show(){
//var uid1=document.f.id.value;
	var a;
	if(window.XMLHttpRequest){ //check if the browser support the XMLhttpRequest object or not (detects whether the browser has XMLHttpRequest functionalit)
		a=new XMLHttpRequest();//if it support then create that object used in newer browser
	}
	else{
		a=new ActiveXObject("Microsoft.XMLHTTP"); //else create an activeXobject used in older browser
	}
	a.onreadystatechange=function(){
		if(a.readyState==4 & a.status==200){
			//window.open("tabpv.jsp");
			document.getElementById("mydiv").innerHTML=a.responseText;
				
		}
	}
	if(document.f.ins.value=="1")
	{
		{
		window.open("tabpv.jsp");
	a.open("GET","tabpv.jsp",true)
	a.send();
		}
	}
	if(document.f.ins.value=="2")
	{
		{
		window.open("tabh.jsp");
	a.open("GET","tabh.jsp",true)
	a.send();
		}
	}
	if(document.f.ins.value=="3")
	{
		{
		window.open("tabr.jsp");
	a.open("GET","tabr.jsp",true)
	a.send();
		}
	}
	if(document.f.ins.value=="4")
	{
		{
		window.open("tabsh.jsp");
	a.open("GET","tabsh.jsp",true)
	a.send();
		}
	}
	if(document.f.ins.value=="5")
	{
		{
		window.open("tabhp.jsp");
	a.open("GET","tabhp.jsp",true)
	a.send();
		}
	}
	}

function show1(){
	var a;
	//window.open(url, windowName, windowFeatures, optionalArg4)
	if(window.XMLHttpRequest){ 
		a=new XMLHttpRequest();
	}
	else{
		a=new ActiveXObject("Microsoft.XMLHTTP"); 
	}
	a.onreadystatechange=function(){
		if(a.readyState==4 & a.status==200){
			document.getElementById("mydiv").innerHTML=a.responseText;
		}
	}
	if(document.f.ins1.value=="1")
	{
		{
		window.open("updatedroppv.jsp");
	a.open("GET","updatedroppv.jsp",true)
	a.send();
		}
	}
	if(document.f.ins1.value=="2")
	{
		{
		window.open("updatedroph.jsp");
	a.open("GET","updatedroph.jsp",true)
	a.send();
		}
	}
	if(document.f.ins1.value=="3")
	{
		{
		window.open("updatedropr.jsp");
	a.open("GET","updatedropr.jsp",true)
	a.send();
		}
	}
	if(document.f.ins1.value=="4")
	{
		{
		window.open("updatedropsh.jsp");
	a.open("GET","updatedropsh.jsp",true)
	a.send();
		}
	}
	if(document.f.ins1.value=="5")
	{
		{
		window.open("updatedrophp.jsp");
	a.open("GET","updatedrophp.jsp",true)
	a.send();
		}
	}
}

function show2(){
	var a;
	//window.open(url, windowName, windowFeatures, optionalArg4)
	if(window.XMLHttpRequest){ 
		a=new XMLHttpRequest();
	}
	else{
		a=new ActiveXObject("Microsoft.XMLHTTP"); 
	}
	a.onreadystatechange=function(){
		if(a.readyState==4 & a.status==200){
			document.getElementById("mydiv").innerHTML=a.responseText;
		}
	}
	if(document.f.ins2.value=="1")
	{
		{
		window.open("deletepv.jsp");
	a.open("GET","deletepv.jsp",true)
	a.send();
		}
	}
	if(document.f.ins2.value=="2")
	{
		{
		window.open("deleteh.jsp");
	a.open("GET","deleteh.jsp",true)
	a.send();
		}
	}
	if(document.f.ins2.value=="3")
	{
		{
		window.open("deleter.jsp");
	a.open("GET","deleter.jsp",true)
	a.send();
		}
	}
	if(document.f.ins2.value=="4")
	{
		{
		window.open("deletesh.jsp");
	a.open("GET","deletesh.jsp",true)
	a.send();
		}
	}
	if(document.f.ins2.value=="5")
	{
		{
		window.open("deletehp.jsp");
	a.open("GET","deletehp.jsp",true)
	a.send();
		}
	}
	
}
function mail()
{
	var a;
if(window.XMLHttpRequest){ //check if the browser support the XMLhttpRequest object or not (detects whether the browser has XMLHttpRequest functionalit)
	a=new XMLHttpRequest();//if it support then create that object used in newer browser
}
else{
	a=new ActiveXObject("Microsoft.XMLHTTP"); //else create an activeXobject used in older browser
}
a.onreadystatechange=function(){
	if(a.readyState==4 & a.status==200){
		//window.open("tabpv.jsp");
		document.getElementById("mydiv").innerHTML=a.responseText;
			
	}
}


	{
	window.open("index.jsp");
a.open("GET","index.jsp",true)
a.send();
	}

	}
	
function shownews(){
	var a;
	//window.open(url, windowName, windowFeatures, optionalArg4)
	if(window.XMLHttpRequest){ 
		a=new XMLHttpRequest();
	}
	else{
		a=new ActiveXObject("Microsoft.XMLHTTP"); 
	}
	a.onreadystatechange=function(){
		if(a.readyState==4 & a.status==200){
			
		}
	}
	 window.open("tabnews.jsp");
	 a.open("GET","tabnews.jsp",true);
	a.send();
	
}
</script>
</head>
<body>
  <img style="border:5 orange" src="images/citylogo.jpg" height="75" width="200" alt="image">
  <div align="justify">
      <br>
      <a href="002.jsp">Home</a>
      <br>
     <a href="logout"> logout</a>
     </div>    
<form name="f">
<h1 class="ad" align="center"><font  color="#fb7d00"> WelCome Admin</font></h1>

<p>

<table>
<tr><td width="288">
<b><font  color="#0080ff" size="5">Insert Record</font></b></p>

<select name="ins" id="ins">
<option>-----Select-------</option>
<option value="1">Places to visit</option>
<option  value="2">Hotels</option>
<option  value="3">Restaurants</option>
<option  value="4">Shopping Malls</option>
<option  value="5">Hospitals</option>
</select>
<button type="button" onclick="show()">Insert</button>

<p>

<b><font  color="#0080ff" size="5">Update Records</font></b></p>
<select name="ins1" id="ins1">
<option>-----Select-------</option>
<option value="1">Places to visit</option>
<option value="2">Hotels</option>
<option value="3">Restaurants</option>
<option value="4">Shopping Malls</option>
<option value="5">Hospitals</option>
</select>         
<input type="submit" value="Update" onclick="show1()">

<p>

<b><font color="#0080ff" size="5">Delete Record</font></b></p>
<select name="ins2" id="ins2">
<option>-----Select-------</option>
<option value="1">Places to visit</option>
<option value="2">Hotels</option>
<option value="3">Restaurants</option>
<option value="4">Shopping Malls</option>
<option value="5">Hospitals</option>
</select>

<input type="submit" value="Delete" onclick="show2()">

<p><input type="submit" value="Exit">

<input type="reset" value="Reset">

</td>
<td width="141" align="center" valign="top">




<center><font color="#0080ff" size="5">News Upload</font></center>                
   <br>
<input type="submit" value="Insert" onclick="shownews()">
   <br>

  <br>
<input type="submit" value="Delete">
<br>
<br>
</td>
<td width="206" align="center" valign="top"><font color="#0080ff" size="5">Send Mail to members</font>                
<br>
<br>
<input type="submit" value="Click to send Mail" onclick="mail()">


</td>
</tr>
</table>
</form>

</body>
</html>