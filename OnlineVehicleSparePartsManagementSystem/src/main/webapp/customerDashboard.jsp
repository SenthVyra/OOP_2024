<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Customer Dashboard</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400&display=swap"
	rel="stylesheet">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="navAndFooter.css" />

 <link rel="stylesheet" href="customerDashboard.css">
 <style>
   * {
	font-family: 'Roboto', sans-serif;
}
.button3{
	background:#1FC4DA;
	float:right;
	padding: 10px 15px;
	text-align: center;
	color: white;
	cursor: pointer;
	border-radius:4px;
}

.button3:hover{
	background-color:#82EFEA;
}

a{
	text-decoration:none;
}

            }
a:link{
   color:white;
}

a:visited{
   color:white;
}
a:hover{
   color:white;
}
 
 </style>
</head>
<body>
<jsp:include page="navbar.jsp" />


<c:forEach var="cus" items="${cusDetails}">
<c:set var = "cusID" value="${cus.id}"/>
<c:set var = "fname" value="${cus.c_fname}"/>
<c:set var = "lname" value="${cus.c_lname}"/>
<c:set var = "email" value="${cus.c_email}"/>
<c:set var = "contact" value="${cus.c_contactNo}"/>
<c:set var = "address" value="${cus.c_address}"/>


<button class="button3" type="submit"> <a href="customerLogout"> Sign Out</a> </button>
<br><br>
<h1> My profile </h1>



<div class = "border">
<div class="profile">
<img class="userImg" src="images/userImage.png" alt="UserImage">
<div class="vl"></div>
<div class="UserInfo">
<table>
<tr>
<td>Customer ID  </td>   <td>  ${cus.id} </td>
</tr>
<tr>
<td>First Name </td>   <td> ${cus.c_fname} </td>
</tr>
<tr>
<td>Last Name </td>   <td> ${cus.c_lname} </td>
</tr>
<tr>
<td>Email </td>       <td> ${cus.c_email} </td>
</tr>
<tr>
<td>Contact Number </td>  <td>  ${cus.c_contactNo} </td>
</tr>
<tr>
<td>Address </td>    <td> ${cus.c_address} </td>
</tr>
</table>
</div>
</div>

</c:forEach>

<c:url value="customerUpdate.jsp" var="customerUpdate">
<c:param name="C_cid" value="${cusID}"/>
<c:param name="C_fname" value="${fname}"/>
<c:param name="C_lname" value="${lname}"/>
<c:param name="C_email" value="${email}"/>
<c:param name="C_contactNo" value="${contact}"/>
<c:param name="C_address" value="${address}"/>
</c:url>
 <div class="profile">  
<a href="${customerUpdate}">
<input class="button1" type="button" name="update" value="         Edit profile         ">
</a>


<c:url value="customerDelete.jsp" var="customerDelete">
<c:param name="C_cid" value="${cusID}"/>
<c:param name="C_fname" value="${fname}"/>
<c:param name="C_lname" value="${lname}"/>
<c:param name="C_email" value="${email}"/>
<c:param name="C_contactNo" value="${contact}"/>
<c:param name="C_address" value="${address}"/>
</c:url>

<a href="${customerDelete}">
<input class="button2" type="button" name="delete" value="     Delete Account     ">
</a>
</div>
</div>


<!-- <hr>  -->

<h1>Purchased Items</h1>
<div class="container">
<div class="dropdown">
	<span><h2>Item 1 </h2></span>
	<div class="dropdown-content">
	<p>  Item details<br>
	      orem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies.
	      consectetuy.
	        <br><br>
	        <input class="button2" type="button" name="delete" value="Delete">
         </p>
        
		 </div>
		 </div>
</div>


<div class="container">
<div class="dropdown">
	<span><h2>Item 2 </h2></span>
	<div class="dropdown-content">
	<p>  Item details<br>
	      orem ipsum dolor sit amet, consectetuer adipiscing elit. Maecenas porttitor congue massa. Fusce posuere, magna sed pulvinar ultricies.
	      consectetuy.
	        <br><br>
	        <input class="button2" type="button" name="delete" value="Delete">
         </p>
        
		 </div>
		 </div>
</div>
<jsp:include page="footer.jsp" />
</body>
</html>