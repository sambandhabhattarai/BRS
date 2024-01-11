 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="h" %>
 <!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Bus Booking | G-Bus</title>
  <style>
  *, *:before, *:after {
  box-sizing: border-box;
}

html {
  font-size: 16px;
}

.plane {
  margin: 20px auto;
  max-width: 300px;
}

.exit {
  position: relative;
  height: 50px;
}
.exit:before, .exit:after {
  content: "EXIT";
  font-size: 14px;
  line-height: 18px;
  padding: 0px 2px;
  font-family: "Arial Narrow", Arial, sans-serif;
  display: block;
  position: absolute;
  background: green;
  color: white;
  top: 50%;
  transform: translate(0, -50%);
}
.exit:before {
  left: 0;
}
.exit:after {
  right: 0;
}

.fuselage {
  border-right: 5px solid #d8d8d8;
  border-left: 5px solid #d8d8d8;
}

ol {
  list-style: none;
  padding: 0;
  margin: 0;
}

.seats {
  display: flex;
  flex-direction: row;
  flex-wrap: nowrap;
  justify-content: flex-start;
}

.seat {
  display: flex;
  flex: 0 0 14.28571428571429%;
  padding: 5px;
  position: relative;
}
.seat:nth-child(3) {
  margin-right: 14.28571428571429%;
}
.seat input[type=checkbox] {
  position: absolute;
  opacity: 0;
}
.seat input[type=checkbox]:checked + label {
  background: #bada55;
  -webkit-animation-name: rubberBand;
  animation-name: rubberBand;
  animation-duration: 300ms;
  animation-fill-mode: both;
}
.seat input[type=checkbox]:disabled + label {
  background: #dddddd;
  text-indent: -9999px;
  overflow: hidden;
}
.seat input[type=checkbox]:disabled + label:after {
  content: "X";
  text-indent: 0;
  position: absolute;
  top: 4px;
  left: 50%;
  transform: translate(-50%, 0%);
}
.seat input[type=checkbox]:disabled + label:hover {
  box-shadow: none;
  cursor: not-allowed;
}
.seat label {
  display: block;
  position: relative;
  width: 100%;
  text-align: center;
  font-size: 14px;
  font-weight: bold;
  line-height: 1.5rem;
  padding: 4px 0;
  background: #F42536;
  border-radius: 5px;
  animation-duration: 300ms;
  animation-fill-mode: both;
}
.seat label:before {
  content: "";
  position: absolute;
  width: 75%;
  height: 75%;
  top: 1px;
  left: 50%;
  transform: translate(-50%, 0%);
  background: rgba(255, 255, 255, 0.4);
  border-radius: 3px;
}
.seat label:hover {
  cursor: pointer;
  box-shadow: 0 0 0px 2px #5C6AFF;
}

@-webkit-keyframes rubberBand {
  0% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
    transform: scale3d(1.25, 0.75, 1);
  }
  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
    transform: scale3d(0.75, 1.25, 1);
  }
  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
    transform: scale3d(1.15, 0.85, 1);
  }
  65% {
    -webkit-transform: scale3d(0.95, 1.05, 1);
    transform: scale3d(0.95, 1.05, 1);
  }
  75% {
    -webkit-transform: scale3d(1.05, 0.95, 1);
    transform: scale3d(1.05, 0.95, 1);
  }
  100% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}
