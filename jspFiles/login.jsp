<%@page contentType="text/html" pageEncoding="UTF-8"%> 

<html> 
	<head> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
		<title>JSP Page</title> 
	</head> 

	<body> 
		<h1>Login Page</h1> 
		<center> 
			<h2>Signin Details</h2> 
			<form action="logincheck.jsp" method="post"> 
				<br/>Username:<input type="text" name="username"> 
				<br/>Password:<input type="password" name="password"> 
				<br/><input type="submit" value="Submit"> 
			</form> 
		</center> 
		<!--
		<h1>Register if you're a new user<h1>
		<center> 
			<h2>Signup Details</h2> 
			<form action="register.jsp" method="post"> 
				<br/>Name:<input type="text" name="Name">
				<br/>Username:<input type="text" name="username"> 
				<br/>Password:<input type="password" name="password">
				<br/>Age:<input type="number" name="age"> 
				<br/>DOB:<input type="date" name="dob">
				<br/>Mobile:<input type="number" name="mobile">
				<br/><input type="submit" value="Submit"> 
			</form> 
		</center> 
		-->
	</body>
</html>