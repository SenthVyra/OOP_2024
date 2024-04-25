<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!-- 
 * IT21260988
 * Randeniya R. A. D. S. E
 -->
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Registration</title>
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
	<input type="hidden" id="status"
		value="<%=request.getAttribute("registrationStatus")%>">

	<div class="flex items-center justify-center mt-24">
		<div class="">
			<form action="sellerRegister" method="post"
				class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">

				<div class="flex flex-col">

					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Name</label>
					<div class="flex justify-evenly">

						<input type="text" name="fname" placeholder="first name"
							required="required"
							class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
						<input type="text" name="lname" placeholder="last name"
							required="required"
							class="shadow ml-2 appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					</div>
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Email</label>
					<input type="email" name="email" placeholder="email"
						required="required"
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Contact
						Number</label> <input type="tel" name="contactNo"
						placeholder="contact number"
						pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Address</label>
					<input type="text" name="address" placeholder="address"
						required="required"
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Password</label>
					<input type="password" name="password" id="password"
						placeholder="password" onkeyup="validate()" required="required"
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Confirm
						Password</label> <input type="password" id="confirmPassword"
						name="confirmPassword" onkeyup="validate()" required="required"
						placeholder="confirmPassword"
						class="shadow appearance-none border rounded w-full py-2 px-3 mb-4 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<div class="flex flex-col items-center ">

						<input type="submit" value="Register"
							class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
						<div>
							<p class="mt-4">
								Already Registered? <a
									class="inline-block align-baseline font-bold text-sm text-[#006092] hover:text-[#1FC4DA] mt-4"
									href="sellerLogin.jsp"> Log in </a>
							</p>

						</div>

					</div>
				</div>
			</form>
		</div>
	</div>

	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

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

		var status = document.getElementById("status").value;
		if (status == "failed") {
			Swal.fire({
				icon : 'error',
				title : 'Incorrect Username/Password',
				text : 'Please Try Again...',

			})
		}
	</script>
	<jsp:include page="footer.jsp" />
</body>
</html>