<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bus Reservation System</title>

    <!-- Swiper CSS -->
    <link rel="stylesheet" href="https://unpkg.com/swiper/swiper-bundle.min.css" />

    <!-- Custom CSS -->
    <link rel="stylesheet" href="<%= request.getContextPath() %>/CSS/homePageStyle.css">
</head>
<body>

    <!-- Navbar Section -->
    <!--Navigation bar-->
<div class="navbar">
   <ul>
    <li style="float:left; margin-right: 450px; margin-left: 0px;">
    <img src="<%= request.getContextPath() %>/Images/Ebooking.png" alt="EBooking" class="navbar-logo"></li>
        <li><a href="<%= request.getContextPath() %>/JSP/homePage.jsp">Home</a></li>
        <li><a href="<%= request.getContextPath() %>/JSP/homePage.jsp">About us</a></li>
        <li><a href="<%= request.getContextPath() %>/JSP/homePage.jsp">Contact us</a></li>
        <li class="dropdownnav">
            <a href="<%= request.getContextPath() %>/JSP/homePage.jsp" class="dropbtn">Register</a>
        </li>
        <li class="dropdownnav">
            <a href="<%= request.getContextPath() %>/JSP/homePage.jsp" class="dropbtn">Dashboard</a>
            <div class="dropdownnav-content">
                <a href="<%= request.getContextPath() %>/JSP/homePage.jsp">Passenger</a>
                <a href="<%= request.getContextPath() %>/JSP/index.jsp">Admin</a>
                <a href="<%= request.getContextPath() %>/JSP/homePage.jsp">Operator</a>
            </div>
        </li>
        <li class="dropdownnav">
            <a href="<%= request.getContextPath() %>/JSP/homePage.jsp" class="dropbtn">Log In</a>
        </li>
        <li class="logouth" style="background-color: rgb(36, 65, 119); border-radius: 30px;">
            <a href="<%= request.getContextPath() %>/JSP/homePage.jsp" style="color: rgb(255, 255, 255);">Log Out</a>
        </li>
    </ul>
    
  </div>

    <!-- Swiper Home Slider Section -->
    <section class="home">
        <div class="swiper home-slider">
            <div class="swiper-wrapper">
                <!-- Slide 1 -->
                <div class="swiper-slide slide" style="background:url(<%= request.getContextPath() %>/Images/buses1.png) no-repeat">
                    <div class="content">
                        <span>Efficient and Comfortable Journeys</span>
                        <h3>Book your trip with ease</h3>
                        <a href="<%= request.getContextPath() %>/reservation.jsp" class="btn">Book Now</a>
                    </div>
                </div>
                <!-- Slide 2 -->
                <div class="swiper-slide slide" style="background:url(<%= request.getContextPath() %>/Images/buses2.png) no-repeat">
                    <div class="content">
                        <span>Safe and Reliable Service</span>
                        <h3>Enjoy a hassle-free ride</h3>
                        <a href="<%= request.getContextPath() %>/reservation.jsp" class="btn">Discover More</a>
                    </div>
                </div>
                <!-- Slide 3 -->
                <div class="swiper-slide slide" style="background:url(<%= request.getContextPath() %>/Images/bus2.jpg) no-repeat">
                    <div class="content">
                        <span>Luxury and Comfort Combined</span>
                        <h3>Travel with convenience</h3>
                        <a href="<%= request.getContextPath() %>/reservation.jsp" class="btn">Discover More</a>
                    </div>
                </div>
            </div>
            <!-- Navigation buttons -->
            <div class="swiper-button-next"></div>
            <div class="swiper-button-prev"></div>
        </div>
    </section>
    
    <!-- services section start -->
   <section class="services">

     <h1 class="heading-title"> our services </h1>
       <div class="box-container">       
        <div class="box">
            <h3>Effortless Reservation and Booking</h3>
        </div>

        <div class="box">
            <h3>Real-Time Availability</h3>
        </div>

        <div class="box">
            <h3>Secure Payment Integration</h3>
        </div>

        <div class="box">
            <h3>Easy Reservation Modifications</h3>
        </div>

        <div class="box">
            <h3>Notifications and Alerts</h3>
        </div>

        <div class="box">
            <h3>Expert Customer Support</h3>
        </div>
       </div>
   </section>

<!-- services section ends -->

<!-- home about section starts -->

