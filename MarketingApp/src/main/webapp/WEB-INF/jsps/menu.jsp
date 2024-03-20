<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Navigation</title>
    <style>
        body {
            background-image: url("banking-background.jpg"); /* Replace with your background image */
            background-size: cover;
            font-family: Arial, sans-serif;
            color: #fff;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            flex-direction: column;
        }

        h1 {
            text-align: center;
            font-size: 36px;
            margin-bottom: 20px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
        }

        div {
            display: flex;
            flex-wrap: wrap; /* Allow items to wrap to the next line if there's not enough space */
            justify-content: center;
            align-items: center;
            gap: 20px; /* Adjust the gap between links */
        }

        a {
            text-decoration: none;
            color: #fff;
            background-color: #007bff;
            padding: 10px 20px;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }

        a:hover {
            background-color: #0056b3;
        }
    </style>
</head>
<body>
    <h1>FIN FLOW BANK ALL LIST</h1>
    <div>
        <a href="userall"> User List</a>
        <a href="user"> User Registration</a>
        <a href="employall">Employ List All </a>
        <a href="empreg">Employ Registration</a>
        <a href="userloanall"> UserLoan List All </a>
        <a href="userloanbillingall"> UserLoan Billing List All </a>
        <a href="customer"> UserLoan Billing </a>
    </div>
</body>
</html>
