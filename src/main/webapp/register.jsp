<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register</title>
    <style>
        /* Apply a basic reset to remove default padding and margins */
        body, html, h1, form {
            margin: 0;
            padding: 0;
        }

        /* Set a background color for the body */
        body {
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
        }

        /* Style the container */
        .container {
            background-color: #fff;
            width: 400px;
            margin: 0 auto;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        /* Style the form */
        form {
            display: flex;
            flex-direction: column;
        }

        /* Style labels and input fields */
        label {
            font-weight: bold;
            margin-bottom: 5px;
        }

        input[type="text"],
        input[type="email"],
        input[type="password"] {
            padding: 10px;
            margin-bottom: 15px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }

        /* Style the submit button */
        button[type="submit"] {
            background-color: #007bff;
            color: #fff;
            padding: 10px 15px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        button[type="submit"]:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Register</h1>
        <form action="<%= request.getContextPath()%>/user/create" method="post">
            <label for="username">User Name:</label>
            <input type="text" id="username" name="user_name" required>
            
            <label for="email">Email:</label>
            <input type="email" id="email" name="email" required>
            
            <label for="password">Password:</label>
            <input type="password" id="password" name="password" required>
            
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>
