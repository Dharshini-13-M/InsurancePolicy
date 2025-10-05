<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Insurance Policy Portal</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;	
            background-color: #f9f9f9;
        }
        header {
            background-color: #004080;
            color: white;
            padding: 5px;
            text-align: center;
        }
        nav {
            background-color: #f2f2f2;
            padding: 15px;
            text-align: center;
        }
        nav a {
            margin: 0 20px;
            text-decoration: none;
            font-weight: bold;
            color: #004080;
        }
        .main-content{
            display: flex;
            align-items: center;
            margin-top:10px;
            padding: 40px;
            margin: 20px;
        }
        img {
            max-width: 650px;
            height: 330px;
            border-radius: 10px;
        }
        .left-side, .right-side {
            flex: 1;
            padding: 20px;
        }
        .buttons {
            margin-top: 30px;
        }
        .buttons a {
            padding: 10px 25px;
            background-color: #004080;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            margin: 10px;
            display: inline-block;
        }
        .buttons a:hover {
            background-color: #0059b3;
        }
    </style>
</head>
<body>
<header>
    <h1>Welcome to Our Insurance Policy Portal</h1>
    <p>Your trusted partner in securing your future</p>
</header>
<nav>
    <a href="index.jsp">Home</a>
    <a href="insurance.jsp">Insurance</a>
    <a href="help.jsp">Help</a>
    <a href="register.jsp">Register / Sign In</a>
</nav>
<div class="main-content">
    <div class="left-side">
        <img src="images/1pro.jpg" alt="Insurance Image">
    </div>
    <div class="right-side">
        <h2>Secure Your Future with the Right Insurance Plan</h2>
        <p>We offer various policy options tailored to your needs. Register today and explore your options!</p>
        <div class="buttons">
            <a href="register.jsp">Register Now</a>
            <a href="register.jsp">Sign In</a>
        </div>
    </div>
</div>
</body>
</html>
