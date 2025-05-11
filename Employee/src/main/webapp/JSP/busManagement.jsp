<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bus Management</title>
    <link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/CSS/Style.css">
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
	<h2>Bus Management</h2>
	
	<a href="${pageContext.request.contextPath}/JSP/homePage.jsp" >Go Back to HOME</a> <br> <br>
	<a href="${pageContext.request.contextPath}/JSP/Admin.jsp" >Go Back to Admin Dashboard</a>

	<!-- Add Bus Form -->
	<form action="${pageContext.request.contextPath}/BusServlet?action=add"
		method="post">
		<input type="hidden" name="action" value="add"> <label
			for="start">Start: </label> <input type="text" name="start" required><br>

		<label for="destination">Destination: </label> <input type="text"
			name="destination" required><br> <label for="time">Time
			(HH:MM:SS): </label> <input type="text" name="time" required><br>

		<label for="seats">Seats: </label> <input type="number" name="seats"
			required><br> <label for="price">Price: </label> <input
			type="number" step="0.01" name="price" required><br>

		<button type="submit">Add Bus</button>
		<a href="${pageContext.request.contextPath}/JSP/busManagement.jsp">Cancel</a>
	</form>

	<h2>All Buses</h2>
	<table border="1">
		<thead>
			<tr>
				<th>Bus ID</th>
				<th>Start</th>
				<th>Destination</th>
				<th>Time</th>
				<th>Seats</th>
				<th>Price</th>
				<th>Actions</th>
			</tr>
		</thead>
		<tbody>
			<c:forEach var="bus" items="${buses}">
				<tr>
					<td>${bus.busId}</td>
					<td>${bus.start}</td>
					<td>${bus.destination}</td>
					<td>${bus.time}</td>
					<td>${bus.seats}</td>
					<td>${bus.price}</td>
					<td><a href="BusServlet?action=delete&id=${bus.busId}">Delete</a>
					</td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</body>
</html>
