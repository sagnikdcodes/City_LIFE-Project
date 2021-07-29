<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<title>Insert title here</title>
<script type="text/javascript">
function show(){
var uid1=document.f.id.value;
	
	var a;
	if(window.XMLHttpRequest){ //check if the browser support the XMLhttpRequest object or not (detects whether the browser has XMLHttpRequest functionalit)
		a=new XMLHttpRequest();//if it support then create that object used in newer browser
	}
	else{
		a=new ActiveXObject("Microsoft.XMLHTTP"); //else create an activeXobject used in older browser
	}
	a.onreadystatechange=function(){
		if(a.readyState==4 & a.status==200){
			document.getElementById("mydiv").innerHTML=a.responseText;
				
		}
	}
	a.open("GET","tabpv.jsp",true)
	a.send();
	
	
}

</script>

</head>
</head>
<body>
<form name="f">
<h1>Admin</h1>
<p>Insert Record</p>
<select>
<option>-----Select-------</option>
<option name="id" value="1">Places to visit</option>
<option name="id" value="2">Hotels</option>
<option name="id" value="3">Restaurants</option>
<option name="id" value="3">Shopping Malls</option>
<option name="id" value="4">Hospitals</option>
</select>
<button type="button" onclick="show()">insert</button>
  <h2>Update</h2>
<select>
<option>select table</option>
<option>Places to visit</option>
<option>Hotels</option>
<option>Restaurants</option>
<option>Shopping Malls</option>
<option>Hospitals</option>
</select>         
<tr><td colspan="2" align="center"><input type="submit" value="Update"></td></tr>
<p>Delete Record</p>
<select>
<option>select table</option>
<option>Places to visit</option>
<option>Hotels</option>
<option>Restaurants</option>
<option>Shopping Malls</option>
<option>Hospitals</option>
</select>

<tr><td colspan="2" align="center"><input type="submit" value="Delete"></td></tr>


<tr><td colspan="2" align="left"><input type="reset" value="Reset"></td></tr>


<tr><td colspan="2" align="center"><input type="submit" value="Exit"></td></tr>
                  
<div id="mydiv" style="height: 30px; width: 100px;">Show Here</div>
</form>
</body>
</html>