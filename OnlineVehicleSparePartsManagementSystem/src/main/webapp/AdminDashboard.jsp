<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "com.ovspms.admin.*" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>


<!DOCTYPE html>
<html>
	<head>
	
		<link rel="stylesheet" href="navAndFooter.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400&display=swap"
	rel="stylesheet">

<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
		<meta charset="ISO-8859-1">
		<title>Admin Dashboard</title>
		
		<link rel="stylesheet" href="css/AdminDashboard.css">
	</head>
	
	<body>
<jsp:include page="navbar.jsp" />

<button class="button3" type="submit"> <a href="adminLogout"> Sign Out</a> </button>
<br><br>
		<center>
	 		 <h1 >Admin Dashboard</h1>
	  	</center>
	  	
	  	<!--
	  	<a href = "AdminAccount.jsp">
			<button class = "button1">View Profile</button>
		</a><br>
		-->
	
		<!-- Display customer table -->
		<div class="container">
			<span><h2>Customers</h2></span>

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
				
				<tr bgcolor="#1fc4da">
					<td><b>Customer ID</b></td>
					<td><b>First Name</b></td>
					<td><b>Last Name</b></td>
					<td><b>Email Address</b></td>
					<td><b>Contact No</b></td>
					<td><b>Address</b></td>
					<td><b>Password</b></td>
					<td><b>Action</b></td>
				</tr>
						
			<%
					try{	
						connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT * FROM customer";
					
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
			%>
				<tr bgcolor="#82efea">								
					<td><%=resultSet.getString ("idCustomer") %></td>
					<td><%=resultSet.getString ("C_fname") %></td>
					<td><%=resultSet.getString ("C_lname") %></td>
					<td><%=resultSet.getString ("C_email") %></td>
					<td><%=resultSet.getString ("C_contactNo") %></td>
					<td><%=resultSet.getString ("C_address") %></td>
					<td><%=resultSet.getString ("C_password") %></td>
														 
					<td><a href='DeleteCustomer.jsp?d=<%=resultSet.getString("idCustomer")%>'>
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


		<!-- Display seller table -->
		<div class="container">
			<span><h2>Sellers</h2></span>

			<%
					try {
						Class.forName(driverName);
					} catch (ClassNotFoundException e) {
						e.printStackTrace();
					}
			%>
					
			<table align="center" class = "table" cellpadding="5" cellspacing="5" border="1">

				<tr bgcolor="#1fc4da">
					<td><b>Seller ID</b></td>
					<td><b>First Name</b></td>
					<td><b>Last Name</b></td>
					<td><b>Email Address</b></td>
					<td><b>Contact No</b></td>
					<td><b>Password</b></td>
					<td><b>Address</b></td>
					<td><b>Action</b></td>
				</tr>
						
			<%
					try{	
						connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT * FROM seller";
					
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
						%>
				<tr bgcolor="#82efea">								
					<td><%=resultSet.getString ("SID") %></td>
					<td><%=resultSet.getString ("S_fname") %></td>
					<td><%=resultSet.getString ("S_lname") %></td>
					<td><%=resultSet.getString ("S_email") %></td>
					<td><%=resultSet.getString ("S_contactNo") %></td>
					<td><%=resultSet.getString ("S_password") %></td>
					<td><%=resultSet.getString ("S_address") %></td>
					<td><a href='DeleteSeller.jsp?d=<%=resultSet.getString("SID")%>'>
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
		
		
		<!-- Display admin table -->
		<div class="container">
			<span><h2>Admin Panel</h2></span>

			<%
					try {
						Class.forName(driverName);
					} catch (ClassNotFoundException e) {
						e.printStackTrace();
					}
			%>
					
			<table align="center" class = "table" cellpadding="5" cellspacing="5" border="1">
				<tr bgcolor="#1fc4da">
					<td><b>Admin ID</b></td>
					<td><b>Name</b></td>
					<td><b>Email Address</b></td>
					<td><b>Contact No</b></td>
					<td><b>Password</b></td>
				</tr>
						
			<%
					try{	
						connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
						statement=connection.createStatement();
						String sql ="SELECT * FROM admin";
					
						resultSet = statement.executeQuery(sql);
						while(resultSet.next()){
			%>
				<tr bgcolor="#82efea">								
					<td><%=resultSet.getString ("Admin_ID") %></td>
					<td><%=resultSet.getString ("A_name") %></td>
					<td><%=resultSet.getString ("A_email") %></td>
					<td><%=resultSet.getString ("A_contactNo") %></td>
					<td><%=resultSet.getString ("A_password") %></td>							
				</tr>		            
			<%		
						}
								
					} catch (Exception e) {
						e.printStackTrace();
					}
			%>	
										
			</table>
		</div>
			
		<a href = "ViewContactUs.jsp">
			<button class = "button3">View Contact Us</button>
		</a>

		
	</body>
</html>
