<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="h" %>
<!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
    <meta charset="UTF-8">
    <title>Login | G-Bus</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
        /* CSS code here */
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

        .container .title {
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }

        .container .title::before {
            content: "";
            position: absolute;
            left: 0;
            bottom: 0;
            height: 3px;
            width: 30px;
            border-radius: 5px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        .content form .user-details {
            display: flex;
            flex-wrap: wrap;
            justify-content: space-between;
            margin: 20px 0 12px 0;
        }

        form .user-details .input-box {
            margin-bottom: 15px;
            width: 100%;
        }

        form .input-box span.details {
            display: block;
            font-weight: 500;
            margin-bottom: 5px;
        }

        .user-details .input-box input {
            height: 45px;
            width: 100%;
            outline: none;
            font-size: 16px;
            border-radius: 5px;
            padding-left: 15px;
            border: 1px solid #ccc;
            border-bottom-width: 2px;
            transition: all 0.3s ease;
        }

        .user-details .input-box input:focus,
        .user-details .input-box input:valid {
            border-color: #9b59b6;
        }

        .button {
            height: 45px;
            margin: 35px 0;
        }

        .button input {
            height: 100%;
            width: 100%;
            border-radius: 5px;
            border: none;
            color: #fff;
            font-size: 18px;
            font-weight: 500;
            letter-spacing: 1px;
            cursor: pointer;
            transition: all 0.3s ease;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
        }

        .button input:hover {
            background: linear-gradient(-135deg, #71b7e6, #9b59b6);
        }
        
        .account-text {
    margin-left: 50px; 
}

/* Error Message CSS */
.error-message {
   
    color: red; /* White text color */
    padding: 10px; /* Add some padding for spacing */
    margin-top: 10px; /* Adjust the margin as needed */
    border-radius: 5px; /* Rounded corners for the message box */
    text-align: center; /* Center the text */
    animation: pulse 2s ease-in-out infinite; 
}

.error-text {
    font-weight: bold; /* Make the text bold */
}



@keyframes pulse {
 0% { color: #ff0000; }
    50% { color: #0000ff; }
    100% { color: #ff0000; }
    0% { transform: scale(1); opacity: 1; }
    50% { transform: scale(1.2); opacity: 0.5; }
    100% { transform: scale(1); opacity: 1; }
    
}    
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
        <li><a href="/">Home</a></li>
        <li><a href="bookings">Bookings</a></li>
        <li><a href="adminlogin">Admin</a></li>
        <li><a href="contact">Contact</a></li>
        <li><a href="employeelogin">Login</a></li>
      </ul>
    </div>
  </nav>
  <!-- NavBar code ends -->
  
<div class="container">
    <div class="title">User Login</div>
    <div class="content">
        <form action="checkemplogin"   method="post">
            <div class="user-details">
                <div class="input-box">
                    <span class="details">Username</span>
                    <input type="text" name="euname" placeholder="Enter your username" required>
                </div>
                <div class="input-box">
                    <span class="details">Password</span>
                    <input type="password" name="epwd" placeholder="Enter your password" required>
                </div>
            </div>
            <div class="button">
                <input type="submit" value="Login">
            </div>
        </form>
  

<p class="account-text">Don't have an account? <a href="employeereg">Register</a> </p>

	<div class="error-message">
    <h:if test="${not empty message}">
        <p>${message}</p>
    </h:if>
</div>

    </div>
</div>
</body>
</html>
