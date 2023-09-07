<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Header</title>
<style type="text/css">
body, h1, ul, li {
	margin: 0;
	padding: 0;
	list-style: none;
}

body {
	font-family: Arial, sans-serif;
	background-color: #f0f0f0;
}

header {
	background-color: #333;
	color: #fff;
	padding: 20px 0;
	text-align: center;
	box-shadow: 0px 2px 5px rgba(0, 0, 0, 0.2);
}

h1 {
	font-size: 36px;
	margin: 0;
}

nav ul {
	text-align: center;
	padding: 0;
}

nav li {
	display: inline;
	margin-right: 20px;
}

nav li:last-child {
	margin-right: 0;
}

nav a {
	text-decoration: none;
	color: #fff;
	font-size: 18px;
	transition: color 0.3s;
}

nav a:hover {
	color: #ffd700;
}

/* CSS class for the Sign In button-like appearance */
.sign-in-button {
	background-color: #ffd700;
	color: #333;
	padding: 10px 20px;
	border-radius: 5px;
	text-transform: uppercase;
	font-weight: bold;
	text-decoration: none;
}

.sign-in-button:hover {
	background-color: black;
}
</style>
</head>
<body>

	<%
	String loggedEmail = (String) request.getSession().getAttribute("loggedEmail");
	System.out.println(loggedEmail);
	%>

	<%
	if (loggedEmail == null) {
	%>
	<header>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="login.jsp" class="sign-in-button">Login</a></li>
			</ul>
		</nav>
	</header>
	<%
	} else {
	%>
	<header>
		<nav>
			<ul>
				<li><a href="index.jsp">Home</a></li>
				<li><a href="tasks">List all tasks</a></li>
				<li><a href="tasks/new">Create tasks</a></li>
				<li><a href="logout" class="sign-in-button">Logout</a></li>
			</ul>
		</nav>
	</header>

	<%
	}
	%>
</body>
</html>
