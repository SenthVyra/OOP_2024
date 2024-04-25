<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Update</title>
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
  font-size:14px;
  font-family:'Roboto', sans-serif;
  color:#006092;
  text-align: left;
} 
h1{
font-family:'Roboto', sans-serif;
color:white;
text-align:center;
}
.label{
	width:500px;
	
	display: inline-block;
}

.button{
  background-color:#004B00;
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
	background-color:#006400;
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

</style>
</head>
<body>
<%
    String cid = request.getParameter("C_cid");
    String fname = request.getParameter("C_fname");
    String lname = request.getParameter("C_lname");
    String email = request.getParameter("C_email");
    String contact = request.getParameter("C_contactNo");
    String address = request.getParameter("C_address");
%>

<h1> Update Profile</h1>
<form action="customerUpdate" method="post"> 
<center>
Customer ID : <input class="label" type="text" name="C_cid" value="<%=cid%>" readonly>
<br><br>
First Name : <input class="label" type="text" name="C_fname" value="<%=fname%>">
<br><br>
Last Name : <input class="label" type="text" name="C_lname" value="<%=lname%>">
<br><br>
Email : <input class="label" type="text" name="C_email" value="<%=email%>">
<br><br>
Contact Number: <input class="label" type="text" name="C_contactNo" value="<%=contact%>">
<br><br>
Address :
 <input class="label" type="text" name="C_address" value="<%=address%>">
<br><br>
<input class="button" type="submit" name="submit" value="Update">
</center>
</form>

</body>
</html>