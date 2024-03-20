<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>




<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Registration</title>
    <style type="text/css">
     body {
    background-image: url("banking.jpg");
    background-size: cover;
    font-family: Arial, sans-serif;
    color: #333;
    margin: 0;
    padding: 0;
    display: flex;
    justify-content: center;
    align-items: center;
    height: 200vh;
    flex-direction: column;
}
h1 {
 background-color: #007bff;
            color: #fff;
            padding: 10px;
    
    color: #f00f;
    text-align: center;
    margin-bottom: 20px;
    font-size: 36px;
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
}


h1 {
    color: #fff;
}

form {
    display: flex;
    flex-direction: column;
    align-items: center;
    background-color: rgba(255, 255, 255, 0.8);
    padding: 20px;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
    width: 50%; /* Adjust the width of the form */
}

label {
    margin: 10px 0;
    font-weight: bold;
}

input, select {
    padding: 10px;
    margin: 5px 0;
    width: 100%;
    box-sizing: border-box;
}

input[type="date"] {
    width: calc(100% - 20px);
}

div {
    display: flex;
    justify-content: space-between;
    width: 100%;
    margin-top: 20px; /* Add some space between the form and buttons */
}

input[type="submit"], button {
    padding: 10px;
    margin: 10px 5px;
    font-size: 16px;
    cursor: pointer;
    border: none;
    border-radius: 5px;
    text-align: center;
    text-decoration: none;
    color: #fff;
}

input[type="submit"] {
    background-color: #4CAF50;
}

button {
    background-color: #333;
}

button:hover {
    background-color: #555;
}
    </style>
    </head>
<body>
<h1>Customer Loan Registration</h1>
<form action="loandata" method="post">

    <label for="id">First Name:</label>
    <input type="text" name="id" id="id" value="${users.id }"required />
    
    <label for="firstname">First Name:</label>
    <input type="text" name="firstname" id="firstname" value="${users.firstname }"required />

    <label for="lastname">Last Name:</label>
    <input type="text" name="lastname" id="lastname" value="${users.lastname }"required />
    
    <label for="gender">Select Gender:</label>
     <select id="gender" name="gender">
    <option value="male" ${users.gender}>Male</option>
    <option value="female" ${users.gender }>Female</option>
    <option value="other" ${users.gender}>Other</option>
    </select>
    

    <label for="mobile">Mobile Number:</label>
    <input type="text" name="mobile" id="mobile" value="${users.mobile }"required />
    
     <label for="address">Address:</label>
    <input type="text" name="address" id="address"value="${users.address }" required />
  
    <label for="registrationdate">Registration Date:</label>
    <input type="date" name="registrationdate" id="registrationdate" value="${users.registrationdate }"required />
    
    <label for="email">Email Id:</label>
    <input type="text" name="email" id="email" value="${users.email }" required />
    
    <label for="accountnumber">Account Number:</label>
    <input type="text" name="accountnumber" id="accountnumber" value="${users.accountnumber }"required />
    
 <div>
             <input type="submit" name="Register" value=" Loan Register">
              
            
              
             
	</div>    

</form>
</body>
</html>
