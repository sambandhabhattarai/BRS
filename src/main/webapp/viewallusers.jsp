    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="h" %>    

<!DOCTYPE html>
<html>
<head>
   <meta charset="UTF-8">
    <title>All Users | G-Bus</title>
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
            max-width: 800px;
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
            width: 50px;
            border-radius: 5px;
            background: linear-gradient(135deg, #71b7e6, #9b59b6);
            
        }

       
       /*table css*/
table{
margin-top:20px;
width:100%;
}  
       table th, table td {
    text-align: left; /* Adjust text alignment as needed */
    padding: 5px; /* Add padding for spacing within table cells */
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
    
}   

/* Success Message CSS */
.success-message {
   
    color: red; /* White text color */
    padding: 30px; /* Add some padding for spacing */
    margin-top: 10px; /* Adjust the margin as needed */
    border-radius: 5px; /* Rounded corners for the message box */
    text-align: center; /* Center the text */
    animation: pulse 2s ease-in-out infinite; 
}

.success-text {
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
        <li><a  href="#" class="welcome-message" >Welcome <c:out value="${auname}"></c:out></a></li> 
       <!--   <li><a href="adminlogin">ViewBookings</a></li> -->
        <li><a href="adminlogin">Logout</a></li>
       
      </ul>
    </div>
  </nav>
  <!-- NavBar code ends -->
  
  

<div class="container">
    <div class="title">User Details</div>
    <div class="content">
<table align=center border=2>

<tr>

<th>ID</th>
<th>Name</th>
<th>Email-Id</th>
<th>Username</th>
<th>Gender</th>
<th>Date of birth</th>
<th>Contact No</th>
<th>Action</th>

</tr>

<h:forEach items="${emplist}" var="emp">

<tr>

<td> <h:out value="${emp.id}"></h:out>   </td>
<td> <h:out value="${emp.name}"></h:out>   </td>
<td> <h:out value="${emp.emailid}"></h:out>   </td>
<td> <h:out value="${emp.username}"></h:out>   </td>
<td> <h:out value="${emp.gender}"></h:out>   </td>
<td> <h:out value="${emp.dateofbirth}"></h:out>   </td>
<td> <h:out value="${emp.contactno}"></h:out>   </td>
<td> 

<a href='<c:url value='deleteemp?id=${emp.id}'></c:url>'>Delete</a>&nbsp;&nbsp;
<a href='<c:url value='viewuserbyid?id=${emp.id}'></c:url>'>View</a>&nbsp;&nbsp;

</td>


</tr>

</h:forEach>

</table>
		
		<!-- Add this code where you want to display the success message -->
<h:if test="${not empty successMessage}">
    <div class="success-message">
        ${successMessage}
    </div>
</h:if>
		
</div>
</div>
</body>
</html>

 
