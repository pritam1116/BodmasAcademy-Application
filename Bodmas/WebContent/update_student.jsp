<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<div id="container">
	<h3>Update Student</h3>
	
	<form action="BodmasControllerServlet" method="get">
	<input type="hidden" name="command" value="UPDATE" />
	<input type="hidden" name="studentId" value="${THE_STUDENT.id}" />
	
	<table>
		<tbody>
			<tr>
				<td><label>Name:</label></td>
				<td><input type="text" name="name" value="${THE_STUDENT.name}"  /></td>
			</tr>
			
			<tr>
				<td><label>Email:</label></td>
				<td><input type="text" name="email" value="${THE_STUDENT.email}" /></td>
			</tr>
			
			<tr>
				<td><label>Mobile:</label></td>
				<td><input type="text" name="mobile" value="${THE_STUDENT.mobile}"  /></td>
			</tr>
			
			<tr>
				<td><label>Password:</label></td>
				<td><input type="text" name="password" value="${THE_STUDENT.password}"  /></td>
			</tr>
			
			<tr>
				<td><label>Confirm Password:</label></td>
				<td><input type="text" name="confirm_password" value="${THE_STUDENT.confirm_password}"  /></td>
			</tr>
			
			<tr>
				<td><label></label></td>
				<td><input type="submit" value="Save" class="save"  /></td>
			</tr>
		</tbody>
	</table>
	
	</form>
	
	<div style="clear: both;"></div>
	<p>
		<a href="BodmasControllerServlet">Back to List</a>
	</p>
</div>

</body>
</html>