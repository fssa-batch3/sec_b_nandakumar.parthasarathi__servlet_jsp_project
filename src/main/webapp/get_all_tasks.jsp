
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
<style>
body {
	font-family: Arial, sans-serif;
}

table {
	width: 70%;
	margin: 20px auto;
	text-align: center;
	border-collapse: collapse;
}

th, td {
	border: 1px solid #dddddd;
	padding: 8px;
}

th {
	background-color: #f2f2f2;
}

.edit-btn, .view-btn, .delete-btn {
	padding: 5px 10px;
	cursor: pointer;
	border: none;
	outline: none;
	border-radius: 3px;
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

.edit-btn:hover {
	background-color: #2980b9;
}

.view-btn:hover {
	background-color: #219653;
}

.delete-btn:hover {
	background-color: #c0392b;
}

table tr:hover {
	background-color: #f5f5f5;
}

/* Add your old CSS styles here */
</style>
</head>
<body>
<%
    Set<Tasks> taskList = (Set<Tasks>) request.getAttribute("taskList");
%>
<a href="<%= request.getContextPath() %>/tasks/new"><button type="button" class="add-btn">Add New Task</button></a>

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
        <td><%= task.getId() %></td>
        <td><%= task.getName() %></td>
        <td><%= task.getDescription() %></td>
        <td><%= task.getStatus() %></td>
        <td><a class="edit-btn" href="<%= request.getContextPath() %>/tasks/edit?id=<%= task.getId() %>">Edit</a></td>
        <td><a class="delete-btn" href="<%= request.getContextPath() %>/tasks/newDeleteTask?taskId=<%= task.getId() %>">Delete</a></td>
        <td><a class="view-btn" href="<%= request.getContextPath() %>/tasks/view?id=<%= task.getId() %>">View</a></td>
    </tr>
    <%
    }
    %>
</table>
</body>
</html>