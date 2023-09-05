<%@ page import="in.fssa.mynotes.model.Tasks"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Update Task</title>
<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f5f5f5;
	margin: 0;
	padding: 0;
	display: flex;
	flex-direction: column;
	align-items: center;
	justify-content: center;
	height: 100vh;
}

.container {
	display: flex;
	flex-direction: column;
	align-items: center;
	background-color: #ffffff;
	border: 1px solid #e1e1e1;
	border-radius: 5px;
	box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
	padding: 20px;
	width: 60%;
}

h1 {
	color: #3498db;
	margin-bottom: 20px;
}

label {
	display: block;
	margin-bottom: 10px;
	font-weight: bold;
	color: #333;
}

input[type="text"], textarea, select {
	width: 100%;
	padding: 10px;
	margin-bottom: 20px;
	border: 1px solid #e1e1e1;
	border-radius: 5px;
}

select {
	background-color: #f9f9f9;
}

.status-container {
	display: flex;
	align-items: center;
	justify-content: space-between;
}

.status-container select {
	width: 60%;
}

button {
	background-color: #3498db;
	color: white;
	border: none;
	border-radius: 5px;
	padding: 10px 15px;
	width: 100%;
	cursor: pointer;
	font-weight: bold;
	transition: background-color 0.3s;
}

button:hover {
	background-color: #2980b9;
}

.back-button {
	background-color: #ccc;
	color: #333;
	border: none;
	border-radius: 5px;
	padding: 10px 15px;
	margin-top: 20px;
	text-decoration: none;
	cursor: pointer;
	font-weight: bold;
	transition: background-color 0.3s;
	text-align: center;
	width: 100%;
}

.back-button:hover {
	background-color: #999;
	color: #fff;
}
</style>
</head>
<body>
	<div class="container">
		<%
		Tasks task = (Tasks) request.getAttribute("task");
		%>
		<h1>Update Task</h1>
		<form action="update" method="post">
			<input type="hidden" name="id" value="<%=task.getId()%>"> <label
				for="name">Task Name:</label> <input type="text" id="name"
				name="name" value="<%=task.getName()%>"> <label
				for="description">Task Description:</label>
			<textarea id="description" name="description"><%=task.getDescription()%></textarea>

			<div class="status-container">
				<label for="status">Task Status:</label> <select id="statusInput"
					name="status">
					<option value="Pending">Pending</option>
					<option value="In Progress">In Progress</option>
					<option value="Completed">Completed</option>
				</select>
			</div>

			<!-- Add a button to enable editing of the status -->
			<button type="button" id="editStatus">Edit Status</button>
			<button type="submit">Update Task</button>
		</form>
		<!-- Add a back button or link to return to the task list -->
		<a href="<%=request.getContextPath()%>/tasks" class="back-button">Back
			to Task List</a>
	</div>

	<script>
		// Get references to the elements
		const statusInput = document.getElementById('statusInput');
		const editStatusButton = document.getElementById('editStatus');

		// Initially, hide the select and edit button
		statusInput.style.display = 'none';
		editStatusButton.style.display = 'block';

		// Add a click event listener to the edit button
		editStatusButton.addEventListener('click', function() {
			// Show the select element for editing
			statusInput.style.display = 'block';
			// Hide the edit button
			editStatusButton.style.display = 'none';
		});
	</script>
</body>
</html>
