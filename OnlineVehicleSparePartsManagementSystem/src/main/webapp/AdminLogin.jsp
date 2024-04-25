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
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
		<meta charset="ISO-8859-1">
		<title>Customer Login</title>
		
		<style>
			body {
			background-color: #0f172e;
			font:'Roboto', sans-serif;
			}
			form {
			  width :550px;
			  margin:auto;
			  padding:20px;
			  border-radius:25px;
			  background:#e9ebea;
			  font-size:14px;
			  font-family:'Roboto', sans-serif;
			  color:#0f172e;
			  text-align: left;
			} 
			h1 {
			margin-top: 30px;
			font-family:'Roboto', sans-serif;
			color:white;
			}
			.label {
				width:500px;
				border-radius:5px;
				display: inline-block;
			}			
			.button {
				background-color:#1FC4DA;
				border: none;
				color: white;
				padding: 15px 32px;
				text-align: center;
				text-decoration: none;
				display: inline-block;
				font-size: 16px;
				margin: 4px 2px;
				cursor: pointer;
				border-radius: 8px;			  
			}			
			.button:hover {
				background-color:#82EFEA;
			}
			.imgcontainer {
			  	text-align: center;
			  	margin: 24px 0 12px 0;
			}
			img.avatar {
			  	width: 40%;
			  	border-radius: 50%;
			}
			input[type="text"] {
		        text-align: center;
		    }
			input[type="password"] {
		        text-align: center;
		    }
		    a{
		    	text-decoration: none;
		    }
		  
	/*
	
			a:link {
		   		color:#006092;
			}		
			a:visited {
		   		color:#006092;
			}
			a:hover {
		   		color:#1FC4DA;
			}
			
			*/
			
		</style>
	</head>
	
	<body>
	<jsp:include page="navbar.jsp" />
	  	<center>
	 		 <h1 > Sign In Here!</h1>
	  	</center>
	  	
	  	<form action="adminLoginServlet" method="post">
	  	
	  		<div class="imgcontainer">
	    		<img src="images/loginImage.png" alt="Avatar" class="avatar">
	  		</div>
	  		
	  		<center>Email </center>  <br>
	  		<input class ="label" type="text" name="email" required="required"  placeholder="enter email address"> 
	  		<br><br>
	  		<center>Password  </center> <br>
	  		<input class="label" type="password" name="pwd" required="required" placeholder="enter password"> 
	  		<br><br>

			<center><input class="button" type="submit" name="submit" value="Sign In"></center>
			
	  	</form>
	  	<jsp:include page="footer.jsp" />
	</body>
</html>