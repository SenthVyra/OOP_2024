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
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="navAndFooter.css" />
<title>Post Ads</title>
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
</head>
<body class="bg-[#0f172e]">
	<jsp:include page="navbar.jsp" />
	<div>
		<p class="text-center text-3xl text-white mt-24">Update Seller
			Details</p>
	</div>

	<div class="flex justify-center items-center mt-12">


		<form action="PostAd" method="post" enctype="multipart/form-data"
			enctype="multipart/form-data"
			class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
			<div class="flex flex-col">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Title</label>
				<input type="text" name="title" placeholder="Title"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Status
				</label>


				<div class="flex">
					<div>
						<input type="radio" id="active" value="Active" name="status">
						<label for="active">Active</label>
					</div>

					<div class="ml-8">
						<input type="radio" id="inactive" value="Inactive" name="status">
						<label for="inactive">Inactive</label>
					</div>
				</div>



				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Category</label>
				<input type="text" name="category" placeholder="Category"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Description</label>
				<textarea rows="" cols="" name="description"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"></textarea>

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Model</label>
				<input type="text" name="model" placeholder="Model"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Quantity</label>
				<input type="text" name="quantity" placeholder="Quantity"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Price</label>
				<input type="text" name="price" placeholder="Price"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">




				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Main
					Item Image</label> <input type="file" name="mainItemImage"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Sub
					Item Image 1</label> <input type="file" name="subItemImage1"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Sub
					Item Image 2</label> <input type="file" name="subItemImage2"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Sub
					Item Image 3</label> <input type="file" name="subItemImage3"
					required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">


				<input type="submit" value="Post Ad"
					class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none cursor-pointer mt-12 focus:shadow-outline transition duration-150 ease-in-out">

			</div>
		</form>



	</div>

	<div class="text-center mt-12 mb-12">
		<form action="viewAds" method="post">
			<input type="submit" value="View Your Posted Ads"
				class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">

		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>