@keyframes rubberBand {
  0% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
  30% {
    -webkit-transform: scale3d(1.25, 0.75, 1);
    transform: scale3d(1.25, 0.75, 1);
  }
  40% {
    -webkit-transform: scale3d(0.75, 1.25, 1);
    transform: scale3d(0.75, 1.25, 1);
  }
  50% {
    -webkit-transform: scale3d(1.15, 0.85, 1);
    transform: scale3d(1.15, 0.85, 1);
  }
  65% {
    -webkit-transform: scale3d(0.95, 1.05, 1);
    transform: scale3d(0.95, 1.05, 1);
  }
  75% {
    -webkit-transform: scale3d(1.05, 0.95, 1);
    transform: scale3d(1.05, 0.95, 1);
  }
  100% {
    -webkit-transform: scale3d(1, 1, 1);
    transform: scale3d(1, 1, 1);
  }
}
.rubberBand {
  -webkit-animation-name: rubberBand;
  animation-name: rubberBand;
}

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
      height: 150vh;
      display: flex;
      justify-content: center;
      align-items: center;
      padding: 10px;
      background: linear-gradient(135deg, #71b7e6, #9b59b6);
    }

    .container {
      max-width: 500px;
      width: 100%;
      background-color: #fff;
      padding: 25px 30px;
      border-radius: 5px;
      box-shadow: 0 5px 10px rgba(0, 0, 0, 0.15);
      margin-top: 30px;
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
    
    /* Styles for the seat details popup */
.popup {
  display: none;
  position: fixed;
  top: 0;
  left: 0;
  width: 100%;
  height: 100%;
  background-color: rgba(0, 0, 0, 0.7);
  z-index: 1;
}

.popup-content {
  background-color: #fff;
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  padding: 20px;
  border-radius: 5px;
  box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
}

.close {
  position: absolute;
  top: 10px;
  right: 10px;
  font-size: 20px;
  cursor: pointer;
}
/* Center the form elements */
#userDetailsForm {
  text-align: center;
}

/* Style the labels for name, email, and phone */
#userDetailsForm label {
  display: block;
  margin-bottom: 5px;
  text-align: left; /* Align the label text to the left */
  background-color:#fff;
}

/* Style the input fields */
#userDetailsForm input[type="text"],
#userDetailsForm input[type="email"],
#userDetailsForm input[type="number"] {
  width: 100%;
  padding: 10px;
  margin-bottom: 10px;
  border: 1px solid #ccc;
  border-radius: 5px;
  font-size: 16px;
  text-align: left; /* Align the input text to the left */
}

/* Styles for the "Details added!" message */
.confirmation-message {
  text-align: center;
  margin-top: 10px;
}

/* Styles for the submit button (if needed) */
#userDetailsForm button[type="submit"] {
  background-color: #4070f4;
  color: #fff;
  padding: 10px 20px;
  border: none;
  border-radius: 5px;
  cursor: pointer;
  font-size: 16px;
  width: 100%;
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
       
        <li><a href="contact">Contact</a></li>
        <li><a href="adminlogin">Admin</a></li>
        <li><a href="employeelogin">Logout</a></li>
      </ul>
    </div>
  </nav>
  <!-- NavBar code ends -->
  <div class="container">
  
  <div class="container">
  <h1> Bus Seat Selection</h1>
 <form action="payment" method="Get">
        <li class="row row--1">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="1A" />
              <label for="1A">1A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="1B" />
              <label for="1B">1B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="1C" />
              <label for="1C">1C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="1D" />
              <label for="1D">1D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="1E" />
              <label for="1E">1E</label>
            </li>
            <li class="seat">
              <input type="checkbox" disabled id="1F" />
              <label for="1F">Occupied</label>
            </li>
          </ol>
        </li>
        <li class="row row--2">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="2A" />
              <label for="2A">2A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="2B" />
              <label for="2B">2B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="2C" />
              <label for="2C">2C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="2D" />
              <label for="2D">2D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="2E" />
              <label for="2E">2E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="2F" />
              <label for="2F">2F</label>
            </li>
          </ol>
        </li>
        <li class="row row--3">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="3A" />
              <label for="3A">3A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="3B" />
              <label for="3B">3B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="3C" />
              <label for="3C">3C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="3D" />
              <label for="3D">3D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="3E" />
              <label for="3E">3E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="3F" />
              <label for="3F">3F</label>
            </li>
          </ol>
        </li>
        <li class="row row--4">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="4A" />
              <label for="4A">4A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="4B" />
              <label for="4B">4B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="4C" />
              <label for="4C">4C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="4D" />
              <label for="4D">4D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="4E" />
              <label for="4E">4E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="4F" />
              <label for="4F">4F</label>
            </li>
          </ol>
        </li>
        <li class="row row--5">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="5A" />
              <label for="5A">5A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="5B" />
              <label for="5B">5B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="5C" />
              <label for="5C">5C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="5D" />
              <label for="5D">5D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="5E" />
              <label for="5E">5E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="5F" />
              <label for="5F">5F</label>
            </li>
          </ol>
        </li>
        <li class="row row--6">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="6A" />
              <label for="6A">6A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="6B" />
              <label for="6B">6B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="6C" />
              <label for="6C">6C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="6D" />
              <label for="6D">6D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="6E" />
              <label for="6E">6E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="6F" />
              <label for="6F">6F</label>
            </li>
          </ol>
        </li>
        <li class="row row--7">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="7A" />
              <label for="7A">7A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="7B" />
              <label for="7B">7B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="7C" />
              <label for="7C">7C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="7D" />
              <label for="7D">7D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="7E" />
              <label for="7E">7E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="7F" />
              <label for="7F">7F</label>
            </li>
          </ol>
        </li>
        <li class="row row--8">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="8A" />
              <label for="8A">8A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="8B" />
              <label for="8B">8B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="8C" />
              <label for="8C">8C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="8D" />
              <label for="8D">8D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="8E" />
              <label for="8E">8E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="8F" />
              <label for="8F">8F</label>
            </li>
          </ol>
        </li>
        <li class="row row--9">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="9A" />
              <label for="9A">9A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="9B" />
              <label for="9B">9B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="9C" />
              <label for="9C">9C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="9D" />
              <label for="9D">9D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="9E" />
              <label for="9E">9E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="9F" />
              <label for="9F">9F</label>
            </li>
          </ol>
        </li>
        <li class="row row--10">
          <ol class="seats" type="A">
            <li class="seat">
              <input type="checkbox" id="10A" />
              <label for="10A">10A</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="10B" />
              <label for="10B">10B</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="10C" />
              <label for="10C">10C</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="10D" />
              <label for="10D">10D</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="10E" />
              <label for="10E">10E</label>
            </li>
            <li class="seat">
              <input type="checkbox" id="10F" />
              <label for="10F">10F</label>
            </li>
          </ol>
        </li>
      </ol>
