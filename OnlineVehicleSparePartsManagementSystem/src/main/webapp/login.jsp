<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400&display=swap"
	rel="stylesheet">
<title>Customer Login</title>
<style>
body{
font-family:'Roboto', sans-serif;
background-color: #0f172e;
font:'Roboto', sans-serif;
}
form{
  width :550px;
  margin:auto;
  padding:20px;
  border-radius:25px;
  background:white;
  font-size:14px;
  font-family:'Roboto', sans-serif;
  color:#0f172e;
  text-align: left;
} 
h1{
margin-top: 40px;
font-family:'Roboto', sans-serif;
color:white;
}
.label{
	width:500px;
	border-radius:5px;
	display: inline-block;
}

.button{
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

.button:hover{
	background-color:#82EFEA;
}
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
}

/* Avatar image */
img.avatar {
  width: 40%;
  border-radius: 50%;
}
input[type="text"]{
border-left: none;
 border-right: none;
 border-top: none;
 border-bottom: 1px solid #0f172e;
 border-radius:8px;
 padding: 8px;
 text-align: center;
            }
input[type="password"]{
  border-left: none;
 border-right: none;
 border-top: none;
 border-bottom: 1px solid #0f172e;
 border-radius:8px;
 padding: 8px;
 text-align: center;
            }
a:link{
   color:#006092;
}

a:visited{
   color:#006092;
}
a:hover{
   color:#1FC4DA;
}
</style>
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
<link rel="stylesheet" href="navAndFooter.css" />
</head>
<body>
<jsp:include page="navbar.jsp" />

  <center>
  <h1 > Sign In Here!</h1>
  </center>
  <form action="customerLogin" method="post">
  <div class="imgcontainer">
    <img src="images/loginImage.png" alt="Avatar" class="avatar">
  </div>
  <center>Email </center>  <br>
  <input class ="label" type="text" name="email"  placeholder="email address" required="required"> <br><br>
  <center>Password  </center> <br>
  <input class="label" type="password" name="pwd" placeholder="password" required="required"> <br><br>
  <center>Not a user yet?<br><br><a href="customerRegister.jsp">Register now!</a></center><br><br><br>
<center><input class="button" type="submit" name="submit" value="Sing In"></center>
  </form>
  <jsp:include page="footer.jsp" />
</body>
</html>