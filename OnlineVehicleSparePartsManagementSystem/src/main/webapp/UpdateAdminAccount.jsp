<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
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
		<title>Update Admin Profile</title>
		
		<style type="text/css">
		
			body {
				background-color: #0f172e;
				font:'Roboto', sans-serif;
			}
			h1 {
			margin-top: 30px;
				font-family:'Roboto', sans-serif;
				color:white;
				text-align:center;
			}
			table {
				width: 800px;
				background-color:#0f172e;
				font-family:'Roboto', sans-serif;
				font:#0f172e;
				font-size:20px;
				font-weight:bold;
				margin:auto;
				border: 1px solid black;
				margin-top:70px;
			}
			td {
				padding: 15px;
				background-color:#B0E0E6	;
				/*border-radius: 15px;*/
			}
			.submit {
			    background-color:#1fc4da;
			    color: #0f172e;
			    border:none;
			    border-radius:10px;
			    font-size:20px;
			    font-weight:bold;
			    right-margin:10px;
			    padding:0.8rem 3rem;
			    cursor:pointer;
			    float:right;
			    margin-right:360px;
			    margin-top:50px;
  			}
			.submit:hover {
			    background:#006092;
			    color:#e9ebed;
			}
			.input {
				height:25px;
			    font-size:14pt;
			    length:50px;
			}
		
		</style>
	</head>
	
	<body>
	<jsp:include page="navbar.jsp" />
		<center>
			<h1>Update Profile</h1>
		</center>
	
		<%
			//catching the data from the AdminAccount.jsp file
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String email = request.getParameter("email");
			String phone = request.getParameter("Phone");
			String password = request.getParameter("password");
		%>	
		
		<form action = "UpdateAdmin" method = "POST">
		<table>
			
			<tr>																	
				<td>Admin ID</td>										<!-- not to allow change the admin ID -->
				<td><input type = "text" class = "input" name = "adminID" size="50" value = "<%= id%>" readonly></td>
			</tr>
			<tr>
				<td>Name</td>
				<td><input type = "text" class = "input" name = "name" size="50" value = "<%= name%>"></td>
			</tr>
			<tr>
				<td>Email Address</td>
				<td><input type = "text" class = "input" name = "email" size="50" value = "<%= email%>"></td>
			</tr>
			<tr>
				<td>Contact No</td>
				<td><input type = "text" class = "input" name = "phone" size="50" value = "<%= phone%>"></td>
			</tr>
			<tr>
				<td>Password</td>
				<td><input type = "password" class = "input" name = "password" size="50" value = "<%= password%>"></td>
			</tr>
			
		</table>
					
			<input type = "submit" class = "submit" name = "submit" size="50" value = "Update My Data">
			<br>
			
		</form>
		<br>
		<br><br>
	<jsp:include page="footer.jsp" />
	</body>
</html>