<!-- 
 * IT21260988
 * Randeniya R. A. D. S. E
 -->
<!--Header-->
<header class="header">
	<div class="header__top">
		<div class="header__top-logo">
			<a href="#"><img src="images/logo.jpeg" alt="logo" /></a>
		</div>

		<div class="header__top-user">
		<!-- make the cart icon visible only if the user is logged in ??? -->
			<a href='Cart.jsp'><i class="fa-solid fa-cart-shopping"></i><span class="badge badge-danger">${ cart_list.size() }</span></a>
			
			<%if (session.getAttribute("sellerID") == null && session.getAttribute("cusID") == null){ %>
			<a href='commonLogin.jsp'><i class='fa fa-user'></i></a>
			<%} %>
			
			<%if (session.getAttribute("sellerID") != null  ){ %>
			<a href='sellerDashboard.jsp'><i class='fa fa-user'></i></a>
			<%} %>
			
			<%if (session.getAttribute("user") == "customer"  ){ %>
			<a href='customerDashboard.jsp'><i class='fa fa-user'></i></a>
			<%} %>
			
		</div>

		<div class="header__top-menuopen">
			<i class="fa-solid fa-bars"></i>
		</div>
	</div>

	<nav class="header__nav">
		<li><a href="index.jsp">Home</a></li>
		<li><a href="Product.jsp">Products</a></li>
		<li><a href="AboutUs.jsp">About Us</a></li>
		<li><a href="CustomerContact.jsp">Contact Us</a></li>
		<div class="header__nav-closemenu">
			<i class="fa-solid fa-xmark"></i>
		</div>
	</nav>
</header>