<section class="home-about">

    <div class="image">
        <img src="<%= request.getContextPath() %>/Images/buses1.png" alt="a car parking in a parking spot"/>
    </div> 
    
     <div class="content">
        <h3>About us</h3>
        <h2>Welcome to EBooking – <span> Your Gateway to Hassle-Free Travel!</span></h2>
        <p>At EBooking, we believe that booking a bus should be as smooth and simple as your journey itself. 
        We are a modern bus reservation platform designed to provide travelers with a seamless experience, whether you're planning a 
        quick city commute or a long-distance trip. Our goal is to make bus travel efficient, stress-free, and reliable, 
        all with just a few clicks.
</p>
        <a href="#" class="btn">read more</a>
    </div>

</section>
<!-- home about section ends -->

<!-- home packages section starts -->

<section class="home-packages">
    <h1 class="heading-title"> Reserve Your Space </h1>
    <div class="box-container">
        <div class="box">
            <div class="image">
                <img src="<%= request.getContextPath() %>/Images/bus4.png" alt="searching parking spot">
            </div>
            <div class="content">
                <h3>On-Time Guarantee</h3>
                <p>Our buses are reliable and punctual. With real-time bus tracking, you can count on us to get you where you need to be, on time.</p>
                <a href="#" class="btn"> book now </a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="<%= request.getContextPath() %>/Images/bus2.jpg" alt="parking spot with signs">
            </div>
            <div class="content">
                <h3>Safe and Secure Travel</h3>
                <p>From thorough bus maintenance to GPS tracking, we prioritize your safety every step of the way. Your well-being is our mission.</p>
                <a href="#" class="btn"> book now </a>
            </div>
        </div>

        <div class="box">
            <div class="image">
                <img src="<%= request.getContextPath() %>/Images/buses2.png" alt="a car exit form parking spot">
            </div>
            <div class="content">
                <h3>Book Anytime, Anywhere</h3>
                <p>Our web application platform allows you to reserve your seat in just a few clicks. Easy, convenient, and stress-free for you.</p>
                <a href="#" class="btn"> book now </a>
            </div>
        </div>
    </div>

<!-- home packages section ends -->

    <section class="destinations"> 
       <div class="container"> 
           <h2>Popular Destinations</h2> 
         <div class="destination-boxes"> 
           <div class="destination-box"> 
              <img src="<%= request.getContextPath() %>/Images/colombo.png" alt="Colombo"> 
                    <h3>Colombo</h3> 
                         <p>Colombo is a vibrant blend of history and modernity, offering rich cultural landmarks like Galle Face Green and Gangaramaya Temple. Its lively streets, coastal beauty, and diverse attractions make it an exciting gateway to Sri Lanka.</p> 
           </div> 
           <div class="destination-box"> 
              <img src="<%= request.getContextPath() %>/Images/kandy.png" alt="Kandy"> 
                    <h3>Kandy</h3> 
                         <p>Kandy, nestled in lush hills, is home to sacred temples like the Temple of the Tooth Relic. This scenic city offers a peaceful escape, rich in culture and natural beauty.</p> 
           </div> 
           <div class="destination-box"> 
              <img src="<%= request.getContextPath() %>/Images/galle.jpg" alt="Galle"> 
                    <h3>Galle</h3> 
                         <p>Galle, a historic coastal city, boasts stunning Dutch-era architecture and the iconic Galle Fort. Its charming streets and ocean views offer an unforgettable experience for every traveler.</p> 
           </div>
           
           <a href="#" class="btn"> book now </a>
           
          </div> 
       </div> 
    </section>
    
       <!-- home offer section starts -->

 <section class="home-offer">
    <div class="content">
        <h3>Upto 25% off</h3>
        <p>Book Your Journey Today! Enjoy 25% off on your bus reservation with EBooking. Whether it’s a weekend getaway or a long-distance trip, we’ve got you covered. Reserve your seat today and travel smart!</p>
        <a href="#" class="btn">book now</a>
    </div>
 </section>
    

    <div class="load-more">
        <a href="#" class="btn"> load more </a>
    </div>

</section>

    <!-- Footer Section -->
    <footer>
        <p>© 2024 Bus Reservation System | All rights reserved.</p>
    </footer>

    <!-- Swiper JS -->
    <script src="https://unpkg.com/swiper/swiper-bundle.min.js"></script>

    <!-- Custom JS -->
    <script src="<%= request.getContextPath() %>/JS/homeScript.js"></script>
</body>
</html>
