<%@ page import="java.util.List" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="h" %>

<!-- NavBar code -->
 <nav>
    <div class="nav-content">
      <div class="logo">
        <a href="/">G-Bus</a>
      </div>
      <ul class="nav-links">
         <li><a  href="#" class="welcome-message" >Welcome <h:out value="${euname}"></h:out></a></li> 
       
        <li><a href="contact">Contact</a></li>
        <li><a href="adminlogin">Admin</a></li>
        <li><a href="employeelogin">Logout</a></li>
      </ul>
    </div>
  </nav>
  <!-- NavBar code ends -->
  
  <div class="buses">
<%
    List<String> busList = new java.util.ArrayList<>();
    busList.add("Bus 1 - Pokhara Travels,10:00 AM,Rs.1500");
    busList.add("Bus 2 - Kathmandu Travels,11:30 AM,Rs.2000");
    busList.add("Bus 3 - Sagarmatha Travels,11:30 AM,Rs.1700");
 
%>

<h1 style="font-size: 24px; font-weight: bold; text-align: center; color: #333; text-decoration: underline;">Bus Details</h1>


<div class="bus-list">
    <%
        for (String bus : busList) {
            String[] busDetails = bus.split(",");
    %>
        <div class="bus-item">
            <div class="bus-name"><%= busDetails[0] %></div>
            <div class="departure-time">Departure Time: <%= busDetails[1] %></div>
            <div class="price">Price: <%= busDetails[2] %></div>
            <button class="select-button" onclick="redirectToSeats()">Select Seats</button>
        </div>
    <%
        }
    %>
</div>
<script>
    function redirectToSeats(busName) {
        // Define the URL for the seats page
        var seatsPageUrl = "seats"; // Replace with the actual URL of your seats page

        // Append a query parameter to pass the selected bus name (optional)
        var redirectUrl = seatsPageUrl + "?bus=" + encodeURIComponent(busName);

        // Redirect to the seats page
        window.location.href = redirectUrl;
    }
</script>

</div>

<style>
 /*  NavBar CSS here */
   @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&family=Ubuntu:wght@400;500;700&display=swap');*{
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  text-decoration: none;
  font-family: 'Ubuntu', sans-serif;
}
nav{
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  padding: 20px;
  transition: all 0.4s ease;
}
nav.sticky{
  padding: 15px 20px;
  background: #4070f4;
  box-shadow: 0 5px 10px rgba(0, 0, 0, 0.1);
}
nav .nav-content{
  height: 100%;
  max-width: 1200px;
  margin: auto;
  display: flex;
  align-items: center;
  justify-content: space-between;
}
nav .logo a{
  font-weight: 500;
  font-size: 35px;
  color: #4070f4;
}
nav.sticky .logo a{
  color: #fff;
}
.nav-content .nav-links{
  display: flex;
}
.nav-content .nav-links li{
  list-style: none;
  margin: 0 8px;
}
 .nav-links li a{
  text-decoration: none;
  color: #0E2431;
  font-size: 18px;
  font-weight: 500;
  padding: 10px 4px;
  transition: all 0.3s ease;
}
 .nav-links li a:hover{
   color: #4070f4;
 }
 nav.sticky .nav-links li a{
   color: #fff;
   transition: all 0.4s ease;
}
 nav.sticky .nav-links li a:hover{
  color: #0E2431;
}
h2{
  font-size: 30px;
  margin-bottom: 6px;
  color: #4070f4;
}
.text{
  text-align: justify;
  padding: 40px 80px;
  box-shadow: -5px 0 10px rgba(0, 0, 0, 0.1);
}

/* Navbar css ends here */
    /* Add the following CSS styles */
.bus-list {
    display: flex;
    flex-direction: column;
    gap: 20px;
    max-width: 400px;
    margin: 0 auto;
}

.bus-item {
    background:linear-gradient(135deg, light-blue, pink);
    border: 1px solid #ccc;
    padding: 15px;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    transition: transform 0.2s ease-in-out;
}

.bus-item:hover {
    transform: scale(1.02);
}

.bus-name {
    font-size: 20px;
    font-weight: bold;
    margin-bottom: 8px;
    color: #333;
}

.departure-time,
.price {
    font-size: 16px;
    color: #555;
}

.select-button {
    margin-top: 15px;
    padding: 10px 20px;
    background-color: #4070f4;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    transition: background-color 0.2s ease-in-out;
}

.select-button:hover {
    background-color: #0E2431;
}

/* Seat selection UI */

#seatContainer {
    display: grid;
    grid-template-columns: repeat(5, 1fr);
    gap: 10px;
    margin-top: 20px;
}

.seat {
    width: 50px;
    height: 50px;
    background-color: #f0f0f0;
    border: 1px solid #ccc;
    margin: 5px;
    display: flex;
    justify-content: center;
    align-items: center;
    cursor: pointer;
    font-weight: 500;
    font-size: 16px;
}.seat.selected {
    background-color: #4070f4;
    color: #fff;
}
.buses{
margin-top:70px;
}
 *{
  margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }   
        
        /* Welcome CSS */
.welcome-message {
   
    color: red; /* White text color */
    padding: 10px; /* Add some padding for spacing */
    margin-top: 10px; /* Adjust the margin as needed */
    border-radius: 5px; /* Rounded corners for the message box */
    text-align: center; /* Center the text */
    animation: pulse 4s ease-in-out infinite; 
}

.welcome-text {
    font-weight: bold; /* Make the text bold */
    
}



@keyframes pulse {
 	0%{ color: white; }
    50%{color:black;}
    100% { color: white; }
    
    0% { transform: scale(1); opacity: 1; }
    50% { transform: scale(1.2); opacity: 0.5; }
    100% { transform: scale(1); opacity: 1; }
  
</style>


