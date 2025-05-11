<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
   <title>Insert title here</title>
   <link rel="stylesheet" type="text/css" href="<%= request.getContextPath() %>/CSS/Adminstyle.css">
   
   <style>
        .admin-image {
            align-items: center;     /* Vertical centering */
            height: 50vh;           /* Full viewport height */
            width:auto; 
            text-align:center;
        }
        
        .profile-image {
            width : 150px;
            height : auto;
        }
        
        .log {
	        font-size: 1.1em;
            line-height: 1.6;
            color: #2980B9;;
        }
        input[type="submit"] {
            background-color: white;
            color: black;
            padding: 10px 15px;
            border: none;
            cursor: pointer;
        }

        input[type="submit"]:hover {
            background-color: blue;
        }
        
    </style>

</head>
<body>
   <div class="container">
        <!-- Sidebar -->
        <aside class="sidebar">
            <h2>Admin Panel</h2>
            <nav>
                <div class="image-container">
                    <img src="<%= request.getContextPath() %>/Images/Ebooking.png" alt="Admin" class="profile-image">
                </div>
                <ul>
                    <li><a href="busManagement.jsp">Bus Management</a></li>
                    <li><a href="list_employees.jsp">Employee Management</a></li>
                    
                </ul>
                <p class = "log">You are logged in as: <%= session.getAttribute("admin") %></p>
                    
                <form action="${pageContext.request.contextPath}/LogoutServlet" method="post">
                         <input type="submit" value="Logout">
                </form>
            </nav>
        </aside>

        <!-- Main Content -->
        <main class="main-content">
            <header>
                
   
                <h1>Welcome, <%= session.getAttribute("admin") %></h1>
                <div class="top-bar">
                    <a href="homePage.jsp" class="top-btn">Home</a>
                    <a href="contactUs.jsp" class="top-btn">Check Feedback</a>
                </div>
            </header>
            
            <div class="image-container">
                 <img src="<%= request.getContextPath() %>/Images/admin.png" alt="Admin" class="admin-image">
            </div>
    
            <h1>Welcome to EBooking Admin Dashboard</h1>
        
            <p>As the administrator of <strong>EBooking</strong>, you have complete control over managing the bus reservation system. The admin dashboard allows you to:</p>
            <ul>
               <li><strong>Manage Bus Details:</strong><br> Add, update, or remove buses, including schedules, destinations, and fare details.</li> <br>
               <li><strong>Manage Employee Information:</strong><br> Oversee staff members responsible for bus operations and manage their roles and details.</li><br>
               <li><strong>Monitor Bookings:</strong><br> Track and oversee customer bookings and bus occupancy, ensuring smooth operations.</li><br>
            </ul>
            
        <div class="card">
            <h2>Bus Management</h2>
            <a href="busManagement.jsp">Go to Bus Management</a>
        </div>
        <div class="card">
            <h2>Employee Management</h2>
            <a href="list_employees.jsp">Go to Employee Management</a>
        </div>
            
        </main>
    </div>
</body>
</html>