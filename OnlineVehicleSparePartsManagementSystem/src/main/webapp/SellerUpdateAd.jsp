<%@page import="com.ovspms.item.ItemDBUtil"%>
<%@page import="org.apache.jasper.tagplugins.jstl.core.ForEach"%>
<%@page import="com.ovspms.item.Item"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
 * IT21260988
 * Randeniya R. A. D. S. E
 -->
<%
if (session.getAttribute("sellerID") == null) {
	response.sendRedirect("sellerLogin.jsp");
}
%>


<%
ItemDBUtil pd = new ItemDBUtil();
List<Item> products = pd.getAllProduct();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Update Ads</title>
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


	<div class="flex justify-center items-center mt-24">


		<%
		if (!products.isEmpty()) {
			for (Item p : products) {
				if (p.getItemID() == Integer.parseInt(request.getParameter("itemID"))) {
		%>
		<%=p.getMainItemImage()%>
		<form action="UpdateAd" method="post" enctype="multipart/form-data"
			enctype="multipart/form-data"
			class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
			<input type="hidden" id="itemID" name="itemID"
				value="${param['itemID']}">
			<div class="flex flex-col">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Title</label>
				<input type="text" name="title" placeholder="Title"
					required="required" value="<%=p.getTitle()%>"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline ">
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
					required="required" value="<%=p.getCategory()%>"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Description</label>
				<textarea rows="" cols="" name="description"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					<%=p.getDescription()%>
				</textarea>

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Model</label>
				<input type="text" name="model" placeholder="Model"
					value="<%=p.getModel()%>" required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Quantity</label>
				<input type="text" name="quantity" placeholder="Quantity"
					value="<%=p.getQuantity()%>" required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Price</label>
				<input type="text" name="price" placeholder="Price"
					value="<%=p.getPrice()%>" required="required"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">




				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Main
					Item Image</label> <input type="file" name="mainItemImage"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Sub
					Item Image 1</label> <input type="file" name="subItemImage1"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Sub
					Item Image 2</label> <input type="file" name="subItemImage2"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Sub
					Item Image 3</label> <input type="file" name="subItemImage3"
					class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">


				<input type="submit" value="Update Ad"
					class="bg-[#006092] hover:bg-[#1FC4DA] mt-4 text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">

			</div>
		</form>

		<%
		}
		}
		}
		%>


	</div>
	<jsp:include page="footer.jsp" />
</body>

</html>