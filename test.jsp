<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%if(session.getAttribute("pass1")==null){ %>
<script type="text/javascript">
alert("PLease Login To View");
var x=new XMLHttpRequest();
x.open("get", "002.jsp", true);
</script>
<%//response.sendRedirect("002.jsp");
request.getRequestDispatcher("002.jsp").include(request, response);
}
else{
	response.sendRedirect("recordpv.jsp");
}
%>
</body>
</html>