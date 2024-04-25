<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Register</title>
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />
<link rel="stylesheet" href="navAndFooter.css" />
<style>
body{
background-color: #0f172e;
font:'Roboto', sans-serif;
}
form{
  width :550px;
  margin:auto;
  padding:20px;
  border-radius:25px;
  background:white;
  font-size:18px;
  font-weight: bold;
  font-family:'Roboto', sans-serif;
  color:#1FC4DA;
  text-align: left;
} 

.form{
backdrop-filter:blur(20px);
}
h1{
margin-top: 40px;
font-family:'Roboto', sans-serif;
color:white;
}

.label{
    width: 500px;
    display: inline-block;
    font-size: 15px;
    border-radius: 21px;
}
}


.button {
    background-color: #006092;
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


.TC {
  padding-left: 10px;
}


input[type="text"]{
 border-left: none;
 border-right: none;
 border-top: none;
 border-bottom: 1px solid #0f172e;
 padding: 8px;
 text-align: center;
 outline:none   !important;
 }
 
input[type="password"]{
 border-left: none;
 border-right: none;
 border-top: none;
 border-bottom: 1px solid #0f172e;
 padding: 8px;
 text-align: center;
 outline:none   !important;
 }
 
 input[type="submit"]{
     background-color: #006092;
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
 
  input[type="submit"]:hover{
   background-color:#82EFEA;
  } 
</style>
</head>
<body>
<jsp:include page="navbar.jsp" />
<center>
<h1>Register Now!</h1>
</center>
 <form action="customerRegister" method="post" class="form">
<br>
 <center>
 First Name <br><br>
 <input class="label" type="text" name="fname" placeholder="Enter First name" required="required"> <br><br>
 Last Name <br> <br>
 <input class="label" type="text" name="lname" placeholder="Enter Last name" required="required"> <br><br>
 Email    <br><br>
 <input  class="label" type="text" name="email" placeholder="Enter Email Address" required="required"> <br><br>
 Contact Number <br><br>
<input  class="label" type="text" name="contact" placeholder="Enter contat number" required="required"> <br><br>
 Address  <br><br>
 <input class="label" type="text" name="address" placeholder="Enter Contact Number" required="required"> <br><br>
 Password <br><br>
  <input  class="label" type="password" name="pwd" placeholder="Enter password" required="required"> <br><br>
 </center>
 
 <div class="TC">
 <input type="checkbox" class="checkbox" name="TC" id="" required>I hearby agree to the Terms and conditions
</div>
<br><br>
<center>
<input class="button" type="submit" name="submit" value="Register Now"> <br><br>
</center>
 
 </form>
 <jsp:include page="footer.jsp" />
</body>
</html>