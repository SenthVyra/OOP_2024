<%@page import="com.ovspms.company.Company"%>
<%@page import="com.ovspms.seller.Seller"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- 
 * IT21260988
 * Randeniya R. A. D. S. E
 -->
<%
if (session.getAttribute("sellerID") == null && session.getAttribute("company") == null) {
	response.sendRedirect("sellerLogin.jsp");
}

Company company = (Company) session.getAttribute("company");
String comapnyName = company.getName();
int numberOfPostedAds = 0;
if (request.getAttribute("NumberOfItemsPosted") != null) {
	numberOfPostedAds = (int) request.getAttribute("NumberOfItemsPosted");
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

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<link rel="stylesheet" href="navAndFooter.css" />
<script src="https://cdn.tailwindcss.com"></script>
<title>Seller Dashboard</title>
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
	<input type="hidden" id="itemDeleteStatus"
		value="<%=request.getAttribute("itemDeleteStatus")%>">

	<input type="hidden" id="itemDeleteStatus"
		value="<%=request.getAttribute("itemDeleteStatus")%>">

	<input type="hidden" id="companyUpdateStatus"
		value="<%=request.getAttribute("companyUpdateStatus")%>">

	<input type="hidden" id="updateProfileStatus"
		value="<%=request.getAttribute("updateProfileStatus")%>">

	<input type="hidden" id="itemPostStatus"
		value="<%=request.getAttribute("itemPostStatus")%>">

	<input type="hidden" id="itemUpdateStatus"
		value="<%=request.getAttribute("itemUpdateStatus")%>">

	<div class="m-12">

		<h1 class="text-center text-5xl mb-4 text-[white]">Seller
			Dashboard</h1>

		<div class="flex md:flex-row flex-col justify-center">
			<div
				class="flex flex-col items-center w-full mr-10 mt-12 pt-8  bg-[#006092] text-[#E9EBED] rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">
				<div class="flex justify-center">
					<img class="rounded-full"
						src="data:image/png;base64,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"
						alt="Seller Proile Picture">
				</div>
				<div class="p-5 ">
					<div class="flex flex-col justify-center text-xl ">
						<p class="mb-3 font-normal capitalize ">
							<strong>Name: </strong>
							<%=Seller.getFirstName()%>
							<%=Seller.getLastName()%></p>
						<p class="mb-3 font-normal ">
							<strong>Email: </strong>
							<%=Seller.getEmail()%></p>
						<p class="mb-3 font-normal capitalize ">
							<strong>Address: </strong><%=Seller.getAddress()%></p>
						<p class="mb-3 font-normal capitalize ">
							<strong>Contact Number: </strong><%=Seller.getContactNumber()%></p>
					</div>


					<div class="flex flex-col items-center">
						<div class="flex justify-between mt-12">
							<a href="UpdateSellerDetails.jsp"
								class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
								Update User Details </a>
						</div>
						<a href="sellerLogout"
							class="mt-4 bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
							LogOut </a>
					</div>
				</div>
			</div>

			<div
				class="flex flex-col items-center w-full ml-10 pt-8 mt-12 bg-[#006092] text-[#E9EBED] rounded-lg border border-gray-200 shadow-md dark:bg-gray-800 dark:border-gray-700">

				<%
				if (comapnyName != "Not entered") {
				%>
				<div class="flex justify-center">
					<img class="rounded-md object-fill h-48 w-96 "
						src="companyImages/<%=company.getLogo()%>" <%=company.getLogo()%>
						alt="Company Picture">
				</div>
				<div class="p-5">
					<div class="p-5">
						<div class="flex flex-col justify-center text-xl ">



							<p class="mb-3 font-normal capitalize ">
								<strong>Company Name: </strong>
								<%=company.getName()%>
							</p>
							<p class="mb-3 font-normal  ">
								<strong>Company Email: </strong>
								<%=company.getEmail()%></p>
							<p class="mb-3 font-normal capitalize ">
								<strong>Company Address: </strong><%=company.getAddress()%></p>
							<p class="mb-3 font-normal capitalize ">
								<strong>Company District: </strong><%=company.getDistrict()%></p>
							<p class="mb-3 font-normal capitalize ">
								<strong>Company City: </strong><%=company.getCity()%></p>
							<p class="mb-3 font-normal capitalize ">
								<strong>Company Contact Number: </strong><%=company.getContactNumber()%></p>



						</div>
						<%
						}
						%>




						<div class="flex items-center justify-center mt-4">
							<!-- TODO: disable add company details -->
							<%
							if (comapnyName == "Not entered") {
							%>
							<div class="text-center mt-48">
								<p class="mb-14 text-3xl ">Company Details Not Added Yet</p>
								<a href="companyRegistration.jsp" target="_blank"
									class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
									Add Company Details </a>
							</div>
							<%
							}
							%>
							<%
							if (comapnyName != "Not entered") {
							%>
							<a href="UpdateCompanyDetails.jsp" target="_blank"
								class="bg-[#006092] text-center hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
								Update Company Details </a>
							<%
							}
							%>



						</div>
					</div>
				</div>
			</div>



		</div>

		<div class="mt-12">
			<div class="flex flex-col items-center">


				<h1 class="text-white font-bold text-5xl mb-12 mt-12">Advertisements</h1>
				<div class="flex items-center justify-between">
					<div>
						<a href="PostAds.jsp"
							class=" mr-3 mt-12 bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">
							Post Ad </a>
					</div>

					<div>
						<form action="viewAds" method="post">
							<input type="submit" value="View Your Posted Ads"
								class="bg-[#006092] hover:bg-[#1FC4DA] text-white font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">

						</form>
					</div>
				</div>

			</div>
		</div>


	</div>

	<jsp:include page="footer.jsp" />
	<script src="//cdn.jsdelivr.net/npm/sweetalert2@11"></script>

	<script type="text/javascript">
		var status = document.getElementById("itemDeleteStatus").value;
		if (status == "success") {
			Swal.fire({
				icon : 'success',
				title : 'Item Deleted Successfully',
			//text : 'Please Try Again...',

			})

		}

		var status = document.getElementById("updateProfileStatus").value;
		if (status == "success") {
			Swal.fire({
				icon : 'success',
				title : 'Updated Profile Successfully',
			//text : 'Please Try Again...',

			})

		}

		var status = document.getElementById("companyUpdateStatus").value;
		if (status == "success") {
			Swal.fire({
				icon : 'success',
				title : 'Updated Company Successfully',
			//text : 'Please Try Again...',

			})

		}

		var status = document.getElementById("itemPostStatus").value;
		if (status == "success") {
			Swal.fire({
				icon : 'success',
				title : 'Posted Item Successfully',
			//text : 'Please Try Again...',

			})

		}

		var status = document.getElementById("itemUpdateStatus").value;
		if (status == "success") {
			Swal.fire({
				icon : 'success',
				title : 'Updated Item Successfully',
			//text : 'Please Try Again...',

			})

		}
		
		

		var status = document.getElementById("updateAPasswordStatus").value;
		if (status == "success") {
			Swal.fire({
				icon : 'success',
				title : 'Updated Password Successfully',
			//text : 'Please Try Again...',

			})

		}
	</script>
</body>
</html>