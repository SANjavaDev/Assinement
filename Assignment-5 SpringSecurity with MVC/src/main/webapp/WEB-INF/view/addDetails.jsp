<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="navbar.jsp"%>
<%
String msg = (String) request.getAttribute("msg");
String err = (String) request.getAttribute("err");
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
	<%
	if (err != null && !err.isEmpty()) {
	%>
	<h1><%=err%></h1>
	<%
	}
	%>

	<br>
	<br>
	<br>

	<br>
	<br>
	<div class="form-outline">
		<input type="number"  id="formControlLg"
			class="form-control form-control-lg" /> <label class="form-label"
			for="formControlLg">Employee ID:</label>
	</div>
	<br>

	<div class="form-outline">
		<input type="text" id="formControlLg"
			class="form-control form-control-lg" /> <label class="form-label"
			for="formControlLg">Employee Name: </label>
	</div>
	<br>

	<div class="form-outline">
		<input type="password" id="formControlLg"
			class="form-control form-control-lg" /> <label class="form-label"
			for="formControlLg">Employee Password:</label>
	</div>
	<br>

	<div class="form-outline">
		<input type="password" id="formControlLg"
			class="form-control form-control-lg" /> <label class="form-label"
			for="formControlLg">Employee Role:</label>
	</div>
	<br>
	<button type="submit" class="btn btn-dark">Submit</button>

</body>
</html>