<input type="submit" value="Submit" style="background-color: #4070f4; color: #fff; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%; margin-top:20px;" />
    </form>
  </div>
  
   <!--  /* pop up*/ -->
  <div id="seatDetailsPopup" class="popup">
  <div class="popup-content">
    <span class="close" onclick="closePopup()">&times;</span>
    <h2>Enter User Details</h2>
    <form id="userDetailsForm" action="payment" method="get">
      <label for="name">Name:</label>
      <input type="text" id="name" name="name" required pattern="[A-Za-z]+">

      <label for="phone">Number:</label>
      <input type="text" id="phone"  name="phone" required minlength="10" maxlength="10" pattern="[0-9]{10}">
      
	 <label for="age">Age:</label>
      <input type="text" id="age" name="age" required maxlength="2" pattern="[0-9]{2}"> 
      
     <input type="submit" value="Submit" style="background-color: #4070f4; color: #fff; padding: 10px 20px; border: none; border-radius: 5px; cursor: pointer; font-size: 16px; width: 100%;" />

    </form>
  </div>
</div>
   <script>

  function openPopup() {
  // Clear previous form data and confirmation message
  const userDetailsForm = document.getElementById("userDetailsForm");
  userDetailsForm.reset(); // Reset the form to clear input fields
  const confirmationMessage = userDetailsForm.querySelector(".confirmation-message");
  if (confirmationMessage) {
    userDetailsForm.removeChild(confirmationMessage);
  }

  document.getElementById("seatDetailsPopup").style.display = "block";
}


  // Function to close the seat details popup
  function closePopup() {
    document.getElementById("seatDetailsPopup").style.display = "none";
  }

  // Function to handle form submission
  function submitForm() {
    // You can add form validation here if needed
    // For simplicity, this example assumes the form is valid

    // Display a confirmation message
    const confirmationMessage = document.createElement("p");
    confirmationMessage.innerText = "Details added!";
    document.getElementById("userDetailsForm").appendChild(confirmationMessage);

    // Automatically close the popup after 2 seconds (2000 milliseconds)
    setTimeout(closePopup, 750);
  }

  // Add an event listener to each seat to open the popup on click
  const seats = document.querySelectorAll("input[type='checkbox']");
  seats.forEach((seat) => {
    seat.addEventListener("click", () => {
      openPopup();
    });
  });

  // Add an event listener for the form submission
  document.getElementById("userDetailsForm").addEventListener("submit", function (e) {
    e.preventDefault(); // Prevent the default form submission behavior
    submitForm();
  });
  
</script>
   
</body>
 
</html>
 