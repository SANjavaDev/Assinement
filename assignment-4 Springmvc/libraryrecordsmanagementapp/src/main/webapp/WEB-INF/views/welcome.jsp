<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="navbar.jsp"%>
<%
String string = (String) request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
</head>
<body>

	<h1>
		LoggedIn As: 
		<%=string%>
	</h1>

</body>
</html>