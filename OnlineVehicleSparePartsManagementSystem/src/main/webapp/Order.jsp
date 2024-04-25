<%@page import="java.text.DecimalFormat"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.ovspms.item.ItemDBUtil"%>
<%@page import="com.ovspms.DBConnection.DBConnection"%>
<%@page import="com.ovspms.customer.*"%>
<%@page import="com.ovspms.cart.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
List<Order> orders = null;
if (session.getAttribute("sellerID") == null && session.getAttribute("cusID") == null) {
	response.sendRedirect("commonLogin.jsp");
} else {
	int cusID = (int) session.getAttribute("cusID");
	orders = CartDBUtil.userOrders(cusID);
	
}
%>
<%
DecimalFormat dcf = new DecimalFormat("#.##");
request.setAttribute("dcf", dcf);

//ArrayList<Cart> cart = //(ArrayList<Cart>)session.getAttribute("cart-list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Orders Page</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/global.css" rel="stylesheet" />
<link href="css/index.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
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
<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<div class="container">
		<h3><div class="card-header my-3">All Orders</div></h3>
		<table class="table table-light">
			<thead>
				<tr>

					<th scope="col"><h4>Date</h4></th>
					<th scope="col">
						<h4>Name</h4>
					</th>
					<th scope="col"><h4>Category</h4></th>
					<th scope="col">
						<h4>Price</h4>
					</th>
					<th scope="col"><h4>Cancel</h4></th>
				</tr>
			</thead>
			<tbody>
				<%
				if (orders != null) {
					for (Order o : orders) {
				%>

				<tr>

				<td><%=o.getDate()%></td>
				<td><%=o.getTitle()%></td>
				<td><%=o.getCategory()%></td>
				<td><%=o.getPrice()%></td>
				<td>
					<a class="btn btn-sm btn-danger"
						href="cancel-order?id=<%=o.getOrderId()%>">Cancel</a>
				</td>





				<%
				}

				}
				%>
			</tbody>
		</table>
		<div class="center">
		<a class="btn btn-sm btn-danger"
						href="Billing.jsp">Got to Billing Page</a>
	</div>
	</div>
	
	<jsp:include page="footer.jsp" />
</body>
</html>