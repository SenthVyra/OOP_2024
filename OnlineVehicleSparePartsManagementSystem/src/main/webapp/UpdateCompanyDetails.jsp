F<%@page import="com.ovspms.company.CompanyDBUtil"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="com.ovspms.company.Company"%>
<!-- 
 * IT21260988
 * Randeniya R. A. D. S. E
 -->
<%
int sellerID = 0;
if (session.getAttribute("sellerID") == null) {
	response.sendRedirect("sellerLogin.jsp");
	
}else{
	sellerID = (int) session.getAttribute("sellerID");
}
%>
<%
CompanyDBUtil cm = new CompanyDBUtil();
Company company = cm.getCompanyInfo(sellerID);
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>UpdateCompanyDetails</title>
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
		<p class="text-center text-3xl text-white mt-24">Update Company
			Details</p>
	</div>
	<div class="flex justify-center items-center mt-24">
		<form action="updateCompany" method="post"
			enctype="multipart/form-data"
			class="bg-white shadow-md rounded px-8 pt-6 pb-8 mb-4">
			<div class="flex flex-col">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Name</label>
				<input type="text" name="name" placeholder="name" value="<%=company.getName() %>"
					required="required"
					class="mb-4 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Company
					Contact Number</label> <input type="text" name="contactNumber"
					placeholder="contact number" value="<%=company.getContactNumber() %>" required="required"
					class="mb-4 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Company
					Email</label> <input type="email" name="email" placeholder="email" value="<%=company.getEmail() %>"
					required="required"
					class="mb-4 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<label class="block text-gray-700 text-sm font-bold mb-2 mt-2">Company
					Logo</label> <input type="file" name="comapnyLogo" value="<%=company.getLogo() %>"
					class="mb-4 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline"
					required="required"> <label
					class="mb-4 block text-gray-700 text-sm font-bold mb-2 mt-2">Company
					Address</label> <input type="text" name="address" placeholder="address"
					value="<%=company.getAddress() %>" required="required"
					class="mb-4 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
				<div class="flex mt-4">
					<div class="mr-2">
						<label class="block text-gray-700 text-sm font-bold">District</label>
						<input type="text" name="district" placeholder="district" value="<%=company.getDistrict() %>"
							required="required"
							class="mb-4 shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">

					</div>
					<div>
						<label class="block text-gray-700 text-sm font-bold">City</label>
						<input type="text" name="city" placeholder="city" value="<%=company.getCity() %>"
							required="required"
							class="shadow appearance-none border rounded w-full py-2 px-3 text-gray-700 leading-tight focus:outline-none focus:shadow-outline">
					</div>
				</div>
				<input type="submit" value="Update Company"
					class="bg-[#006092] hover:bg-[#1FC4DA] mt-12 text-white cursor-pointer font-bold py-2 px-4 rounded focus:outline-none focus:shadow-outline transition duration-150 ease-in-out">

			</div>
		</form>
	</div>
	<jsp:include page="footer.jsp" />
</body>
</html>