<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="navbar.jsp"%>

<%
String msg = (String) request.getAttribute("msg");
String errMsg = (String) request.getAttribute("errMsg");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Book Registration</title>
</head>
<body>
	<%
	if (msg != null && !msg.isEmpty()) {
	%>
	<h1 style="color: green;">
		<%=msg%></h1>
	<%
	}
	%>
	<%
	if (errMsg != null && !errMsg.isEmpty()) {
	%>
	<h1><%=errMsg%></h1>
	<%
	}
	%>

	<fieldset>
		<legend>Book Registration</legend>
		<form action="./add" method="post">
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
					<td><input type="submit" value="AddDetails"
						style="width: 100px;"></td>
				</tr>
			</table>

		</form>
	</fieldset>

</body>
</html>