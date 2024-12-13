<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Customer List</title>
    <!-- Link to Google Fonts for Lora font family -->
    <link href="https://fonts.googleapis.com/css2?family=Lora:wght@400;600&display=swap" rel="stylesheet">
    <style>
        * {
            box-sizing: border-box;
            margin: 0;
            padding: 0;
            font-family: 'Lora', serif; /* Using Lora font family */
        }

        body {
            background-color: #fce4ec; /* Very light pink background */
            color: #333;
            padding: 20px;
        }

        h1 {
            text-align: center;
            color: #d81b60; /* Deep pink color for heading */
            margin-bottom: 40px;
            font-size: 2.8rem; /* Slightly larger for emphasis */
            text-transform: uppercase;
            font-weight: 600; /* Bold weight for headings */
            letter-spacing: 1.5px; /* Adds a bit of elegance */
        }

        table {
            width: 90%;
            margin: 0 auto;
            border-collapse: collapse;
            background-color: #fff; /* White background for table */
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            overflow: hidden;
            transition: transform 0.3s ease; /* Add smooth transition for hover effect */
        }

        table:hover {
            transform: scale(1.02); /* Slight zoom effect on hover */
        }

        th, td {
            padding: 16px 24px;
            text-align: left;
            font-size: 1.1rem;
            color: #555; /* Darker text color for better contrast */
        }

        th {
            background-color: #f06292; /* Pink background for headers */
            color: #fff;
            text-transform: uppercase;
            font-weight: 600;
            letter-spacing: 1px;
        }

        tr {
            transition: background-color 0.3s ease;
        }

        tr:hover {
            background-color: #fce4ec; /* Soft pink background on hover */
        }

        .no-data {
            text-align: center;
            font-size: 1.5rem;
            color: #ff4081; /* Soft pinkish tone for "No Data" message */
            font-weight: 600;
            margin-top: 50px;
        }

        .table-container {
            overflow-x: auto;
            margin-top: 40px;
        }

        /* Add responsive design for smaller screens */
        @media (max-width: 768px) {
            h1 {
                font-size: 2rem;
            }

            table {
                width: 100%;
            }

            th, td {
                padding: 12px 16px;
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>

    <h1>Customer List</h1>

    <c:if test="${not empty customers}">
        <div class="table-container">
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Name</th>
                        <th>Email</th>
                    </tr>
                </thead>
                <tbody>
                    <c:forEach var="customer" items="${customers}">
                        <tr>
                            <td>${customer.username}</td>
                            <td>${customer.name}</td>
                            <td>${customer.email}</td>
                        </tr>
                    </c:forEach>
                </tbody>
            </table>
        </div>
    </c:if>

    <c:if test="${empty customers}">
        <div class="no-data">No customers found.</div>
    </c:if>

</body>
</html>