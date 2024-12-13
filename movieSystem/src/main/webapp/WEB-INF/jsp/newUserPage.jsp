<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Form</title>
    <style>
        /* Global styling */
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            background-color: #fcdff1; /* Slightly darker than #fef6fc */
        }

        /* Form container styling */
        .form-container {
            background-color: #fff;
            padding: 40px;
            border-radius: 0;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 500px;
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #333;
        }

        /* Form field styling */
        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 8px;
            color: #555;
            font-size: 14px;
            font-weight: bold;
        }

        .form-group input,
        .form-group button,
        .form-group datalist {
            width: 100%;
            padding: 12px;
            border: 1px solid #ddd;
            border-radius: 0;
            font-size: 14px;
        }

        .form-group input:focus {
            border-color: #ff6699;
            outline: none;
            box-shadow: 0 0 5px rgba(255, 102, 153, 0.5);
        }

        /* Button styling */
        .form-buttons {
            display: flex;
            justify-content: space-between;
        }

        .form-buttons button {
            width: 48%;
            height: 40px; /* Increased height */
            background-color: #ff6699;
            color: #fff;
            border: none;
            cursor: pointer;
            font-weight: bold;
            font-size: 16px;
            transition: all 0.3s ease;
        }

        .form-buttons button:hover {
            background-color: #ff4d88;
        }

        .form-buttons button[type="reset"] {
            background-color: #ddd;
            color: #555;
        }

        .form-buttons button[type="reset"]:hover {
            background-color: #ccc;
        }
    </style>
    <script type="text/javascript">
    function passwordCheck() {
        var pass1 = document.getElementById("pass1").value.trim();
        var pass2 = document.getElementById("pass2").value.trim();

        // Conditions
        var errors = [];
        if (pass1.length < 8) {
            errors.push("- At least 8 characters long");
        }
        if (!/[a-z]/.test(pass1)) {
            errors.push("- At least one lowercase letter");
        }
        if (!/[A-Z]/.test(pass1)) {
            errors.push("- At least one uppercase letter");
        }
        if (!/\d/.test(pass1)) {
            errors.push("- At least one number");
        }
        if (!/[@$!%*?&#]/.test(pass1)) {
            errors.push("- At least one special character (@, $, !, %, *, ?, &, #)");
        }

        // If errors exist, show an alert
        if (errors.length > 0) {
            alert("Password must meet the following requirements:\n" + errors.join("\n"));
            return;
        }

        // Check if passwords match
        if (pass1 === pass2) {
            document.getElementById("registrationForm").submit();
        } else {
            alert("Passwords do not match!");
        }
    }

    </script>
</head>
<body>
<div class="form-container">
    <h2>Register New User</h2>
    <form:form id="registrationForm" action="/register" method="post" modelAttribute="userRecord">
        <div class="form-group">
            <label for="username">Enter New User Id</label>
            <form:input path="username" id="username" />
        </div>
        <div class="form-group">
            <label for="pass1">Enter New Password</label>
            <form:input type="password" id="pass1" path="password" />
        </div>
        <div class="form-group">
            <label for="pass2">Re-type New Password</label>
            <input type="password" id="pass2" />
        </div>
        <div class="form-group">
            <label for="name">Enter User's Full Name</label>
            <form:input path="name" id="name" />
        </div>
        <div class="form-group">
            <label for="email">Enter Email</label>
            <form:input path="email" id="email" />
        </div>
        <div class="form-group">
            <label for="role">Select User Role</label>
            <form:input list="types" name="type" id="type" path="role" />
            <datalist id="types">
                <option value="Customer"></option>
                <option value="Admin"></option>
            </datalist>
        </div>
        <div class="form-buttons">
            <button type="button" onclick="passwordCheck();">Submit</button>
            <button type="reset">Reset</button>
        </div>
    </form:form>
</div>
</body>
</html>