<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="s" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h1>Add Employee</h1>
		<s:form modelAttribute="employee" action="save">
		<s:hidden path="id"/>
			Name :	<s:input path="name"/><br>
			Domain :<s:input path="domain"/><br>
			Salary : <s:input path="salary"/><br>
			
			<input type="submit" value="save"></input>
		</s:form>
		
		
</body>
</html>