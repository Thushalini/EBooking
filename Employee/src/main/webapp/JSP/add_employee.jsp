<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add New Employee</title>
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
<body >
    <h2>Add New Employee</h2>
    <form action="${pageContext.request.contextPath}/EmployeeServlet?action=insert" method="post">
        <label for="firstName">First Name:</label><br>
        <input type="text" id="firstName" name="firstName" required><br>
        <label for="lastName">Last Name:</label><br>
        <input type="text" id="lastName" name="lastName" required><br>
        <label for="email">Email:</label><br>
        <input type="email" id="email" name="email" required><br>
        <label for="phoneNumber">Phone Number:</label><br>
        <input type="text" id="phoneNumber" name="phoneNumber" required><br>
        <label for="position">Position:</label><br>
        <input type="text" id="position" name="position" required><br>
        <label for="salary">Salary:</label><br>
        <input type="number" step="0.01" id="salary" name="salary" required><br>
        <label for="username">User name:</label><br>
        <input type="text" id="username" name="username" required><br>
        <label for="password">Password:</label><br>
        <input type="password" id="password" name="password" required><br>
        <br>
        <input type="submit" value="Add Employee">
        <a href="${pageContext.request.contextPath}/JSP/list_employees.jsp">Cancel</a>
    </form>
</body>
</html>
