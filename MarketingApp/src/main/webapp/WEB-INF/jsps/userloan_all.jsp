<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>



<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 

<%@ include file="menu.jsp" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>List All Loan Request</title>
    <style>
           body {
    font-family: Arial, sans-serif;
    background-color: #334455;
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

th, td {
    border: 1px solid #ccc;
    padding: 8px;
    text-align: center;
    background-color: #fff; /* White background color for cells */
}

th {
    background-color: #007bff;
    color: #fff;
}

tr:nth-child(even) {
    background-color: #f2f2f2;
}

tr:nth-child(odd) {
    background-color: #3498db; /* Darker color for odd rows */
}

td:nth-child(even) {
    background-color: #3498db; /* Darker color for even columns */
}

td:nth-child(odd) {
    background-color: #007bff; /* Darker color for odd columns */
}
    </style>
</head>
<body>
    <h1>List All Loan Request</h1>
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

        <c:forEach var="loans" items="${loans}">
            <tr>
                <td>${loans.firstname}</td>
                <td>${loans.lastname}</td>
                <td>${loans.gender}</td>
                <td>${loans.mobile}</td>
                <td>${loans.address}</td>
                <td>${loans.registrationdate}</td>
                <td>${loans.email}</td>
                <td>${loans.accountnumber}</td>
            </tr>
        </c:forEach>
    </table>
    
</body>
</html>
