<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>

<%
String msg = (String) request.getAttribute("msg");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<%
	if (msg != null && !msg.isEmpty()) {
	%>
	<h1><%=msg%></h1>
	<%
	}
	%>
	<br>
	<br>
	<form action="./delete" method="post">
		<label>Enter Id:</label> <input type="number" name="id"> <input
			type="submit" value="DeleteBookDetails">
	</form>

</body>
</html>