<!DOCTYPE html>
<html>
<head>
    <title>Task Manager</title>
    <style>
        /* Reset some default styles */
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
    <jsp:include page="header.jsp"></jsp:include>

    <!-- Add an image and a statement -->
    <div style="text-align: center; margin-top: 20px;">
        <img src="https://img.freepik.com/free-vector/appointment-booking-mobile-concept_23-2148570788.jpg" alt="Task Manager Image" width="300">
        <p style="font-size: 24px; margin-top: 20px;">
            Welcome to our Task Manager application. Stay organized and manage your tasks efficiently.
        </p>
    </div>

    <!-- The rest of your content goes here -->
</body>
</html>
