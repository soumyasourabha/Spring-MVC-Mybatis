<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css" />

<body>
	<div class="container">
		<h1 class="display-4">Employee List</h1>
		<hr class="my-4">
		<button class="btn btn-primary"
			onClick="window.location.href='employeeForm'">Add Employee</button>
		
			<table class="table table-light table-bordered table-striped">
				<thead class="table thead-dark">
					<tr>
						<th scope="col">Employee Id</th>
						<th scope="col">Name</th>
						<th scope="col">Domain</th>
						<th scope="col">Salary</th>
						<th scope="col" colspan="3">Actions</th>
					</tr>
				</thead>
				<tbody>
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
							<td><a href="${editLink}">Update</a>
							<td>
							<td><a href="${deleteLink}"
								onClick="if(!confirm('Are you sure want to delete this employee details')) return false;">Delete</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
	</div>
	<script src="https://unpkg.com/jquery@3.3.1/dist/jquery.min.js"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>
	<script>
		$(document).ready(function(){
				$("#datatable").DataTable();
			})
	</script>

</body>
</html>
"
