<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="s"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css"
	href="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.css" />
<body>

	<div class="container">
		<h1 class="display-4">Add Employee</h1>
		<hr class="my-4">
		<s:form modelAttribute="employee" action="save">
			<s:hidden path="id" />
			<div class="form-group">
				<label for="Name">Name</label>
				<s:input path="name" id="Name" class="form-control" />
			</div>
			<div class="form-group">
				<label for="Domain">Domain</label>
				<s:input path="domain" id="Domain" class="form-control" />
			</div>
			<div class="form-group">
				<label for="Salary">Salary</label>
				<s:input path="salary" id="Salary" class="form-control" />
			</div>
			<input type="submit" class="btn btn-primary value="save"></input>
		</s:form>
	</div>

	<script src="https://code.jquery.com/jquery-3.4.1.min.js"
		integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
		crossorigin="anonymous"></script>
	<script type="text/javascript"
		src="https://cdn.datatables.net/v/bs4/dt-1.10.20/datatables.min.js"></script>

</body>
</html>