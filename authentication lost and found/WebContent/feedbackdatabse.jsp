<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>

<%
String feedback=request.getParameter("feedback");

%>


<!doctype html>
<html>
<head>
<meta charset="utf-8">

<title>TEST PAGE</title>
<link type="text/css" href="cssmain.css" rel="stylesheet">
<link href="bootstrap.css" rel="stylesheet">
<script type="text/javascript"  src="jquery-3.3.1.js" ></script>
<script type="text/javascript" src="scroll.js"> </script>
<script type="text/javascript" src="myscript.js"> </script>
</head>



<style>



h1{
  margin-top: 250px;

  margin-left: 600px;
}
h2{


  margin-left: 650px;
}
</style>

<body>
	<body>
	<h1 >Sucessfully send feedback.</h1>
			<br>
			<h2 style="margin-left="400px;">Thanks for your feedback!</h2>
			<a class="button2" href="main.html">go to Home</a>
 <div id="header">
		<img  id="img2" src="img/LostandFoundLogo.png">
		<ul class="parent">
		<li><a  href="index.jsp">FRONT/LOGIN</a></li>
		<li><a href="reg.jsp">REGISTERATION</a></li>
		<!-- <li><a href="main.html#location">CONTACT</a></li> -->
		<li><a style="background-color: #32CD32;" href="feedbacknew2.html">FEEDBACK</a></li>

		<!-- <li><a href="test.html">TEST</a></li> -->
		</ul>
	</div>

	<div class="mycontainer">
		<div class="container">
			<%
			try
				{
				Class.forName("com.mysql.jdbc.Driver");
				Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/test3", "root", "123");
				Statement st=conn.createStatement();

				int i=st.executeUpdate("insert into feedbackdata3 values('"+feedback+"')");
				}
				catch(Exception e)
				{
				System.out.print(e);
				e.printStackTrace();
				}
			%>
			
		</div>
	</div>






<div  style="margin-top:30px;" id="b4">
<h4 style="color:red" style="font-size:40px">About Us</h4>
<h5>Finding Things Since 2020</h5>
<h6 style="color:red">Who Are We</h6>
<p >We are college students , who build this website for helping people who lost thier<br> things at workplaces,college,shops etc.
Some people found the items they can also <br> visit our website. If we found your lost thing , then we let you inform as soon as <br>possible within 48 hour .<br><br><br>
</p>
<div style="margin-left: 900px" id="b4pics">
<img src="img/r1.PNG" width="260px" height="250px">
</div>
</div>



<a id="scrollup" href="">^</a>

<script type="text/javascript" src="myscript.js"> </script>
</body>
</html>
