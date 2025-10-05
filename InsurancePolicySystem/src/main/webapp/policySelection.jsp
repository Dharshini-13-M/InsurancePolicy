<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, jakarta.servlet.*, jakarta.servlet.http.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Select Insurance Policy</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f4f4f4;
        }
        .form-container {
            width: 50%;
            margin: 50px auto;
            padding: 20px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
        }
        .policy-option {
            margin: 20px 0;
            padding: 15px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }
        .policy-option:hover {
            background-color: #f1f1f1;
        }
        input[type="submit"] {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #0056b3;
        }
        label {
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="form-container">
        <h2>Select Your Insurance Policy</h2>
        <form action="policyDetails.jsp" method="post">
            <!-- List of Policy Options -->
            <div class="policy-option">
                <input type="radio" id="life" name="policyType" value="Life Insurance" required>
                <label for="life">Life Insurance</label>
            </div>
            <div class="policy-option">
                <input type="radio" id="health" name="policyType" value="Health Insurance" required>
                <label for="health">Health Insurance</label>
            </div>
            <div class="policy-option">
                <input type="radio" id="car" name="policyType" value="Car Insurance" required>
                <label for="car">Car Insurance</label>
            </div>
            <div class="policy-option">
                <input type="radio" id="home" name="policyType" value="Home Insurance" required>
                <label for="home">Home Insurance</label>
            </div>
            <div class="policy-option">
                <input type="radio" id="travel" name="policyType" value="Travel Insurance" required>
                <label for="travel">Travel Insurance</label>
            </div>
            <div class="policy-option">
                <input type="radio" id="business" name="policyType" value="Business Insurance" required>
                <label for="business">Business Insurance</label>
            </div>
            <input type="submit" value="Submit">
        </form>
    </div>
</body>
</html>
