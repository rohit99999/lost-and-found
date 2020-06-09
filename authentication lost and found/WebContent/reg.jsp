<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link type="text/css" href="cssmain.css" rel="stylesheet">
<script type="text/javascript"  src="jquery-3.3.1.js" ></script>
<script type="text/javascript" src="scroll.js"> </script>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration</title>
        
        
       <style>
       
       
       * {box-sizing: border-box}

/* Add padding to containers */
.container {
  padding: 16px;
}

/* Full-width input fields */
input[type=text],input[type=email], input[type=password] {
  width: 50%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

input[type=text]:focus, input[type=password]:focus {
  background-color: #ddd;
  outline: none;
}

/* Overwrite default styles of hr */
hr {
  border: 1px solid #f1f1f1;
  margin-bottom: 25px;
}

/* Set a style for the submit/register button */
.registerbtn {
  background-color: #32CD32;
  color: white;
  padding: 16px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 57.8%;
  opacity: 0.9;
}

.registerbtn:hover {
  opacity:5;
background-color:#32CD32;
}

/* Add a blue text color to links */
a {
  color: dodgerblue;
}

/* Set a grey background color and center the text of the "sign in" section */
.signin {
  background-color: #f1f1f1;
  text-align: center;
}
       
       </style>
    </head>
    <body>
   <div id="header">
		<img  id="img2" src="img/LostandFoundLogo.png">
		<ul class="parent">
		<li><a  href="index.jsp">FRONT/LOGIN</a></li>
		<li><a style="background-color: #32CD32;" href="reg.jsp">REGISTERATION</a></li>
		<!-- <li><a href="main.html#location">CONTACT</a></li> -->
		<li><a href="feedbacknew2.html">FEEDBACK</a></li>
	
		<!-- <li><a href="test.html">TEST</a></li> -->
		</ul>
	</div>
       <form action="registration.jsp">
  <div style="margin-left:400px " class="container">
    <h1  style="margin-top: 80px">Register</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>
     <label for="email"><b>First Name</b></label>
    <input  type="text" placeholder="Enter Fist Name" name="fname" required><br>

 <label for="email"><b>Last Name</b></label>
    <input style="margin-left:3px" type="text" placeholder="Enter Last Name" name="lname" required><br>

    <label for="email"><b>Email id</b></label>
    <input style="margin-left:24px" type="email" placeholder="Enter Email" name="email" required><br>

    <label for="psw"><b>Username</b></label>
    <input style="margin-left:9px" type="text" placeholder="Enter Username" name="uname" required><br>

    <label for="psw-repeat"><b>Password</b></label>
    <input style="margin-left:14px" type="password" placeholder="Enter Password" name="pass" required>
    <hr>

    <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>
    <button type="submit" class="registerbtn">Register</button>
  </div>

  <div class="container signin">
    <p>Already have an account? <a href="index.jsp">click here</a>.</p>
  </div>
</form>
<div style="margin-top: 3px" id="b4">
<h4 style="color:red" style="font-size:40px">About Us</h4>
<h5>Finding Things Since 2020</h5>
<h6 style="color:red" >Who Are We</h6>
<p >We are college students , whose built this website for helping people whose lost their something <br>at workplaces,college,shops etc.
people whose found something they uploaded information on<br>our website.You can search for your lost thing anytime or from anywhere on our website.<br><br><br><br><br>
</p>
<div  style="margin-left: 900px" id="b4pics">
<img src="img/r1.PNG" width="260px" height="250px">
</div>
</div>
	<a id="scrollup" href="">^</a>
	

<script type="text/javascript" src="myscript.js"> </script>
</body>
</html>