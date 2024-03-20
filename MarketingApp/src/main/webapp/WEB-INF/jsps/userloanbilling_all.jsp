<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<%@ include file="menu.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
 <title>List All Loans</title>
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
            color:#shff ;
        }

        tr:nth-child(even) {
         
            background-color: #f2f2f2;
            font-family: Arial, sans-serif;
            background-color: blue;
            text-align: center;
        }
    
    </style>
</head>
<body>
    <h1>List All Loans</h1>
    <table>
        <tr>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Gender</th>
            <th>Mobile Number</th>
            <th>Address</th>
            <th>Registration Date</th>
            <th>Email Id</th>
            <th>Account Type</th>
            <th>Branch</th>
            <th>IFSC Code</th>
            <th>Account Number</th>
            <th>Account Type</th>
            <th>Loan Type</th>
            <th>LoanAmound</th>
        </tr>

        <c:forEach var="lu" items="${lu}">
            <tr>
                <td>${lu.firstname}</td>
                <td>${lu.lastname}</td>
                <td>${lu.gender}</td>
                <td>${lu.mobile}</td>
                <td>${lu.address}</td>
                <td>${lu.registrationdate}</td>
                <td>${lu.email}</td>
                 <td>${lu.branch}</td>
                  <td>${lu.IFSC_code}</td>
                   <td>${lu.accountnumber}</td>
                    <td>${lu.account_type}</td>
                    <td>${lu.loantype}</td>
                    <td>${lu.loanamound}</td>
            </tr>
        </c:forEach>
        
        
    </table>
    
</body>
</html>
