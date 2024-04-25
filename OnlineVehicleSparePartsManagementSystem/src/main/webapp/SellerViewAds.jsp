<%@page import="com.ovspms.item.Item"%>
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
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Seller Posted Ads</title>
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
	<div class="m-12">
		<div>
			<p class="text-center text-3xl text-white mt-24 mb-24">
				Number of Ads:
				<%=request.getAttribute("NumberOfItemsPosted")%></p>
		</div>

		<!-- 
		
			<div>
			<form action="" method="get">
				<input type="text" name="searchQuery" placeholder="Enter item title">
			</form>

		</div>
		 -->
		<c:if test="${PostedItems.isEmpty()}">
			<p class="text-white text-5xl text-center">no items posted yet</p>
		</c:if>
		<div class="grid grid-cols-3 gap-4">



			<c:forEach var="item" items="${PostedItems}">

				<div
					class="w-full max-w-sm bg-white rounded-lg shadow-md dark:bg-gray-800 dark:border-gray-700">


					<div class="grid grid-cols-2 gap-1 p-2">

						<img class="p-2 rounded-lg"
							src="itemImages/${item.getMainItemImage()}" alt="product image">
						<img class="p-2 rounded-lg"
							src="itemImages/${item.getSubItemImage1()}" alt="product image">
						<img class="p-2 rounded-lg"
							src="itemImages/${item.getSubItemImage2()}" alt="product image">
						<img class="p-2 rounded-lg"
							src="itemImages/${item.getSubItemImage3()}" alt="product image">
					</div>





					<div class="px-5 pb-5">

						<!-- 
				
					<div class="flex items-center mt-2.5 mb-5">
					<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
						fill="currentColor" viewBox="0 0 20 20"
						xmlns="http://www.w3.org/2000/svg">
						<title>First star</title><path
							d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
					<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
						fill="currentColor" viewBox="0 0 20 20"
						xmlns="http://www.w3.org/2000/svg">
						<title>Second star</title><path
							d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
					<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
						fill="currentColor" viewBox="0 0 20 20"
						xmlns="http://www.w3.org/2000/svg">
						<title>Third star</title><path
							d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
					<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
						fill="currentColor" viewBox="0 0 20 20"
						xmlns="http://www.w3.org/2000/svg">
						<title>Fourth star</title><path
							d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
					<svg aria-hidden="true" class="w-5 h-5 text-yellow-300"
						fill="currentColor" viewBox="0 0 20 20"
						xmlns="http://www.w3.org/2000/svg">
						<title>Fifth star</title><path
							d="M9.049 2.927c.3-.921 1.603-.921 1.902 0l1.07 3.292a1 1 0 00.95.69h3.462c.969 0 1.371 1.24.588 1.81l-2.8 2.034a1 1 0 00-.364 1.118l1.07 3.292c.3.921-.755 1.688-1.54 1.118l-2.8-2.034a1 1 0 00-1.175 0l-2.8 2.034c-.784.57-1.838-.197-1.539-1.118l1.07-3.292a1 1 0 00-.364-1.118L2.98 8.72c-.783-.57-.38-1.81.588-1.81h3.461a1 1 0 00.951-.69l1.07-3.292z"></path></svg>
					<span
						class="bg-blue-100 text-blue-800 text-xs font-semibold mr-2 px-2.5 py-0.5 rounded dark:bg-blue-200 dark:text-blue-800 ml-3">5.0</span>
				</div>
				
				 -->

						<div>
							<div
								class="flex flex-col justify-center items-center text-[#E9EBED] ">



								<p class="mb-3 font-normal capitalize ">
									<strong>title: </strong> ${item.getTitle()}

								</p>

								<p class="mb-3 font-normal capitalize ">
									<strong>status: </strong>${item.getStatus()}</p>


								<p class="mb-3 font-normal capitalize ">
									<strong>category: </strong>${item.getCategory()}</p>
								<p class="mb-3 font-normal capitalize ">
									<strong>description: </strong>${item.getDescription()}</p>
								<p class="mb-3 font-normal capitalize ">
									<strong>model:</strong> ${item.getModel() }
								<p>
								<p class="mb-3 font-normal capitalize ">
									<strong>quantity: </strong>${item.getQuantity()}</p>
								<p class="mb-3 font-normal capitalize ">
									<strong>price:</strong> ${item.getPrice()}0

								</p>
								<p class="mb-3 font-normal capitalize ">
									<strong>posted Date: </strong>${item.getPostedDate()}
								</p>
								<p class="mb-3 font-normal capitalize ">
									<strong>availability:</strong> ${item.getAvailability()}
								</p>




							</div>
						</div>

						<div
							class="flex flex-col lg:flex-row justify-between mt-4 items-center ">
							<a href="SellerUpdateAd.jsp?itemID=${item.getItemID()}"
								class="mt-4 bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline cursor-pointer transition duration-150 ease-in-out">Update
								Ad</a>
							<form action="DeleteAd" method="post">
								<input type="hidden" id="itemID" name="itemID"
									value="${item.getItemID()}"> <input type="submit"
									class="mt-4 bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline cursor-pointer transition duration-150 ease-in-out"
									value="Delete Item">
							</form>
						</div>
					</div>
				</div>

			</c:forEach>
		</div>
	</div>
	<jsp:include page="footer.jsp" />

</body>
</html>