<%@page import="in.fssa.mynotes.model.Tasks"%>
<%@page import="java.util.Set"%>
<%@page import="in.fssa.mynotes.service.TasksService"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sample Table Data</title>
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

.edit-btn, .delete-btn, .view-btn {
    padding: 5px 10px;
    cursor: pointer;
    border: none;
    outline: none;
    border-radius: 3px;
    font-weight: bold;
    transition: background-color 0.3s, color 0.3s;
}

.edit-btn {
    background-color: #3498db;
    color: white;
    margin-right: 5px;
}

.delete-btn {
    background-color: #e74c3c;
    color: white;
}

.view-btn {
    background-color: #27ae60; /* Green color */
    color: white;
}

.edit-btn:hover {
    background-color: #2980b9;
}

.delete-btn:hover {
    background-color: #c0392b;
}

table tr:hover {
    background-color: #f5f5f5;
}
</style>

</head>
<body>
    <%
    TasksService ts = new TasksService();
    %>
    <%
    Set<Tasks> getAllTask = ts.getAllTasks();
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
        for (Tasks task : getAllTask) {
        %>
        <tr>
            <td><%=task.getId()%></td>
            <td><%=task.getName()%></td>
            <td><%=task.getDescription()%></td>
            <td><%=task.getStatus()%></td>
            <td>
                <button class="edit-btn">Edit</button>
            </td>
            <td>
                <button class="delete-btn">Delete</button>
            </td>
            <td>
                <button class="view-btn">View</button>
            </td>
        </tr>
        <%
        }
        %>
    </table>
</body>
</html>
