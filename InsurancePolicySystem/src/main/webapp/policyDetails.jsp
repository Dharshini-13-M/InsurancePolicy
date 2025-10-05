<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Policy Details</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #e3f2fd;  
            margin: 0;
            padding: 0;
            text-align: center;
            color: #0d47a1;
        }
        .box {
            border: 1px solid #0d47a1;
            border-radius:15px;
            width: 60%;
            max-width: 600px;
            margin: 100px auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        h2 {
            color: #0d47a1;
            font-size: 1.5em;
            margin-bottom: 20px;
        }
        label {
            display: block;
            font-size: 1em;
            margin-bottom: 8px;
            color: #0d47a1;
        }
        input[type="number"] {
            width: 100%;
            padding: 8px;
            font-size: 1em;
            border: 1px solid #ccc;
            border-radius: 4px;
            margin-bottom: 15px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #0d47a1;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0288d1;
        }
    </style>
</head>
<body>
<div class="box">
    <h2>Enter Policy Details</h2>
    <form action="thankYou.jsp" method="post">
        <input type="hidden" name="policy" value="<%= request.getParameter("policy") %>">
        <label for="amount">Enter Policy Amount:</label>
        <input type="number" id="amount" name="amount" required><br>
        <label for="years">Enter Number of Years:</label>
        <input type="number" id="years" name="years" required><br>
        <input type="submit" value="Proceed to Confirmation">
    </form>
</div>
</body>
</html>
