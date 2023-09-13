<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Create Task</title>
<style>
/* Your existing CSS styles */

/* Additional Styling */
body {
	font-family: Arial, sans-serif;
	background-color: #f3f3f3;
	margin: 0;
	padding: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	height: 100vh;
}

.container {
	background-color: #fff;
	border-radius: 10px;
	box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
	overflow: hidden;
	width: 400px;
}

.container h1 {
	text-align: center;
	margin: 20px 0;
	color: #333;
}

.container form {
	padding: 0 20px 20px;
}

.container label {
	display: block;
	margin-bottom: 5px;
	font-weight: bold;
}

.container input[type="text"], .container select {
	width: 100%;
	padding: 10px;
	margin-bottom: 15px;
	border: none;
	border-radius: 5px;
	background-color: #f8f8f8;
	color: #333;
	outline: none;
	transition: background-color 0.3s;
}

.container input[type="text"]:focus, .container select:focus {
	background-color: #e0e0e0;
}

.container button[type="submit"] {
	background-color: #3498db;
	color: white;
	border: none;
	border-radius: 5px;
	padding: 10px 15px;
	cursor: pointer;
	transition: background-color 0.3s;
}

.container button[type="submit"]:hover {
	background-color: #2980b9;
}
</style>
</head>
<body>
      
      
      


	<div class="container">
		<h1>Create Task</h1>
		<form action="create" method="post">
			<!-- Updated action to match the servlet URL -->

		<label for="task_name">Task Name:</label>
		<input type="text" name="task_name" placeholder="Enter Task Name" required>
		
		<label for="description">Task Description:</label>
		<input type="text" name="description" placeholder="Enter Task Description" required>
		
		<label for="status">Task Status:</label>
		<select id="status" name="status" required>
		    <option value="Pending">Pending</option>
		    <option value="Completed">Completed</option>
		    <option value="Progress"> In Progress</option>
		</select>
		
		<button type="submit">Add</button>
		</form>
	</div>

</body>
</html>
