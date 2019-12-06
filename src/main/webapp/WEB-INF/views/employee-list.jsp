<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>Employee List</h1>
	<button onClick="window.location.href='employeeForm'">Add Employee</button>
	<div>
		<table border="1">
			<tr>
				<th>Employee Id</th>
				<th>Name</th>
				<th>Domain</th>
				<th>Salary</th>
				<th colspan="3">Actions</th>
			</tr>
			<c:forEach items="${employeeList}" var="e">
			
				<c:url var="deleteLink" value="/deleteEmployee">
					<c:param name="empid" value="${e.id}"></c:param>
				</c:url>
				<c:url var="editLink" value="/editEmployee">
					<c:param name="empid" value="${e.id}"></c:param>
				</c:url>
				<tr>
					<td>${e.id}</td>
					<td>${e.name}</td>
					<td>${e.domain}</td>
					<td>${e.salary}</td>
					<td><a href="${editLink}">Update</a><td>
					<td><a href="${deleteLink}" onClick="if(!confirm('Are you sure want to delete this employee details')) return false;">Delete</a></td>		
				</tr>
			</c:forEach>
		</table>
	</div>
</body>
</html>