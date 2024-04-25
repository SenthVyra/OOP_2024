<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  

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
		<title>Admin Account</title>
		
		<style type="text/css">
		
			body {
				background-color: #0f172e;
				font:'Roboto', sans-serif;
			}
			h1 {
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
			}
			td {
				padding: 15px;
				background-color:#B0E0E6	;
			}
			fieldset {
				background-color:#006092;
				border: 2px #1fc4da;
			}
			.imgcontainer {
				display: block;
				margin-left: auto;
				margin-right: auto;
				width: 50%;
			}
			.button1 {
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
			    margin-right:230px;
			    margin-top:30px;
  			}
  			.button1:hover {
			    background:#006092;
			    color:#e9ebed;
			}

		</style>
	</head>
	
	<body>
	<jsp:include page="navbar.jsp" />
		<h1>Admin Profile</h1>	
		<a href = "AdminDashboard.jsp">
				<button class = "button1" name = "update">Admin Dashboard</button>
			</a>	
		<br>
			
		<div class="imgcontainer">
	    	<fieldset><legend><img src="images/loginImage.png" alt="Avatar" class="avatar" width = "150px"></legend>
	    		
	    		<table>
	    								   			<!-- bring data from database -> entitty class -> servlet -> AdminAccount.jsp -->
					<c:forEach var = "ad" items = "${adminDetails}">
						
						<!-- to pass the values into the update admin account jsp file -->
						<!-- need to be inside the for each tag to catch the values -->
							
						<c:set var = "id" value = "${ad.getAdmin_ID()}"/>
						<c:set var = "name" value = "${ad.getA_name()}"/>
						<c:set var = "email" value = "${ad.getA_email()}"/>
						<c:set var = "phone" value = "${ad.getA_contactNo()}"/>
						<c:set var = "password" value = "${ad.getA_password()}"/>
							
						<tr>
							<td>Admin ID</td>
							<td>${ad.getAdmin_ID()}</td>
						</tr>
						<tr>
							<td>Name</td>
							<td>${ad.getA_name()}</td>
						</tr>
						<tr>
							<td>Email Address</td>
							<td>${ad.getA_email()}</td>
						</tr>
						<tr>
							<td>Contact No</td>
							<td>${ad.getA_contactNo()}</td>
						</tr>
						<tr>
							<td>Password</td>
							<td>${ad.getA_password()}</td>
						</tr>
					</c:forEach>
					
				</table>	    		
	    		
    		</fieldset>
	    		
	    	<c:url value = "UpdateAdminAccount.jsp" var = "adminUpdate">
	    		<!-- data which should carry when going to the given url -->
	   			<c:param name = "id" value = "${id}"/>
	   			<c:param name = "name" value = "${name}"/>
	   			<c:param name = "email" value = "${email}"/>
	   			<c:param name = "phone" value = "${phone }"/>
    			<c:param name = "password" value = "${password}"/>
    		</c:url>
	    		
	    	<a href = "${adminUpdate}">
				<button class = "button1" name = "update">Edit Profile</button>
			</a>
			
			
	  	</div>
	  	<br><br>
	  	<br>
	  	<jsp:include page="footer.jsp" />		
	</body>
</html>