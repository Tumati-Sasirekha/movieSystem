<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Error</title>
    <style>
        body {
            margin: 0;
            font-family: 'Arial', sans-serif;
            background: linear-gradient(135deg, #ff6a6a, #ffc3a0);
            color: #333;
            display: flex;
            align-items: center;
            justify-content: center;
            height: 100vh;
            overflow: hidden;
        }
        .container {
            text-align: center;
            background: #fff;
            padding: 20px 40px;
            border-radius: 12px;
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
            max-width: 400px;
        }
        h1 {
            font-size: 48px;
            color: #e63946;
            margin-bottom: 10px;
        }
        p {
            font-size: 18px;
            color: #555;
            margin-bottom: 20px;
        }
        a {
            text-decoration: none;
            color: #fff;
            background-color: #457b9d;
            padding: 10px 20px;
            border-radius: 6px;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }
        a:hover {
            background-color: #1d3557;
        }
        .error-icon {
            font-size: 60px;
            color: #e63946;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="container">
        <div class="error-icon">&#9888;</div> <!-- Unicode for warning symbol -->
        <h1>Oops!</h1>
        <p>${errorMessage}</p>
        <a href="/">Go Back to Home</a>
    </div>
</body>
</html>
