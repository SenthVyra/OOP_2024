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
<title>Sign in</title>
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


	<div class="flex flex-row justify-evenly p-6 mt-8 mb-8">
		<div class="flex justify-center p-6">
			<div class="rounded-lg shadow-lg bg-white w-96">
				<div class="text-center mt-4">
					<i class="fa-solid fa-cart-shopping text-9xl"></i>

				</div>
				<div class="p-6">
					<h5 class="text-gray-900 text-xl font-medium mb-4 mt-2 text-center">
						Buy Spare Parts</h5>

					<div class="text-center">
						<a href="login.jsp" target="_blank">
							<button type="button"
							class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">Sign
							in Here</button>
						</a>

					</div>
				</div>
			</div>
		</div>

		<div class="flex justify-center p-6">
			<div class="rounded-lg shadow-lg bg-white w-96">
				<div class="text-center mt-4">
					<i class="fa-solid fa-store text-9xl"></i>
				</div>
				<div class="p-6">
					<h5 class="text-gray-900 text-xl font-medium mb-4 mt-2 text-center">
						Sell Spare Parts</h5>

					<div class="text-center">
						<a href="sellerLogin.jsp" target="_blank">
							<button type="button"
							class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">Sign
							in Here</button>
						</a>

					</div>
				</div>
			</div>
		</div>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>