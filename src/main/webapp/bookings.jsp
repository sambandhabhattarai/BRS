<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="h" %>    
 <!DOCTYPE html>
<html lang="en" dir="ltr">
<head>

  
  <meta charset="UTF-8">
  <title>Bus Booking | G-Bus</title>
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
.home{
  height: 100vh;
  width: 100%;
  background: url("images/homepage.png") no-repeat;
  background-size: cover;
  background-position: center;
  background-attachment: fixed;
  font-family: 'Ubuntu', sans-serif;
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
   * {
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

    .container {
      max-width: 400px;
      width: 100%;
      background-color: #fff;
      padding: 25px 30px;
      border-radius: 5px;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
    }

    .container form label {
      font-weight: bold;
    }

    .container form select,
    .container form input[type="date"] {
      width: 100%;
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      font-size: 16px;
    }

    .container form button[type="submit"] {
      background-color: #4070f4;
      color: #fff;
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      font-size: 16px;
      width: 100%;
    }

    .container form button[type="submit"]:hover {
      background-color: #0E2431;
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

    

</head>
<body>
<!-- NavBar code -->
 <nav>
    <div class="nav-content">
      <div class="logo">
        <a href="/">G-Bus</a>
      </div>
      <ul class="nav-links">
         <li><a  href="#" class="welcome-message" >Welcome <h:out value="${euname}"></h:out></a></li> 
        <li><a href="adminlogin">Admin</a></li>
        <li><a href="contact">Contact</a></li>
        <li><a href="employeelogin">Logout</a></li>
      </ul>
    </div>
  </nav>
  <!-- NavBar code ends -->
  
  <div class="container">
    <form id="bookingForm" action="buses" method="get">
    <h2>Hello there!! </h2>
      <label for="departingFrom">Departing From:</label>
      <select id="departingFrom" name="departingFrom" required>
    
     <option value="Kathmandu">Kathmandu</option>
      <option value="Pokhara">Pokhara</option>
      <option value="Lalitpur">Lalitpur</option>
      <option value="Bhaktapur">Bhaktapur</option>
      <option value="Dharan">Dharan</option>
      <option value="Biratnagar">Biratnagar</option>
      <option value="Butwal">Butwal</option>
      <option value="Nepalgunj">Nepalgunj</option>
      <option value="Hetauda">Hetauda</option>
      <option value="Birgunj">Birgunj</option>
      <option value="Janakpur">Janakpur</option>
      <option value="Chitwan">Chitwan</option>
      <option value="Dhangadhi">Dhangadhi</option>
      <option value="Rautahat">Rautahat</option>
      <option value="Gorkha">Gorkha</option>
        <!-- Add more options as needed -->
      </select>
      <br><br>

      <label for="goingTo">Going To:</label>
      <select id="goingTo" name="goingTo" required>
      <option value="Pokhara">Pokhara</option>
        <option value="Kathmandu">Kathmandu</option>
      <option value="Lalitpur">Lalitpur</option>
      <option value="Bhaktapur">Bhaktapur</option>
      <option value="Dharan">Dharan</option>
      <option value="Biratnagar">Biratnagar</option>
      <option value="Butwal">Butwal</option>
      <option value="Nepalgunj">Nepalgunj</option>
      <option value="Hetauda">Hetauda</option>
      <option value="Birgunj">Birgunj</option>
      <option value="Janakpur">Janakpur</option>
      <option value="Chitwan">Chitwan</option>
      <option value="Dhangadhi">Dhangadhi</option>
      <option value="Rautahat">Rautahat</option>
      <option value="Gorkha">Gorkha</option>
        <!-- Add more options as needed -->
      </select>
      <br><br>

      <label for="departureDate">Departure Date:</label>
      <input type="date" id="departureDate" name="departureDate" required>
      <br><br>

      <button type="submit">Book Tickets</button>
      
    </form>
	<script>
  document.addEventListener("DOMContentLoaded", function() {
    // Get references to the select elements
    var departingFromSelect = document.getElementById("departingFrom");
    var goingToSelect = document.getElementById("goingTo");
    var departureDateInput = document.getElementById("departureDate");
    var bookingForm = document.getElementById("bookingForm");

    // Add an event listener to the form submission
    bookingForm.addEventListener("submit", function(event) {
      // Get the selected values from the select elements
      var departingFromValue = departingFromSelect.value;
      var goingToValue = goingToSelect.value;
      var departureDateValue = new Date(departureDateInput.value);
      var currentDate = new Date();

      // Check if the selected values are the same
      if (departingFromValue === goingToValue) {
        // Display an alert to the user
        alert("Departing city cannot be the same as going city.");
        event.preventDefault(); // Prevent form submission
      }
    });
 // Set the minimum date for the departure date input to today
    var today = new Date();
    var maxBookingDate = new Date(today);
    maxBookingDate.setMonth(today.getMonth() + 3);
    
    var todayString = today.toISOString().split('T')[0];
    departureDateInput.setAttribute('min', todayString);
    
    
    var maxBookingDateString = maxBookingDate.toISOString().split('T')[0];
    departureDateInput.setAttribute('max', maxBookingDateString);
  });
  
  if (departureDateValue < currentDate) {
      alert("Departure date cannot be earlier than today.");
      event.preventDefault(); // Prevent form submission
    }
  
  if (departureDateValue > maxBookingDate) {
      alert("You can book a ticket up to 3 months from today.");
      event.preventDefault(); // Prevent form submission
    }
</script>
	
  </div>
</body>
</html>
 