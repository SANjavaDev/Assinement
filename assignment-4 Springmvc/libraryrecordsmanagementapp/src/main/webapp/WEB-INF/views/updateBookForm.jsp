<%@page import="com.te.libraryrecordsmanagementapp.bean.LibraryDetails"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>

<%
Integer data = (Integer) request.getAttribute("data");
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
	<h1 style="color: red;">
		<%=msg%>
	</h1>
	<%
	}
	%>
	<br>
	<br>
	<fieldset>
		<legend>Book Record Details</legend>
		<form action="./update" method="post">
			<table>
				<tr>
					<td><label>Enter Id:</label></td>
					<td><input type="number" name="id"></td>
				</tr>
				<tr>
					<td><label>Book_Name</label></td>
					<td><input type="text" name="name"></td>
				</tr>
				<tr>
					<td><label>Book_Author</label></td>
					<td><input type="text" name="author"></td>
				</tr>
				<tr>
					<td><label>Book_Price</label></td>
					<td><input type="text" name="price"></td>
				</tr>
				<tr>
					<td><label>Enter Password</label></td>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="UpdateDetails"
						style="width: 100px;"></td>
				</tr>
			</table>

		</form>
	</fieldset>
	
</body>
</html>