<%@ page import="in.fssa.mynotes.model.Tasks" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>View Task Details</title>
<style>
body {
    font-family: 'Arial', sans-serif;
    background-color: #f4f4f4;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
}

.container {
    background-color: #ffffff;
    border-radius: 5px;
    box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.2);
    padding: 20px;
    text-align: center;
    max-width: 800px;
    margin: 0 auto;
}

h1 {
    color: #3498db;
    font-size: 24px;
    margin-bottom: 20px;
}

table {
    width: 100%;
    text-align: left;
    border-collapse: collapse;
}

th, td {
    border-bottom: 1px solid #ddd;
    padding: 12px 15px;
}

th {
    background-color: #f2f2f2;
}

a.button {
    display: inline-block;
    text-align: center;
    text-decoration: none;
    background-color: #3498db;
    color: white;
    border: none;
    border-radius: 5px;
    padding: 10px 20px;
    margin-top: 20px;
    cursor: pointer;
    transition: background-color 0.3s;
}

a.button:hover {
    background-color: #2980b9;
}
</style>
</head>
<body>
    <div class="container">
        <%
        Tasks task = (Tasks) request.getAttribute("task");
        %>
        <h1>Task Details</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Task Name</th>
                <th>Task Description</th>
                <th>Task Status</th>
                <!-- Add more task details here if needed -->
            </tr>
            <tr>
                <td><%=task.getId()%></td>
                <td><%=task.getName()%></td>
                <td><%=task.getDescription()%></td>
                <td><%=task.getStatus()%></td>
                <!-- Display more task details here if needed -->
            </tr>
        </table>
        <!-- Add a back button or link to return to the task list -->
        <a href="/mynotes-web/tasks" class="button">Back to Task List</a>
    </div>
</body>
</html>
