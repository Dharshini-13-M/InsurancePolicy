<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*" %>
<%
    String amount = request.getParameter("amount");
    String years = request.getParameter("years");
    String selectedPolicy = (String) session.getAttribute("selectedPolicy");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Thank You</title>
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
            color: black;
            font-size: 1.8em;
            margin-bottom: 20px;
        }

        p {
            font-size: 1.1em;
            line-height: 1.6;
            margin-bottom: 15px;
        }

        strong { color: #004080;}
    </style>
</head>
<body>
<div class="box">
    <h2>Thank You for Your Submission!</h2>
    <p>We have received your details for the <%= selectedPolicy != null ? selectedPolicy : "No policy selected" %> policy.</p>
    <p><strong>Amount:</strong> <%= amount %></p>
    <p><strong>Years:</strong> <%= years %></p>
    <p>We will contact you within one week to process your application. Thank you for choosing us!</p>
    <!-- Optionally, display the user's name or other details -->
    <p><strong>Name:</strong> <%= session.getAttribute("userName") != null ? session.getAttribute("userName") : "Guest" %></p>
</div>
</body>
</html>
