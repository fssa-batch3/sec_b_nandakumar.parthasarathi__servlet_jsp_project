<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register</title>
</head>
<body>

<style>
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

/* Global styles */
body {
    font-family: Arial, sans-serif;
    background-color: #f3f3f3;
    display: flex;
    justify-content: center;
    align-items: center;
    min-height: 100vh;
    margin: 0;
}

.container {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.2);
    overflow: hidden;
    width: 400px;
    padding: 20px;
    text-align: center;
}

.container h1 {
    color: #333;
    margin-bottom: 20px;
}

.container form {
    text-align: left;
}

.container label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #555;
}

.container input[type="text"],
.container input[type="email"],
.container input[type="password"],
.container select {
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

.container input[type="text"]:focus,
.container input[type="email"]:focus,
.container input[type="password"]:focus,
.container select:focus {
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


  <div class="container">
        <h1>Register</h1>
        <form action="create" method="post">
            <label for="name">User Name:</label>
            <input type="text" name="name" required>
            
            <label for="description">Email:</label>
            <input type="email" name="description" required>
            
            <label for="description">Password:</label>
            <input type="password" name="description" required>
            
            <button type="submit">Register</button>
        </form>
    </div>
</body>
</html>