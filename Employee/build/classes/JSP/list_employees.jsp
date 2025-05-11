<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Employee List</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/Style.css">
    <style>
        body {
           margin: 0;
           font-family: 'Arial', sans-serif;
           background: linear-gradient(45deg, #FFDEE9, rgb(81, 168, 255)); /* Gradient background */
           color: #333;
        }
        
        a {
           color : red;
           background-color: white;
        }
        
        #edit {
           color : green;
        }
        
        th {
           background-color: #ccc;
        }
    </style>
</head>
<body>
    <h2>Employee List</h2>
    <a href="${pageContext.request.contextPath}/JSP/homePage.jsp">Go back to home page</a> <br> <br>
    <a href="${pageContext.request.contextPath}/EmployeeServlet?action=new" id = "edit">Add New Employee</a>  <br> <br>
    <table border="1" width="100%">
        <thead>
            <tr>
                <th>ID</th>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Email</th>
                <th>Phone Number</th>
                <th>Position</th>
                <th>Salary</th>
                <th>User name</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="Employee" items="${listEmployee}">
                <tr>
                    <td>${Employee.employeeID}</td>
                    <td>${Employee.firstName}</td>
                    <td>${Employee.lastName}</td>
                    <td>${Employee.email}</td>
                    <td>${Employee.phoneNumber}</td>
                    <td>${Employee.position}</td>
                    <td>${Employee.salary}</td>
                    <td>${Employee.username}</td>
                    <td>
                        <a href="EmployeeServlet?action=edit&employeeID=${Employee.employeeID}" id="edit">Edit</a>
                        <a href="EmployeeServlet?action=delete&employeeID=${Employee.employeeID}" onclick="return confirmDelete()">Delete</a>
                        
                        <script type="text/javascript">
                            function confirmDelete() {
                            return confirm("Are you sure you want to delete this employee?");
                        }
                        </script>
                    </td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
