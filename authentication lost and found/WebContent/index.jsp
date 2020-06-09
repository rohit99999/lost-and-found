<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link type="text/css" href="cssmain.css" rel="stylesheet">
<script type="text/javascript"  src="jquery-3.3.1.js" ></script>
<script type="text/javascript" src="scroll.js"> </script>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
.loginbuttonbox {
  background-color: #32CD32;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
}

	#b33{
		
		 height:1000px;
		 width:100%;
		 background-color:#283747 ;		 
		color:#FFF;
		text-align:center;
		padding-top:235px;
		font-family:galada;
		font-size:50px;
	   background-image: url("img/bg.jpg");
		background-size:100%;
		background-repeat:no-repeat;
		
		
      /*  background-size: 100% 650px;*/
		
}
#b33 h5{
			
			font-weight:500;
			font-family:frederica;
			color:black;
			margin-left:20px;
			
		}
		#b33 h1{
			
			font-weight:500;
			font-family:great vibes;
				color:black;
			}
.login {

background-color:#FFF;
color:#000;
width:400px;
	font-size:70px;
	
	 text-decoration:none;
	border-color:#FFF;
	border:4px solid;
	border-radius:20px;
	padding-left:60px;
	padding-right:60px;
	margin-left:10px;

}

.login:hover{
		
		background-color:#32CD32;
		color:#000;
		 transition: .7s all; 
		
		}
button:hover {
  opacity: 0.8;
    background-color:#32CD32;
}

/* Extra styles for the cancel button */
.cancelbtn {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 2% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 30%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw {
     display: block;
     float: none;
  }
  .cancelbtn {
     width: 100%;
  }
}
</style>
</head>
<body>



<div id="header">
		<img  id="img2" src="img/LostandFoundLogo.png">
		<ul class="parent">
		<li><a style="background-color: #32CD32;" href="#">FRONT/LOGIN</a></li>
		<li><a href="reg.jsp">REGISTERATION</a></li>
		<!-- <li><a href="main.html#location">CONTACT</a></li> -->
		<li><a href="feedbacknew2.html">FEEDBACK</a></li>
		<!-- <li><a href="test.html">TEST</a></li> -->
		</ul>
	</div>


<div id="b33">
<h5>WELCOME TO </h5><h1>Lost & Found</h1><button class="login" onclick="document.getElementById('id01').style.display='block'">LOG IN</button></div>
<div id="id01" class="modal">
  
  <form class="modal-content animate" action="login.jsp" method="post">
    <div class="imgcontainer">
      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
      <img src="lophoto.jpg" alt="Avatar" class="avatar">
    </div>

    <div class="container">
      <label for="uname"><b>Username</b></label>
      <input type="text" placeholder="Enter Username" name="uname" required>

      <label for="pass"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="pass" required>
        
      <button class="loginbuttonbox"type="submit" value="login">Login</button>
      <label>
        <input type="checkbox" checked="checked" name="remember"> Remember me
      </label>
    </div>

    <div class="container" style="background-color:#f1f1f1">
      <button type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn">Cancel</button>
      <span class="psw"> New User<a href="reg.jsp"> Register here?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal) {
        modal.style.display = "none";
    }
}
</script>

<div  id="b4">
<h4 style="color:red" style="font-size:40px">About Us</h4>
<h5>Finding Things Since 2020</h5>
<h6 style="color:red" >Who Are We</h6>
<p >We are college students , who build this website for helping people who lost thier<br> things at workplaces,college,shops etc.
Some people found the items they can also <br> visit our website. If we found your lost thing , then we let you inform as soon as <br>possible within 48 hour .<br><br><br>
</p>
<div  style="margin-left: 900px" id="b4pics">
<img src="img/r1.PNG" width="260px" height="250px">
</div>
</div>
	<a id="scrollup" href="">^</a>


<script type="text/javascript" src="myscript.js"> </script>

</body>
</html>
