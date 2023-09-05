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
            justify-content: center;
            align-items: center;
            height: 100vh;
        }

        form {
            width: 50%;
            margin: 20px auto;
            padding: 20px;
            background-color: #ffffff;
            border: 1px solid #dddddd;
            border-radius: 5px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
        }

        h1 {
            text-align: center;
        }

        button {
            background-color: #e74c3c;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 15px;
            width: 120px;
            cursor: pointer;
        }

        button:hover {
            background-color: #c0392b;
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
