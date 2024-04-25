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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400&display=swap"
	rel="stylesheet">
<script src="https://cdn.tailwindcss.com"></script>
<style type="text/css">
* {
	font-family: 'Roboto', sans-serif;
}

h3 {
	font-weight: bold !important;
	font-size: 20px !important;
}
</style>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="navAndFooter.css" />
<title>Register Your Company</title>
</head>
<body class="bg-[#0f172e]">
	<jsp:include page="navbar.jsp" />
	<div class="flex justify-center items-center mt-24">

		<form action="companyRegistration" method="post"
			enctype="multipart/form-data"
			class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
			<div class="flex flex-col">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Name</label>
				<input type="text" name="name" placeholder="name"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Company
					Contact Number</label> <input type="tel" name="contactNumber"
					required="required" placeholder="contact number"
					pattern="[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]"
					placeholder="contact number"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Company
					Email</label> <input type="email" name="email" placeholder="email"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Company
					Logo</label> <input type="file" name="comapnyLogo"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Company
					Address</label> <input type="text" name="address" placeholder="address"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<div class="flex mt-4">
					<input type="text" name="district" placeholder="district"
						class="mr-2 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<input type="text" name="city" placeholder="city"
						required="required"
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				</div>
				<input type="submit" value="Register Company"
					class="mt-4 bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline cursor-pointer transition duration-150 ease-in-out">

			</div>
		</form>

	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>