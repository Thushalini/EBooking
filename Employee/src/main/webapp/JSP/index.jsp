<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Login - EBooking</title>
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/Adminstyle.css">
    <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/Style.css">
    
</head>
<body>
    <h2>Admin Login</h2>
    <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required><br><br>

        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required><br><br>

        <input type="submit" value="Login"> <br><br>
        <a href="homePage.jsp" >Go Back to HOME</a>
    </form>
    <p style="color:red;">
        <%= request.getAttribute("errorMessage") != null ? request.getAttribute("errorMessage") : "" %>
    </p>
</body>
</html>
