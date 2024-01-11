 <!DOCTYPE html>
<html lang="en" dir="ltr">
<head>
  <meta charset="UTF-8">
  <title>Bus Booking | G-Bus</title>
  <style>
  
  
  
  /*bus select*/
  body {
            font-family: Arial, sans-serif;
            text-align: center;
        }
        
        h1 {
            background-color: transparent;
            color: black;
            padding: 10px;
        }

        table {
            margin: 0 auto;
            border-collapse: collapse;
        }

        td {
            padding: 10px;
        }

        input[type="checkbox"] {
            display: none;
        }

        label {
            display: block;
            width: 50px;
            height: 30px;
            background-color: #eee;
            text-align: center;
            line-height: 30px;
            cursor: pointer;
        }

        input[type="checkbox"]:checked + label {
            background-color: #3498db;
            color: #fff;
        }

        input[type="submit"] {
            margin: 20px;
            padding: 10px 20px;
            background-color: #3498db;
            color: #fff;
            border: none;
            cursor: pointer;
        }
        
    /* Reset and global styles */
   * {
      margin: 0;
      padding: 0;
      box-sizing: border-box;
    }

    body {
      font-family: 'Poppins', sans-serif;
    }

    /* Bus seat selection styles */
    .bus-container {
      display: grid;
      grid-template-columns: repeat(2, 1fr);
      grid-gap: 5px;
    }

    .seat {
      width: 40px;
      height: 40px;
      background-color: #f0f0f0;
      border: 1px solid #ccc;
      margin: 5px;
      display: flex;
      justify-content: center;
      align-items: center;
      cursor: pointer;
      font-weight: 500;
      font-size: 16px;
    }

    .seat.selected {
      background-color: #4070f4;
      color: #fff;
    }

    .deck {
      margin-bottom: 20px;
    }

    .deck-label {
      font-size: 20px;
      font-weight: 500;
      margin-bottom: 10px;
    }

    .extra-seats {
      grid-column: 1 / 3;
    }

    .extra-seats .seat {
      margin-top: 10px;
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
    
   /*loading screen css */
   /* body {
      margin: 0;
      padding: 0;
      font-family: Arial, sans-serif;
      background-color: #f5f5f5;
      display: flex;
      justify-content: center;
      align-items: center;
      min-height: 100vh;
      overflow: hidden;
    }
 */
    .loading-screen {
      display: flex;
      justify-content: center;
      align-items: center;
      position: fixed;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background-color: rgba(255, 255, 255, 0.9);
      z-index: 9999;
    }

    .spinner {
      border: 4px solid rgba(0, 0, 0, 0.3);
      border-top: 4px solid #3498db;
      border-radius: 50%;
      width: 40px;
      height: 40px;
      animation: spin 1s linear infinite;
    }

    .content {
      display: none; /* Initially hide content */
      text-align: center;
      background-color: #fff;
      padding: 20px;
      border-radius: 5px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
    }

    @keyframes spin {
      0% { transform: rotate(0deg); }
      100% { transform: rotate(360deg); }
    }
  </style>
</head>
<body>

<nav>
    <div class="nav-content">
      <div class="logo">
        <a href="/">G-Bus</a>
      </div>
      <ul class="nav-links">
        <li><a href="home">Home</a></li>
        <li><a href="bookings">Bookings</a></li>
        <li><a href="feedback">Feedback</a></li>
        <li><a href="contact">Contact</a></li>
        <li><a href="login">Login</a></li>
      </ul>
    </div>
  </nav>
  
  <div class="container">
  
<div class="loading-screen" id="loading-screen">
    <div class="spinner"></div>
  </div>

  <div class="content" id="content">
    Your content goes here
    <h1>Payment Failed</h1>
    <p>Please try doing with different Card</p>
  </div>

  <script>
    // Simulate loading content
    window.addEventListener('load', function () {
      const loadingScreen = document.getElementById('loading-screen');
      const content = document.getElementById('content');

      setTimeout(function () {
        loadingScreen.style.display = 'none'; // Hide the loading screen
        content.style.display = 'block'; // Show the content
      }, 2000); // Adjust the delay (in milliseconds) to your needs
    });
  </script>
 
  </div>
</body>
</html> 