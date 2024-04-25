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
<!--Links For Mapbox-->
<link href="https://api.mapbox.com/mapbox-gl-js/v2.8.2/mapbox-gl.css"
	rel="stylesheet" />
<script src="https://api.mapbox.com/mapbox-gl-js/v2.8.2/mapbox-gl.js"></script>
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
<title>Insert title here</title>
<style type="text/css">

/*---body---*/
body {
	background-color: #0f172e;
	color: white;
	margin: 0;
	padding: 0;
	font-family: "Roboto", sans-serif;
}

a {
	text-decoration: none;
}

/*---description---*/
.description {
	/* margin-bottom: 50px; */
	text-align: center;
	/* padding: 50px; */
	/* box-shadow: #00000033 0px 20px 27px -5px, #00000030 0px 13px 16px -8px; */
}

.page-name {
	font-size: 50px;
	margin-top: 50px;
}

.text {
	font-size: 20px;
}

/*---map---*/
#map {
	width: 100%;
	height: 500px;
}

/*divider*/
.divider {
	width: 90%;
	height: 40px;
	border-bottom: 4px solid #1FC4DA;
	margin: auto;
	margin-top: 50px;
	margin-bottom: 80px;
	box-shadow: #00000033 0px 20px 27px -5px, #00000030 0px 13px 16px -8px;
}

/*---Contact Details---*/
.contact-details {
	margin-top: 100px;
	text-align: center;
	display: grid;
	grid-template-columns: repeat(3, 1fr);
	padding-bottom: 50px;
	margin-bottom: 100px;
	box-shadow: #00000033 0px 20px 27px -5px, #00000030 0px 13px 16px -8px;
}

.phone, .address, .email {
	align-self: center;
	justify-self: center;
	transition: 0.5s ease;
}

.phone:hover, .address:hover, .email:hover {
	transform: translateY(-20px);
}

.phone i, .address i, .email i {
	font-size: 30px;
	color: #1FC4DA;
}

.phone p, .address p, .email p {
	font-size: 18px;
}

/*--- Responsive Styling---*/
@media screen and (max-width: 950px) {
	.phone i, .address i, .email i, h2 {
		font-size: 20px;
	}
	.phone p, .address p, .email p {
		font-size: 14px;
	}
	.page-name {
		font-size: 30px;
	}
	.text {
		font-size: 18px;
	}
}

@media screen and (max-width: 670px) {
	#map {
		height: 300px;
	}
}

@media screen and (max-width: 520px) {
	.phone i, .address i, .email i, h2 {
		font-size: 16px;
	}
	.phone p, .address p, .email p {
		font-size: 12px;
	}
}

@media screen and (max-width: 460px) {
	.contact-details {
		display: flex;
		flex-direction: column;
		align-items: center;
		justify-content: center;
	}
	.phone, .address, .email {
		margin: 20px;
	}
	.phone i, .address i, .email i, h2 {
		font-size: 24px;
	}
	.phone p, .address p, .email p {
		font-size: 16px;
	}
}
</style>
</head>
<body>
	<jsp:include page="navbar.jsp" />
	<!--Description-->
	<div class="description">
		<h1 class="page-name">CONTACT US</h1>
		<p class="text">
			Email us with any questions or inquiries or call us. We would be
			happy to <br /> answer your questions.
		</p>
	</div>
	<div class="divider"></div>
	<!-------Map - Code is taken from Mapbox-------->
	<div id="map">
		<script>
			mapboxgl.accessToken = "pk.eyJ1IjoicmFkc2VyLTIwMDEiLCJhIjoiY2wyN2RhN2liMDYzZjNqcm1nYjMycGtxMyJ9.R9yOb9tNiD6AHKyqs1bx_g";
			const map = new mapboxgl.Map({
				container : "map", // container ID
				style : "mapbox://styles/mapbox/streets-v11", // style URL
				center : [ 79.9729, 6.9147 ], // starting position [lng, lat]
				zoom : 18, // starting zoom
			});
		</script>
	</div>
	<!------------------------------------------->

	<!--Divider-->
	<div class="divider"></div>

	<!--Contact Details-->
	<div class="contact-details">
		<div class="phone">
			<i class="fa-solid fa-phone"></i>
			<h2>Phone</h2>
			<p>+94 7788976</p>
		</div>
		<div class="address">
			<i class="fa-solid fa-location-arrow"></i>
			<h2>Address</h2>
			<p>SLIIT Malabe Campus, New Kandy Rd, Malabe</p>
		</div>
		<div class="email">
			<i class="fa-solid fa-envelope"></i>
			<h2>Email</h2>
			<p>sparemart@gmail.com</p>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</body>
</html>