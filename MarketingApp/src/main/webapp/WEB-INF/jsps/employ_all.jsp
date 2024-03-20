<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>List All Employ</title>
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
    <h1>List All Employ</h1>
    <table>
        <tr>
            <th> Name </th>
            <th>Mobile Number</th>
            <th>Registration Date</th>
            <th>Email Id</th>
            <th>Password</th>
            <th>Confirm Password</th>
             <th>Employ Code</th>
             <th>Role</th>
        </tr>

        <c:forEach var="ee" items="${ee}">
            <tr>
                <td>${ee.name}</td>
                <td>${ee.mobile}</td>
                <td>${ee.registrationdate}</td>
                <td>${ee.email}</td>
                <td>${ee.password}</td>
                <td>${ee.confirm_password}</td>
                <td>${ee.employcode}</td>
                <td>${ee.role}</td>
            </tr>
        </c:forEach>
    </table>
</body>
</html>
