<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "com.ovspms.admin.adminDBUtil" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="ISO-8859-1">
		<title>View Contact Us</title>
		<link rel="stylesheet" href="css/AdminDashboard.css">
	</head>
	
	<body>
		
		<center>
	 		 <h1 >View Contact</h1>
	  	</center>
	
		<div class="container">
				<span><h2>View Customer Contact Us</h2></span>

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
					
					<table align="center" class = "table" cellpadding="5" cellspacing="5" border="1">
						<tr>
					
						</tr>
						<tr bgcolor="#1fc4da">
							<td><b>Contact ID</b></td>
							<td><b>Customer Name</b></td>
							<td><b>Subject</b></td>
							<td><b>Email Address</b></td>
							<td><b>Contact No</b></td>
							<td><b>Message</b></td>
							<td><b>Action</b></td>
						</tr>
						
					    <%
						try{	
							connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
							statement=connection.createStatement();
							String sql ="SELECT * FROM contact_us_customer";
					
							resultSet = statement.executeQuery(sql);
							while(resultSet.next()){
						%>
						<tr bgcolor="#82efea">								
							<td><%=resultSet.getString ("contact_ID") %></td>
							<td><%=resultSet.getString ("cus_name") %></td>
							<td><%=resultSet.getString ("subject") %></td>
							<td><%=resultSet.getString ("cus_email") %></td>
							<td><%=resultSet.getString ("cus_phone") %></td>
							<td><%=resultSet.getString ("message") %></td>	
							
							<td><a href='DeleteContactCustomer.jsp?d=<%=resultSet.getString("contact_ID")%>'>
							<button class = "button2" name = "delete">Delete</button>
							</a></td>			
						</tr>
								            
						<%		
								}
								
						} catch (Exception e) {
							e.printStackTrace();
						}
						%>
										
					</table>
				</div>


		<div class="container">
				<span><h2>Seller Contact Us</h2></span>

					<%
						try {
							Class.forName(driverName);
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
					%>
					
					<table align="center" class = "table" cellpadding="5" cellspacing="5" border="1">
						<tr>
					
						</tr>
						<tr bgcolor="#1fc4da">
							<td><b>Contact ID</b></td>
							<td><b>Seller Name</b></td>
							<td><b>Subject</b></td>
							<td><b>Email Address</b></td>
							<td><b>Contact No</b></td>
							<td><b>Message</b></td>
							<td><b>Action</b></td>
						</tr>
						
					    <%
						try{	
							connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
							statement=connection.createStatement();
							String sql ="SELECT * FROM contact_us_seller";
					
							resultSet = statement.executeQuery(sql);
							while(resultSet.next()){
						%>
						<tr bgcolor="#82efea">								
							<td><%=resultSet.getString ("contact_ID") %></td>
							<td><%=resultSet.getString ("seller_name") %></td>
							<td><%=resultSet.getString ("subject") %></td>
							<td><%=resultSet.getString ("seller_email") %></td>
							<td><%=resultSet.getString ("seller_phone") %></td>
							<td><%=resultSet.getString ("message") %></td>	
							
							<td><a href='DeleteContactSeller.jsp?d=<%=resultSet.getString("contact_ID")%>'>
							<button class = "button2" name = "delete">Delete</button>
							</a></td>					
						</tr>
								            
						<%		
								}
								
						} catch (Exception e) {
							e.printStackTrace();
						}
						%>	
										
					</table>		
				</div>
				
				<br><br>
				<a href = "AdminDashboard.jsp">
					<button class = "button1">Back</button>
				</a>
				<br><br>
	</body>
</html>