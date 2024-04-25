<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />

<title>Contact Us Customer</title>

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
	<section id="center" class="clearfix center_shop">
		<div class="container">
			<div class="row">
				<div class="center_shop_1 clearfix">
					<div class="col-sm-6">
						<div class="center_shop_1l clearfix">
							<h3 class="mgt">Contact Us</h3>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="center_shop_1r text-right clearfix">
							<h5>
								<a class="col_2" href="#">Home</a> / <span>Contact Us</span>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="contact" class="clearfix">
		<div class="container">
			<div class="row">
				<div class="contact_1 clearfix">
					<div class="col-sm-8">
						<div class="contact_1lm clearfix">
							<div class="contact_1l clearfix">
								<h4 class="col_1 mgt">Get in touch</h4>
								<h3>Write Us A Message</h3>
							</div>
							<br />

							<form action="CusContactServlet" method="POST">
								<div class="checkout_1l1 clearfix">
									<div class="col-sm-6 space_left">
										<h5>
											Your Name <span class="col_3">*</span>
										</h5>
										<input class="form-control" required="required" type="text" name="name" />
									</div>
									<div class="col-sm-6 space_left">
										<h5>
											Your Subjects <span class="col_3">*</span>
										</h5>
										<input class="form-control" required="required" type="text" name="subject" />
									</div>
								</div>
								<div class="checkout_1l1 clearfix">
									<div class="col-sm-6 space_left">
										<h5>
											Your Email<span class="col_3">*</span>
										</h5>
										<input class="form-control" required="required" type="text" name="email" />
									</div>
									<div class="col-sm-6 space_left">
										<h5>
											Your Phone <span class="col_3">*</span>
										</h5>
										<input class="form-control" required="required" type="text" name="phone" />
									</div>
								</div>
								<div class="checkout_1l1 clearfix">
									<div class="col-sm-12 space_left">
										<h5>
											Your Message <span class="col_3">*</span>
										</h5>
										<textarea class="form-control form_1" name="msg"></textarea>
										<h6>
											<input type="submit" value="SEND MESSAGE" class="button">
										</h6>
									</div>
								</div>
						</div>
						</form>

					</div>
					<div class="col-sm-4">
						<div class="contact_1rm clearfix">
							<div class="contact_1r1 mgt clearfix">
								<span><i class="fa fa-phone"></i></span>
								<h4>Call us Now:</h4>
								<p>+123 456-789-0000</p>
								<p class="mgt">+123 456-789-0000</p>
							</div>
							<div class="contact_1r1 clearfix">
								<span><i class="fa fa-phone"></i></span>
								<h4>Email:</h4>
								<p>
									<a href="#">info@gmail.com</a>
								</p>
								<p class="mgt">info@gmail.com</p>
							</div>
							<div class="contact_1r1 clearfix">
								<span><i class="fa fa-phone"></i></span>
								<h4>Our Address:</h4>
								<p>LB-61/1, Travel Agency, 15 Grand</p>
								<p class="mgt">Central Terminal, London.</p>
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
