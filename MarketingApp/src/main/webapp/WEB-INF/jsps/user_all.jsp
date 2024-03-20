<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All Customer</title>
    <style>
            body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h1 {
            background-color: #007bff;
            color: #fff;
            padding: 10px;
        }

        table {
            border-collapse: collapse;
            width: 80%;
            margin: 20px auto;
        }

        table, th, td {
            border: 1px solid #ccc;
        }

        th, td {
            padding: 8px;
            text-align: center;
        }

        th {
            background-color: #007bff;
            color: #ffd;
        }
 tr:nth-child(even) {
  background-color: blue;
            background-color: #d3eaf7; /* Change the background color for even rows */
            color: #ffd;
            font-family: Arial, sans-serif;
           
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>List All Customer</h1>
    <table>
        <tr>
             <th>First Name</th>
            <th>Last Name</th>
             <th>Gender</th>
            <th>Mobile Number</th>
             <th>Address</th>
            <th>Registration Date</th>
            <th>Email Id</th>
            <th>Account Number</th>
        </tr>

        <c:forEach var="customers" items="${customers}">
            <tr>
                <td>${customers.firstname}</td>
                <td>${customers.lastname}</td>
                <td>${customers.gender}</td>
                <td>${customers.mobile}</td>
                <td>${customers.address}</td>
                <td>${customers.registrationdate}</td>
                <td>${customers.email}</td>
                <td>${customers.accountnumber}</td>
                
            </tr>
        </c:forEach>
    </table>
   
</body>
</html>
