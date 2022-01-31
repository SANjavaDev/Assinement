<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Login Access</title>
</head>
<body>
	<fieldset>
		<legend>Library Admin_login:</legend>
		<form action="./login" method="post">
			<table>
				<tr>
					<th><label>Login Id: </label></th>
					<td><input type="number" name="id"></td>
				</tr>
				<tr>
					<th><label>Login Password: </label></th>
					<td><input type="password" name="password"></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login" style="width: 100px;">
			</table>
		</form>

	</fieldset>

</body>
</html>