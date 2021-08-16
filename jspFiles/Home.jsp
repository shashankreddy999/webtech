<%@page contentType="text/html" pageEncoding="UTF-8" errorPage="Error.jsp"%> 

<html> 
	<head> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
		<title>JSP Page</title> 
	</head> 
	
	<body>
		<br/><br/><br/><br/><br/> 
		<center> 
			<h1>Your Profile</h1>
			<h3> 
				<% 
				String u=session.getAttribute("username").toString();
				String n=session.getAttribute("name").toString();
				String a=session.getAttribute("age").toString();
				String d=session.getAttribute("dob").toString();
				String m=session.getAttribute("mobile").toString(); 
				
				out.println("Hello....."+"<br>");
				out.println("Name:"+n+"<br>");
				out.println("\nAge:"+a+"<br>");
				out.println("\nDOB:"+d+"<br>");
				out.println("\nMobile:"+m+"<br>"); 
				%> 
			</h3> 
			<br/> <br/> <br/><br/><br/><br/><br/> 
			<a href="login.jsp">Logout</a> 
		</center> 
	</body> 
</html>