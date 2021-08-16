<%@page contentType="text/html" pageEncoding="UTF-8" language="java" 
import="javax.xml.parsers.DocumentBuilderFactory,javax.xml.parsers.DocumentBuilder,org.w3c.dom.*,org.xml.sax.*,java.io.File,java.io.IOException,javax.xml.parsers.ParserConfigurationException" errorPage=""%>

<html> 
	<head> 
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> 
		<title>JSP Page</title> 
	</head> 

	<body> 
		<% 
		File f=new File("C:/Program Files/Apache Software Foundation/Tomcat 10.0/webapps/project/userdata.xml");
		DocumentBuilderFactory dbf = DocumentBuilderFactory.newInstance();
		DocumentBuilder db = dbf.newDocumentBuilder();
		Document doc = db.parse(f);
		
		NodeList users=doc.getElementsByTagName("user");

		int flag=0;
		String username=request.getParameter("username"); 
		String password=request.getParameter("password");
		
		for(int i=0;i<users.getLength();i++){
			Node user = users.item(i);
			if(user.getNodeType()==Node.ELEMENT_NODE){
				Element eElement=(Element)user;
				String u=eElement.getElementsByTagName("uname").item(0).getTextContent();
				String p=eElement.getElementsByTagName("pass").item(0).getTextContent();
				String n=eElement.getElementsByTagName("name").item(0).getTextContent();
				String a=eElement.getElementsByTagName("age").item(0).getTextContent();
				String d=eElement.getElementsByTagName("dob").item(0).getTextContent();
				String m=eElement.getElementsByTagName("mobile").item(0).getTextContent();

				if(username.equals(u) && password.equals(p)){
					session.setAttribute("username",username);
					session.setAttribute("name",n);
					session.setAttribute("age",a);
					session.setAttribute("dob",d);
					session.setAttribute("mobile",m);					
					response.sendRedirect("Home.jsp");
					flag=1;
					break;
				}
			}
		}
		if(flag==0)
			response.sendRedirect("Error.jsp"); 
		
		%> 
	</body> 
</html>