
   <!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="UTF-8">
    <title> G-Bus </title>
    <style>
    /* Google Font Link */
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
  background: url("images/Home.png") no-repeat;
/*   background: linear-gradient(135deg, #71b7e6, #9b59b6); */
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

 * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
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
        <li><a href="/">Home</a></li>
        <li><a href="employeelogin">Bookings</a></li>
        <li><a href="adminlogin">Admin</a></li>
        <li><a href="contact">Contact</a></li>
        <li><a href="employeelogin">Login</a></li>
      </ul>
    </div>
  </nav>
  		
  		
  		
    
  <section class="home"></section>
  <div class="text">
    <p><h2>About Us</h2>
    <p>In today's fast-paced world, people are constantly on the go. Whether we are traveling for business or pleasure, we need a convenient and reliable way to book bus tickets. A bus ticket booking system is a software application that allows customers to book bus tickets online.
A bus ticket booking system can benefit both bus operators and customers. For bus operators, the system can help to streamline the booking process, improve customer service, and increase sales. For customers, the system can provide a convenient and easy way to book bus tickets, and it can also help them to save time and money</p>
    <br><p> Our team has developed a bus ticket booking system that aims to streamline the process of booking bus tickets for both customers and bus operators. The system includes a user-friendly interface for customers to search and book bus tickets, as well as a back-end system for bus operators to manage their inventory and reservations.</p>
    <p>Developed By-</p><br>
    <p>AMAN CHAUDHARY THARU 2100032572</p><br>
    <p>SAMBANDHA BHATTARAI 2100032604</p><br>
    <p>MANSOOR H MUSTAPHA 2100032583</p><br>
  </div>

  <script>
  let nav = document.querySelector("nav");
    window.onscroll = function() {
      if(document.documentElement.scrollTop > 20){
        nav.classList.add("sticky");
      }else {
        nav.classList.remove("sticky");
      }
    }
  </script>

</body>
</html>
  
