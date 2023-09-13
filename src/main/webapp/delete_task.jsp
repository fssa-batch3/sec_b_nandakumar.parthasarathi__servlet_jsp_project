<%@ page import="in.fssa.mynotes.model.Tasks" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Delete Task</title>
    <style>
    
    
    
    
    
 body {
    font-family: Arial, sans-serif;
    background-color: #f3f3f3;
    margin: 0;
    padding: 0;
    display: flex;
    min-height: 100vh;
    flex-wrap: wrap;
    flex-direction: column;
    justify-content: center;
    align-items: center;
}


.container {
    display: flex;
    flex-direction: row; /* Display in a row */
    justify-content: space-around; /* Add space between elements */
    align-items: center;
    background-color: #ffffff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
    padding: 20px;
    width: 60%;
    max-width: 500px;
    text-align: center;
}

.container p {
    text-align: left; /* Align text to the left */
    flex: 1; /* Allow flex to adjust width */
    margin: 0 10px; /* Add margin between elements */
}

button {
    background-color: #e74c3c;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 12px 20px;
    cursor: pointer;
    font-weight: bold;
    transition: background-color 0.3s;
}

button:hover {
    background-color: #c0392b;
}

a {
    text-decoration: none;
    margin-top: 20px;
    font-size: 16px;
    color: #3498db;
}

a:hover {
    color: #2980b9;
}


    </style>
</head>
<body>
<%
    Tasks task = (Tasks) request.getAttribute("task");
%>
<h1>Delete Task</h1>
<form action="delete" method="post">
    <input type="hidden" name="id" value="<%= task.getId() %>">
    <p>Are you sure you want to delete this task?</p>
    <p>Task Name: <%= task.getName() %></p>
    <p>Task Description: <%= task.getDescription() %></p>
    <p>Task Status: <%= task.getStatus() %></p>
    <button type="submit">Delete Task</button>
</form>
<!-- Add a back button or link to return to the task list -->
<a href="<%= request.getContextPath() %>/tasks">Back to Task List</a>
</body>
</html>
