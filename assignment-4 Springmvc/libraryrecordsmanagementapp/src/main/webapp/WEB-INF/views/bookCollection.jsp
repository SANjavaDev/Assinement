<%@page import="com.te.libraryrecordsmanagementapp.bean.LibraryDetails"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>
<%
List<LibraryDetails> data = (List<LibraryDetails>) request.getAttribute("data");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>BooKCollection</title>
<style type="text/css">
table,td,th,tr{
border: 2px solid black;
border-collapse:collapse; 
}
</style>

</head>
<body>
	<h1>LibraryBookDetails</h1>
	<table>
		<tr>
			<th>Item_Id</th>
			<th>Book_Name</th>
			<th>Book_Author</th>
			<th>Book_Price</th>
			<th>Password</th>
		</tr>
		<%
		for (LibraryDetails list : data) {
		%>
		<tr>
			<td><%=list.getId()%></td>
			<td><%=list.getName()%></td>
			<td><%=list.getAuthor()%></td>
			<td><%=list.getPrice()%></td>
			<td><%=list.getPassword()%></td>
		</tr>
		<%
		}
		%>
	</table>
</body>
</html>