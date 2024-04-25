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
<title>Seller Login</title>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400&display=swap"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">

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
		value="<%=request.getAttribute("loginStatus")%>">

	<div class="flex items-center justify-center mt-32">
		<div class="w-full max-w-md ">
			<form action="sellerLogin" method="post"
				class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
				<div class="mb-4 mt-10">
					<label class="block text-gray-700 text-sm font-bold mb-2"
						for="email"> Email </label> <input
						class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
						id="email" type="email" placeholder="Email" name="email"
						required="required">
				</div>
				<div class="mb-6">
					<label class="block text-gray-700 text-sm font-bold mb-2"
						for="password"> Password </label> <input
						class="shadow appearance-none border border-red-500 rounded w-full py-2 px-3 text-gray-700 mb-3 leading-tight focus:outline-none focus:shadow-outline"
						id="password" type="password" placeholder="******************"
						name="password" required="required">
				</div>
				<div class="flex flex-col items-center justify-center">
					<input type="submit"
						class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out"
						value="Log in">
					<div>
						<p class="mt-4">
							Not Registered Yet? <a
								class="inline-block align-baseline font-bold text-sm text-[#006092] hover:text-[#1FC4DA] mt-4"
								href="sellerRegistration.jsp"> Register Now </a>
						</p>

					</div>
					
				</div>
			</form>

		</div>

	</div>


	<!-- 
	<form action="sellerLogin" method="post">

		<input type="email" name="email" placeholder="email"> <input
			type="text" name="password" placeholder="password"> <input
			type="submit" value="Login">
	</form>

 -->

	<jsp:include page="footer.jsp" />
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script type="text/javascript">
		var status = document.getElementById("status").value;
		if (status == "failed") {
			Swal.fire({
				icon : 'error',
				title : 'Incorrect Username/Password',
				text : 'Please Try Again...',

			})
		}
	</script>
</body>
</html>