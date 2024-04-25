<%@page import="com.ovspms.seller.Seller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- 
 * IT21260988
 * Randeniya R. A. D. S. E
 -->
<%
if (session.getAttribute("sellerID") == null) {
	response.sendRedirect("sellerLogin.jsp");
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Seller Details</title>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400&display=swap"
	rel="stylesheet">
<script src="https://cdn.tailwindcss.com"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="navAndFooter.css" />
<style type="text/css">
* {
	font-family: 'Roboto', sans-serif;
}

h3 {
	font-weight: bold !important;
	font-size: 20px !important;
}
</style>
</head>
<body class="bg-[#0f172e]">
	<jsp:include page="navbar.jsp" />

	<div>
		<p class="text-center text-3xl text-white mt-24">Update Seller
			Details</p>
	</div>

	<div class="flex items-center justify-center mt-12">
		<div class="">
			<form action="updateSellerDetails" method="post"
				class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">

				<div class="flex flex-col">

					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Name</label>
					<div class="flex justify-evenly">

						<input type="text" name="fname" placeholder="first name"
							value="<%=Seller.getFirstName()%>" required="required"
							class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
						<input type="text" name="lname" placeholder="last name"
							value="<%=Seller.getLastName()%>" required="required"
							class="shadow ml-2 appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					</div>
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Email</label>
					<input type="email" name="email" placeholder="email"
						value="<%=Seller.getEmail()%>" required="required"
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Contact
						Number</label> <input type="tel" name="contactNo"
						pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"
						placeholder="contact number"
						value="<%=Seller.getContactNumber()%>" required="required"
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<label class="block text-gray-700 mb-3 text-sm font-bold mb-2 mt-2">Address</label>
					<input type="text" name="address" placeholder="address"
						value="<%=Seller.getAddress()%>" required="required"
						class="shadow appearance-none border mb-4 rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<div class="flex flex-col items-center ">

						<input type="submit" value="Update"
							class="bg-[#006092] hover:bg-[#1FC4DA] text-white cursor-pointer font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">

					</div>
				</div>
			</form>

			<div>
				<p class="text-center text-3xl text-white mt-24">Update Seller
					Password</p>
			</div>

			<form action="UpdateSellerPassword" method="POST"
				class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4 mt-12">

				<div class="flex flex-col">


					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">New
						Password</label> <input type="text" id="password" name="password"
						onkeyup="validate()" placeholder="New Password"
						required="required"
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Confirm
						New Password</label> <input type="text" id="confirmPassword"
						onkeyup="validate()" name="confirmPassword" required="required"
						placeholder="New Password"
						class="shadow appearance-none border rounded w-full py-2 px-3 mb-4 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<div class="flex flex-col items-center ">

						<input type="submit" value="Update"
							class="bg-[#006092] hover:bg-[#1FC4DA] text-white cursor-pointer font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
					</div>
				</div>
			</form>

			<div>
				<p class="text-center text-3xl text-white mt-24">Delete Seller
					Account</p>
			</div>

			<div class="text-center">
				<p class="text-[#ff2400] mt-12 mb-12">Are you sure you want to
					delete your account ? This action cannot be undone</p>
				<form action="sellerDeleteAccount" method="POST">
					<input type="submit" value="Delete Profile"
						class="bg-[#ff2400] text-[#E9EBED] cursor-pointer mb-24 font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline">
				</form>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		function validate() {
			const password = document.querySelector("#password");
			const confirmPassword = document.querySelector("#confirmPassword");
			//checking whether confirmPassword and password are equal before submitting
			if (password.value == confirmPassword.value) {
				//if equal change the border color of confirm password and password fields to green
				confirmPassword.style.border = "3px solid #72cc50";
				password.style.border = "3px solid #72cc50";
			} else {
				//if different change the border color of confirm password and password fields to red
				confirmPassword.style.border = "3px solid #b6142c";
				password.style.border = "3px solid #b6142c";
			}
		}
	</script>
	<jsp:include page="footer.jsp" />
</body>
</html>