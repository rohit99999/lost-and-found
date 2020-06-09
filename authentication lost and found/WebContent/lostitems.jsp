<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.*,java.util.*,java.io.*,java.util.Base64"%>
<%
String id = request.getParameter("userid");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";
String database = "test3";
String userid = "root";
String password = "123";
String item=request.getParameter("item");
String item2=request.getParameter("place");
try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!doctype html>
<html>
<head>
<meta charset="utf-8">
<title>Lost Items</title>
<link type="text/css" href="cssmain.css" rel="stylesheet">
<link href="bootstrap.css" rel="stylesheet">
<script type="text/javascript"  src="jquery-3.3.1.js" ></script>
<script type="text/javascript" src="scroll.js"> </script>
<script type="text/javascript" src="myscript.js"> </script>
</head>


<body>
	<div id="header">
		<img  id="img2" src="img/LostandFoundLogo.png">
		<ul class="parent">
		<li><a href="main.html">HOME</a></li>
		<li><a style="background-color: #32CD32;" href="lost.html">SEARCH</a></li>
		<li><a href="found.html">FOUND</a></li>
	
		<!-- <li><a href="main.html#location">CONTACT</a></li> -->
		<li><a href="feedbackNew.html">FEEDBACK</a></li>
	
			<li><a style="background-color:red" href="index.jsp">LOG OUT</a></li>
		
		<!-- <li><a href="test.html">TEST</a></li> -->
		</ul>
	</div>


<div class="container" style="margin-top: 100px; min-height: 350px">
		<table border="1" class="table table-striped">
		<tr style="background-color: #000; color: #fff">
	    <th>Name</th>
		<th>Item</th>
		<th>city</th>
		<th>Place</th>
		<th>Date</th>
		<th>Description</th>
		<th>Email</th>
		<th>Lost/Found</th>


		</tr>
		
		
	
		<%
		try{
			
		connection = DriverManager.getConnection(connectionUrl+database, userid, password);
		statement=connection.createStatement();
	
		String sql ="select * from found3 where item = '"+item+"'  AND city = '"+item2+"' ";
		resultSet = statement.executeQuery(sql);
		while(resultSet.next()){
			String name=resultSet.getString("name");
	
			String thing=resultSet.getString("item");
		
			String city=resultSet.getString("city");
		
			String place=resultSet.getString("place");
			
			String ddate=resultSet.getString("ddate");
			
			String description=resultSet.getString("description");
	
			String comment=resultSet.getString("comment");
			
			String email=resultSet.getString("email");
		
		
		%>
		<tr>		
		<td><%=name%></td>
		<td><%=thing%></td>
		<td><%=city%></td>
		<td><%=place%></td>
		<td><%=ddate%></td>
		<td><%=description%></td>
		<td><%=email%></td>
		<td><%=comment%></td>
		
	
		</tr>
	

		<%
		}
		connection.close();
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		</table>
</div>



<div  style="margin-top:900px;" id="b4">
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