<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<style>
/* Apply a basic reset to remove default padding and margins */
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

.container input[type="email"], .container input[type="password"] {
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

.container input[type="email"]:focus, .container input[type="password"]:focus
	{
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
		<header>
			<h1>Login</h1>
		</header>
		<form action="login" method="post">
			<label for="email">Email:</label> <input type="email" id="email"
				name="email" required> <label for="password">Password:</label>
			<input type="password" id="password" name="password" required>

			<button type="submit">Login</button>
		</form>

		<!-- Register link -->
		<p>
			Don't have an account? <a href="register.jsp">Register</a>
		</p>
	</div>
</body>
</html>
