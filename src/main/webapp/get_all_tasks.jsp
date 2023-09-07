
<%@page import="java.util.HashSet"%>
<%@page import="in.fssa.mynotes.model.Tasks"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.mynotes.service.TasksService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ListAllTask</title>
<link
	href="https://fonts.googleapis.com/css2?family=Montserrat:wght@400;700&family=Roboto:wght@400;700&display=swap"
	rel="stylesheet">
<style>
body {
	font-family: 'Roboto', sans-serif;
	background-color: #f7f7f7;
	margin: 0;
	padding: 0;
}

.container {
	max-width: 1200px;
	margin: 0 auto;
	padding: 20px;
}

h1, h2, h3, h4, h5, h6 {
	font-family: 'Montserrat', sans-serif;
	color: #333;
}

table {
	width: 100%;
	margin: 20px 0;
	text-align: center;
	border-collapse: collapse;
	background-color: white;
	box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
}

th, td {
	border: 1px solid #dddddd;
	padding: 10px;
}

th {
	background-color: #f2f2f2;
}

.edit-btn, .view-btn, .delete-btn, .add-btn {
	padding: 5px 20px;
	cursor: pointer;
	border: none;
	border-radius: 5px;
	font-weight: bold;
	transition: background-color 0.3s, color 0.3s;
	text-decoration: none; /* Remove underlines from anchor tags */
}

.edit-btn {
	background-color: #3498db; /* Blue color */
	color: white;
	margin-right: 5px;
}

.view-btn {
	background-color: #27ae60; /* Green color */
	color: white;
	margin-right: 5px;
}

.delete-btn {
	background-color: #e74c3c; /* Red color */
	color: white;
	margin-right: 5px;
}

.add-btn {
	background-color: #4CAF50; /* Green color */
	color: white;
	border: none;
	border-radius: 5px;
	font-weight: bold;
	cursor: pointer;
	transition: background-color 0.3s, color 0.3s;
	text-decoration: none;
	margin-bottom: 20px;
}

.edit-btn:hover {
	background-color: #2980b9;
}

.view-btn:hover {
	background-color: #219653;
}

.delete-btn:hover {
	background-color: #c0392b;
}

.add-btn:hover {
	background-color: #45a049; /* Darker green on hover */
}

table tr:hover {
	background-color: #f5f5f5;
}
</style>

</head>
<body>


	<jsp:include page="header.jsp"></jsp:include>


	<%
	Set<Tasks> taskList = (Set<Tasks>) request.getAttribute("taskList");
	%>
	

	<table>
		<tr>
			<th>ID</th>
			<th>Task Name</th>
			<th>Task Description</th>
			<th>Task Status</th>
			<th>Edit</th>
			<th>Delete</th>
			<th>View</th>
		</tr>
		<%
		for (Tasks task : taskList) {
		%>
		<tr>
			<td><%=task.getId()%></td>
			<td><%=task.getName()%></td>
			<td><%=task.getDescription()%></td>
			<td><%=task.getStatus()%></td>
			<td><a class="edit-btn"
				href="<%=request.getContextPath()%>/tasks/edit?id=<%=task.getId()%>">Edit</a></td>
			<td><a class="delete-btn"
				href="<%=request.getContextPath()%>/tasks/newDeleteTask?taskId=<%=task.getId()%>">Delete</a></td>
			<td><a class="view-btn"
				href="<%=request.getContextPath()%>/tasks/view?id=<%=task.getId()%>">View</a></td>
		</tr>
		<%
		}
		%>
	</table>
	<a href="<%=request.getContextPath()%>/tasks/new"><button
			type="button" class="add-btn">Add New Task</button></a>
</body>
</html>