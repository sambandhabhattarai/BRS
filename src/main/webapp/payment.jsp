<%@ page import="java.util.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Bus Ticket Reservation</title>

    <!-- Link to external CSS -->
    <link rel="stylesheet" href="styles.css">

    <!-- External JavaScript libraries -->
    <script src="js/qrcode.min.js"></script>
    <script src="js/instascan.min.js"></script>

    <!-- Internal JavaScript -->
    <script>
        function togglePaymentForm() {
            var paymentOption = document.getElementById("payment_option").value;
            var cardForm = document.getElementById("cardPaymentForm");
            var qrCodeContainer = document.getElementById("qrCodeContainer");

            if (paymentOption == "card") {
                cardForm.style.display = "block";
                qrCodeContainer.style.display = "none";
            } else if (paymentOption == "qr") {
                cardForm.style.display = "none";
                qrCodeContainer.style.display = "block";

                // Generate a QR code
                const qrCode = new QRCode(document.getElementById('qrCodeContainer'));
                qrCode.makeCode('AmanChaudhary'); // Replace with actual data
            }
        }
    </script>

    <!-- Internal CSS -->
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
 * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
            margin-top: 10px;
        }

        body {
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 10px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }
        .qr{
max-height:200px;

}
#cardPaymentForm {
  max-width: 400px;
  margin: 10 auto;
  background-color: #fff;
  padding:30px;
  border-radius: 10px;
  box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
  margin-top:20px;
  align-right:30px;
}

#cardPaymentForm label {
  display: block;
  font-weight: bold;
  margin-bottom: 6px;
}

#cardPaymentForm input[type="text"],
#cardPaymentForm select {
  width: 100%;
   padding: 5px;
 /*  margin-bottom: 12px; */
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

#cardPaymentForm select {
  font-size: 16px;
}

#cardPaymentForm input[type="submit"] {
  background-color: #4CAF50;
  color: white;
  border: none;
  padding: 10px 20px;
  font-size: 16px;
  cursor: pointer;
  border-radius: 4px;
}

#cardPaymentForm input[type="submit"]:hover {
  background-color: #45a049;
}/* Navbar css ends here */
        /* Your CSS code here */
        /* ... */

        /* Additional styles for navigation */
        /* ... */
        
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

    <!-- Navigation Bar -->
    <nav>
        <div class="nav-content">
            <div class="logo">
                <a href="/">G-Bus</a>
            </div>
           <ul class="nav-links">
         <li><a  href="#" class="welcome-message" >Welcome <c:out value="${euname}"></c:out></a></li> 
        <li><a href="adminlogin">Admin</a></li>
        <li><a href="contact">Contact</a></li>
        <li><a href="employeelogin">Logout</a></li>
      </ul>
        </div>
    </nav>
    <!-- Navigation Bar ends -->

    <!-- Bus Ticket Reservation Section -->
    <div class="reservation-section">
        <h3>Bus Payment</h3>

        <!-- Payment option selection -->
        <label for="payment_option">Select Payment Option:</label>
        <select id="payment_option" onchange="togglePaymentForm()">
          <option value="card">Choose Payment Option</option>
            <option value="card">Credit Card</option>
            <option value="card">Debit Card</option>
            <option value="qr">QR Code</option>
        </select>

        <!-- Card Payment Form -->
        <div id="cardPaymentForm" style="display:none;">
            <form action="test" method="get">
               <!--  <label for="cardNumber">Card Number:</label>
                <input type="card" id="cardNumber" name="cardNumber" required><br><br> -->
                
                <label for="atmCardNumber">ATM Card Number:</label>
    <input type="text" id="atmCardNumber" name="atmCardNumber" oninput="validateCardNumber()" required>

                <label for="expiryMonth">Expiration Month:</label>
                <select id="expiryMonth" name="expiryMonth" required>
                <option value="--">-----------</option>
                    <option value="01">01</option>
                    <option value="02">02</option>
                    <option value="03">03</option>
                    <option value="04">04</option>
                    <option value="05">05</option>
                    <option value="06">06</option>
                    <option value="07">07</option>
                    <option value="08">08</option>
                    <option value="09">09</option>
                    <option value="10">10</option>
                    <option value="11">11</option>
                    <option value="12">12</option>
                    <!-- Add options for other months -->
                </select>

                <label for="expiryYear">Expiration Year:</label>
                <select id="expiryYear" name="expiryYear" required>
                <option value="--">----------</option>
                    <option value="2023">2023</option>
                    <option value="2024">2024</option>
                    <option value="2025">2025</option>
                    <option value="2026">2026</option>
                    <option value="2027">2027</option>
                    <!-- Add options for other years -->
                </select><br><br>

             
                 <label for="cvv">CVV:</label>
    <input type="number" id="cvv" name="cvv" oninput="validateCVV()" pattern="\d{3}" title="Please enter a 3-digit number." required>

                <input type="submit" value="Pay Now">
            </form>
        </div>

        <!-- QR Code Display -->
        <div id="qrCodeContainer" style="display:none;">
            <!-- Replace 'path_to_qr_code_image' with the actual path or URL to your QR code image -->
            <img style="margin-left: 70px" class="qr" src="images/qr_code.jpg" alt="QR Code Image">
            <p><b style="margin-left: 45px">Scan the QR Code and pay the bill</b></p>
        </div>
        
    </div>
    
    <script>
    function validateCardNumber() {
      var cardNumber = document.getElementById("atmCardNumber").value;
      var cardNumberPattern = /^\d{16}$/; // 16 digits for illustration purposes.

      if (!cardNumber.match(cardNumberPattern)) {
        document.getElementById("atmCardNumber").setCustomValidity("Invalid ATM card number. Please enter a 16-digit number.");
      } else {
        document.getElementById("atmCardNumber").setCustomValidity("");
      }
    }
    
    function validateCVV() {
        var cvv = document.getElementById("cvv").value;
        var cvvPattern = /^\d{3}$/; // A valid CVV is a 3-digit number.

        if (!cvv.match(cvvPattern)) {
          document.getElementById("cvv").setCustomValidity("Invalid CVV. Please enter a 3-digit number.");
        } else {
          document.getElementById("cvv").setCustomValidity("");
        }
      }
  </script>
    <!-- Bus Ticket Reservation Section ends -->

</body>

</html>