<%@page import="com.te.springboot_mvcassinement.dto.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@ include file="navbar.jsp"%>
<%
List<Employee> data = (List<Employee>) request.getAttribute("users");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<!-- Font Awesome -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
	rel="stylesheet" />
<!-- Google Fonts -->
<link
	href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
	rel="stylesheet" />
<!-- MDB -->
<link
	href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.css"
	rel="stylesheet" />

</head>
<body>
	<br>
	<br>
	<br>
	<h1>User Details</h1>
	<br>
	<table class="table table-striped">
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Password</th>
			<th>Role</th>

		</tr>
		<%
		for (Employee list : data) {
		%>
		<tr>
			<td><%=list.getEmpId()%></td>
			<td><%=list.getEmpName()%></td>
			<td><%=list.getEmpPassword()%></td>
			<td><%=list.getEmpRole()%></td>
		</tr>
		<%
		}
		%>
	</table>

	<!-- MDB -->
	<script type="text/javascript"
		src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.10.2/mdb.min.js"></script>
</body>
</html>