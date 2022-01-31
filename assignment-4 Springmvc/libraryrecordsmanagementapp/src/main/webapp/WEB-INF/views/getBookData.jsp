<%@page import="com.te.libraryrecordsmanagementapp.bean.LibraryDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>
<%
String msg = (String) request.getAttribute("msg");
LibraryDetails details = (LibraryDetails) request.getAttribute("data");
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
	<h1 style="color: red;">
		<%=msg%>
	</h1>
	<%
	}
	%>
	<br>
	<br>
	<form action="./bookDetails" method="post">
		<label>Enter ID: </label> <input type="number" name="id"> <input
			type="submit" value="find" style="width: 100px">
	</form>
	<br>
	<br>
	<%
	if (details != null) {
	%>
	<h1>
		Item_Id:
		<%=details.getId()%></h1>
	<h1>
		Book_Name:
		<%=details.getName()%></h1>
	<h1></h1>
	<h1>
		Book_Author:
		<%=details.getPrice()%></h1>

	<h1>
		Book_Price:
		<%=details.getPrice()%></h1>
	<%
	}
	%>
</body>
</html>