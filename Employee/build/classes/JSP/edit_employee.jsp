<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
<html>
<head>
    <title>Edit Employee</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/Style.css">
    <style>
        body {
           margin: 0;
           font-family: 'Arial', sans-serif;
           background: linear-gradient(45deg, #FFDEE9, rgb(81, 168, 255)); /* Gradient background */
           color: #333;
        }
    </style>
</head>
<body>
    <h2>Edit Employee</h2>
    <form action="${pageContext.request.contextPath}/EmployeeServlet?action=update" method="post">
        <input type="hidden" name="employeeID" value="${employee.employeeID}">
        <label for="firstName">First Name:</label><br>
        <input type="text" id="firstName" name="firstName" value="${employee.firstName}" required><br>
        <label for="lastName">Last Name:</label><br>
        <input type="text" id="lastName" name="lastName" value="${employee.lastName}" required><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" value="${employee.email}" required><br>
        <label for="phoneNumber">Phone Number:</label><br>
        <input type="text" id="phoneNumber" name="phoneNumber" value="${employee.phoneNumber}" required><br>
        <label for="position">Position:</label><br>
        <input type="text" id="position" name="position" value="${employee.position}" required><br>
        <label for="salary">Salary:</label><br>
        <input type="number" step="0.01" id="salary" name="salary" value="${employee.salary}" required><br>
        <label for="username">User name:</label><br>
        <input type="text" id="username" name="username" value="${employee.username}" required><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" value="${employee.password}" required><br>
        <br>
        <input type="submit" value="Update Employee">
        <a href="${pageContext.request.contextPath}/JSP/list_employees.jsp">Cancel</a>
    </form>
</body>
</html>
