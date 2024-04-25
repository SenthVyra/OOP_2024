<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "com.ovspms.admin.*" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>
    
<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>Delete Seller Contact</title>
	</head>
		
	<body>
		
		<%
			String id = request.getParameter("userId");
			String driverName = "com.mysql.jdbc.Driver";
			String connectionUrl = "jdbc:mysql://localhost:3306/";
			String dbName = "ovspms";
			String userId = "root";
			String password = "mysql123";
						
			try {
				Class.forName(driverName);
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			}
						
			Connection connection = null;
			Statement statement = null;
			ResultSet resultSet = null;
		%>
	
	
		<%
			String ID = request.getParameter("d");
			int no = Integer.parseInt (ID);
			
			connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
			statement=connection.createStatement();
			statement.executeUpdate ("delete from contact_us_seller where contact_ID = '"+no+"'");
			response.sendRedirect ("ViewContactUs.jsp");				
		%>
		
	</body>
</html>