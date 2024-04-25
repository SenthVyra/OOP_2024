<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Tool Store</title>
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
<style type="text/css">
* {
	font-family: 'Roboto', sans-serif;
	padding: 0;
	margin: 0;
}
</style>

</head>

<body>
	<jsp:include page="navbar.jsp" />
	<section id="center" class="clearfix center_home">
		<div class="container">
			<div class="row">
				<div class="center_home_1 clearfix">
					<div id="carousel-example" class="carousel slide hidden-xs"
						data-ride="carousel">
						<!-- Wrapper for slides -->
						<div class="carousel-inner">
							<div class="item active">
								<div class="col-sm-6">
									<div class="center_home_l clearfix">
										<h4 class="mgt">World Best Quality</h4>
										<h1>All weather tyres</h1>
										<hr />
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea commodo
											consequat. Duis aute irure dolor in reprehenderit in sed quia
											non numquam eius modi tempora incidunt ut labore et dolore
											magnam aliquam quaerat voluptatem.</p>
										<h5 class="normal">
											<a class="button" href="#">Shop Now</a>
										</h5>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="center_home_r clearfix">
										<img src="itemImages/Tyres1.png" height=500x width=300px
											class="iw" alt="abc" />
									</div>
								</div>
							</div>
							<div class="item">
								<div class="col-sm-6">
									<div class="center_home_l clearfix">
										<h4 class="mgt">World Best Quality</h4>
										<h1>CAR BATTERY FOR AUTO</h1>
										<hr />
										<p>Lorem ipsum dolor sit amet, consectetur adipisicing
											elit, sed do eiusmod tempor incididunt ut labore et dolore
											magna aliqua. Ut enim ad minim veniam, quis nostrud
											exercitation ullamco laboris nisi ut aliquip ex ea commodo
											consequat. Duis aute irure dolor in reprehenderit in sed quia
											non numquam eius modi tempora incidunt ut labore et dolore
											magnam aliquam quaerat voluptatem.</p>
										<h5 class="normal">
											<a class="button" href="#">Shop Now</a>
										</h5>
									</div>
								</div>
								<div class="col-sm-6">
									<div class="center_home_r clearfix">
										<img src="itemImages/Battery.png" class="iw" alt="abc" />
									</div>
								</div>
							</div>
						</div>
					</div>
					<div class="sell_1 clearfix">
						<div class="col-sm-12">
							<!-- Controls -->
							<div class="controls text-center">
								<a class="left fa fa-chevron-left btn btn-success"
									href="#carousel-example" data-slide="prev"></a><a
									class="right fa fa-chevron-right btn btn-success"
									href="#carousel-example" data-slide="next"></a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="Categ">
		<div class="container">
			<div class="row">
				<div class="Categ_1 clearfix">
					<div class="col-sm-12">
						<h3 class="mgt">Popular Categories</h3>
						<hr />
					</div>
				</div>
				<div class="Categ_2 clearfix">
					<div class="col-sm-3">
						<div class="Categ_2i clearfix">
							<a href="#"><img src="itemImages/body1.jpg" height=100px
								width=100px alt="body" /></a>
							<h4 class="mgt">
								<a href="#">Body</a>
							</h4>
							<h6>(10 Items)</h6>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="Categ_2i clearfix">
							<a href="#"><img src="itemImages/engine.jpg" height=100px
								width=100px alt="engine" /></a>
							<h4 class="mgt">
								<a href="#">Engine</a>
							</h4>
							<h6>(12 Items)</h6>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="Categ_2i clearfix">
							<a href="#"><img src="itemImages/brake2.jpg" height=100px
								width=100px alt="brake" /></a>
							<h4 class="mgt">
								<a href="#">Brake System</a>
							</h4>
							<h6>(15 Items)</h6>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="Categ_2i clearfix">
							<a href="#"><img src="itemImages/sensor1.jpg" height=100px
								width=100px alt="sensor" /></a>
							<h4 class="mgt">
								<a href="#">Sensors</a>
							</h4>
							<h6>(20 Items)</h6>
						</div>
					</div>
				</div>
				<div class="Categ_2 clearfix">
					<div class="col-sm-3">
						<div class="Categ_2i clearfix">
							<a href="#"><img src="itemImages/AC.jpeg" height=100px
								width=100px alt="AC" /></a>
							<h4 class="mgt">
								<a href="#">A/C</a>
							</h4>
							<h6>(30 Items)</h6>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="Categ_2i clearfix">
							<a href="#"><img src="itemImages/steering1.jpeg" height=100px
								width=100px alt="steering" /></a>
							<h4 class="mgt">
								<a href="#">Steering</a>
							</h4>
							<h6>(20 Items)</h6>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="Categ_2i clearfix">
							<a href="#"><img src="itemImages/battery3.png" height=100px
								width=100px alt="battery1" /></a>
							<h4 class="mgt">
								<a href="#">Car battery</a>
							</h4>
							<h6>(10 Items)</h6>
						</div>
					</div>
					<div class="col-sm-3">
						<div class="Categ_2i clearfix">
							<a href="#"><img src="itemImages/oil.png" height=100px
								width=100px alt="oil" /></a>
							<h4 class="mgt">
								<a href="#">Engine Oil</a>
							</h4>
							<h6>(25 Items)</h6>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<section id="sell">
		<div class="container">
			<div class="row">
				<div class="sell_1_o clearfix">
					<div class="col-sm-5 space_left sell_1_ol">
						<h2 class="mgt">New Arrivals</h2>
						<hr />
					</div>
					<div class="col-sm-7 space_left">
						<!-- Controls -->
						<div class="clearfix sell_1_or text-right">
							<ul class="nav_1_tab">
								<li class="active"><a data-toggle="tab" href="#home">NEW
								</a></li>
							</ul>
						</div>
					</div>
				</div>
				<div class="tab-content clearfix">
					<div id="home" class="tab-pane fade clearfix active in">
						<div class="click clearfix">
							<div class="sell_o_1 clearfix">
								<div class="col-sm-3 space_left">
									<div class="arriv_2m clearfix">
										<div class="arriv_2m1 clearfix">
											<a href="#"><img src="itemImages/engS.png" height="280px"
												width="280px" alt="engS" class="iw" /></a>
										</div>
										<div class="arriv_2m2 clearfix">
											<h5 class="text-center mgt">New</h5>
										</div>

										<div class="arriv_2m3 clearfix">
											<h4 class="bold mgt">Engine Starter</h4>
											<p>
												<a href="#">Naminos elementum disus tincidunts cosmo de
													cosmopolis</a>

											</p>
											<span class="span_1"> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
											</span>
											<h3 class="normal">
												<span class="span_3 col_1"> Rs.3400.00</span>
											</h3>
										</div>
									</div>
								</div>
								<div class="col-sm-3 space_left">
									<div class="arriv_2m clearfix">
										<div class="arriv_2m1 clearfix">
											<a href="#"><img src="itemImages/shockAbsorber.png"
												height="280px" width="280px" alt="shockA" class="iw" /></a>
										</div>
										<div class="arriv_2m2 clearfix">
											<h5 class="text-center mgt">New</h5>
										</div>

										<div class="arriv_2m3 clearfix">
											<h4 class="bold mgt">Shock Absorber</h4>
											<p>
												<a href="#">Naminos elementum disus tincidunts cosmo de
													cosmopolis</a>
											</p>
											<span class="span_1"> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
											</span>
											<h3 class="normal">
												<span class="span_3 col_1"> Rs.5000.00</span>
											</h3>
										</div>
									</div>
								</div>
								<div class="col-sm-3 space_left">
									<div class="arriv_2m clearfix">
										<div class="arriv_2m1 clearfix">
											<a href="#"><img src="itemImages/AirFilter.png"
												height="280px" width="280px" alt="Air Filter" class="iw" /></a>
										</div>
										<div class="arriv_2m2 clearfix">
											<h5 class="text-center mgt">New</h5>
										</div>

										<div class="arriv_2m3 clearfix">
											<h4 class="bold mgt">Air Filter</h4>
											<p>
												<a href="#">Naminos elementum disus tincidunts cosmo de
													cosmopolis</a>
											</p>
											<span class="span_1"> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
											</span>
											<h3 class="normal">
												<span class="span_3 col_1"> Rs.8000.00</span>
											</h3>
										</div>
									</div>
								</div>
								<div class="col-sm-3 space_left">
									<div class="arriv_2m clearfix">
										<div class="arriv_2m1 clearfix">
											<a href="#"><img src="itemImages/beltKit.png"
												height="280px" width="280px" alt="belt Kit" class="iw" /></a>
										</div>
										<div class="arriv_2m2 clearfix">
											<h5 class="text-center mgt">New</h5>
										</div>

										<div class="arriv_2m3 clearfix">
											<h4 class="bold mgt">Timing Belt Kit</h4>
											<p>
												<a href="#">Naminos elementum disus tincidunts cosmo de
													cosmopolis</a>
											</p>
											<span class="span_1"> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i> <i
												class="fa fa-star"></i> <i class="fa fa-star"></i>
											</span>
											<h3 class="normal">
												<span class="span_3 col_1"> Rs.6500.00</span>
											</h3>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="sell_n">
		<div class="container">
			<div class="row">
				<div class="sell_1_o clearfix">
					<div class="col-sm-5 space_left sell_1_ol">
						<h2 class="mgt">Hot Deals</h2>
						<hr />
					</div>
					<div class="col-sm-7 space_left">
						<!-- Controls -->
						<div class="clearfix sell_1_or text-right"></div>
					</div>
				</div>
				<div class="sell_o_1 clearfix">
					<div class="col-sm-3 space_left">
						<div class="arriv_2m clearfix">
							<div class="arriv_2m1 clearfix">
								<a href="#"><img src="itemImages/toolSet.png" height="280px"
									width="280px" alt="tool kit" class="iw" /></a>
							</div>
							<div class="arriv_2m2n clearfix">
								<h5 class="text-center mgt">Sale</h5>
							</div>
							<div class="arriv_2m3 clearfix">
								<h4 class="bold mgt">Tool Set</h4>
								<p>
									<a href="#">Naminos elementum disus tincidunts cosmo de
										cosmopolis</a>
								</p>
								<span class="span_1"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i>
								</span>
								<h3 class="normal">
									<span class="span_2">Rs.10 000.00</span> <span
										class="span_3 col_1"> Rs.6000.00</span>
								</h3>
							</div>
						</div>
					</div>
					<div class="col-sm-3 space_left">
						<div class="arriv_2m clearfix">
							<div class="arriv_2m1 clearfix">
								<a href="#"><img src="itemImages/Tyre3.png" height="280px"
									width="280px" alt="abc" class="iw" /></a>
							</div>

							<div class="arriv_2m2n clearfix">
								<h5 class="text-center mgt">Sale</h5>
							</div>
							<div class="arriv_2m3 clearfix">
								<h4 class="bold mgt">Hankok Winter Tyre</h4>
								<p>
									<a href="#">Naminos elementum disus tincidunts cosmo de
										cosmopolis</a>
								</p>
								<span class="span_1"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i>
								</span>
								<h3 class="normal">
									<span class="span_2">Rs. 25 000.00</span> <span
										class="span_3 col_1">Rs.18 500.00</span>
								</h3>
							</div>
						</div>
					</div>
					<div class="col-sm-3 space_left">
						<div class="arriv_2m clearfix">
							<div class="arriv_2m1 clearfix">
								<a href="#"><img src="itemImages/seatCover.png"
									height="280px" width="280px" alt="abc" class="iw" /></a>
							</div>

							<div class="arriv_2m2n clearfix">
								<h5 class="text-center mgt">Sale</h5>
							</div>
							<div class="arriv_2m3 clearfix">
								<h4 class="bold mgt">Seat Cover</h4>
								<p>
									<a href="#">Naminos elementum disus tincidunts cosmo de
										cosmopolis</a>
								</p>
								<span class="span_1"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i>
								</span>
								<h3 class="normal">
									<span class="span_2">Rs.9000.00</span> <span
										class="span_3 col_1"> Rs.7500.00</span>
								</h3>
							</div>
						</div>
					</div>
					<div class="col-sm-3 space_left">
						<div class="arriv_2m clearfix">
							<div class="arriv_2m1 clearfix">
								<a href="#"><img src="itemImages/headlights.png"
									height="280px" width="280px" alt="headlights" class="iw" /></a>
							</div>

							<div class="arriv_2m2n clearfix">
								<h5 class="text-center mgt">Sale</h5>
							</div>
							<div class="arriv_2m3 clearfix">
								<h4 class="bold mgt">Headlights</h4>
								<p>
									<a href="#">Naminos elementum disus tincidunts cosmo de
										cosmopolis</a>
								</p>
								<span class="span_1"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i>
								</span>
								<h3 class="normal">
									<span class="span_2">Rs.20 000.00</span> <span
										class="span_3 col_1"> Rs.12 500.00</span>
								</h3>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>



	<jsp:include page="footer.jsp" />


	<script>
		$(document)
				.ready(
						function() {
							/*****Fixed Menu******/
							var secondaryNav = $(".cd-secondary-nav"), secondaryNavTopPosition = secondaryNav
									.offset().top;
							$(window)
									.on(
											"scroll",
											function() {
												if ($(window).scrollTop() > secondaryNavTopPosition) {
													secondaryNav
															.addClass("is-fixed");
												} else {
													secondaryNav
															.removeClass("is-fixed");
												}
											});
						});
	</script>
</body>
</html>
