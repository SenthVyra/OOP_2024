
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.ovspms.item.ItemDBUtil"%>
<%@page import="com.ovspms.item.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%
ItemDBUtil pd = new ItemDBUtil();
List<Item> products = pd.getAllProduct();
%>

<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="width=device-width, initial-scale=1" />
<title>Tool Store</title>
<link href="css/bootstrap.min.css" rel="stylesheet" />
<link href="css/global.css" rel="stylesheet" />
<link href="css/detail.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+2&display=swap"
	rel="stylesheet" />
<script src="js/jquery-2.1.1.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<link rel="stylesheet" href="navAndFooter.css" />
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
	integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
</head>

<body>
<jsp:include page="navbar.jsp" />
	<section id="center" class="clearfix center_shop">
		<div class="container">
			<div class="row">
				<div class="center_shop_1 clearfix">
					<div class="col-sm-6">
						<div class="center_shop_1l clearfix">
							<h3 class="mgt">Product Details</h3>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="center_shop_1r text-right clearfix">
							<h5>
								<a class="col_2" href="#">Home</a> / <a class="col_2" href="#">Shop</a>
								/ <span>Product Details</span>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>


	<%
	if (!products.isEmpty()) {
		for (Item p : products) {
			if (p.getItemID() == Integer.parseInt(request.getParameter("itemID"))) {
	%>
	<section id="shop_detail">
		<div class="container">
			<div class="row">
				<div class="shop_detail_1 clearfix">
					<div class="col-sm-6">
						<div class="center_detail_2_left clearfix">
							<div class="carousel slide article-slide"
								id="article-photo-carousel">
								<!-- Wrapper for slides -->
								<div class="carousel-inner cont-slider">
									<div class="item active">
										<div class="mag">
											<div class="magnify">
												<div class="magnify">
													<img data-toggle="magnify"
														src="itemImages/<%=p.getMainItemImage()%>" alt="" />
													<div class="magnify-large"
														style="background: url('img/53.jpg') no-repeat"></div>
												</div>
												<div class="magnify-large"></div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="mag">
											<div class="magnify">
												<div class="magnify">
													<img data-toggle="magnify" src="itemImages/<%=p.getSubItemImage1()%>" alt="" />
													<div class="magnify-large"
														style="background: url('img/54.jpg') no-repeat"></div>
												</div>
												<div class="magnify-large"></div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="mag">
											<div class="magnify">
												<div class="magnify">
													<img data-toggle="magnify" src="itemImages/<%=p.getSubItemImage2()%>" alt="" />
													<div class="magnify-large"
														style="background: url('img/55.jpg') no-repeat"></div>
												</div>
												<div class="magnify-large"></div>
											</div>
										</div>
									</div>
									<div class="item">
										<div class="mag">
											<div class="magnify">
												<div class="magnify">
													<img data-toggle="magnify" src="itemImages/<%=p.getSubItemImage3()%>" alt="" />
													<div class="magnify-large"
														style="background: url('img/56.jpg') -101px -21px no-repeat; display: block; left: 17px; top: -27.5px; opacity: 0;"></div>
												</div>
												<div class="magnify-large"></div>
											</div>
										</div>
									</div>
								</div>
								<!-- Indicators -->
								<ol class="carousel-indicators">
									<li class="active" data-slide-to="0"
										data-target="#article-photo-carousel">
										<img alt="" src="itemImages/<%=p.getMainItemImage()%>" />
									</li>
									<li class="" data-slide-to="1"
										data-target="#article-photo-carousel">
										<img alt="" src="itemImages/<%=p.getSubItemImage1()%>" />
									</li>
									<li class="" data-slide-to="2"
										data-target="#article-photo-carousel">
										<img alt="" src="itemImages/<%=p.getSubItemImage2()%>" />
									</li>
									<li class="" data-slide-to="3"
										data-target="#article-photo-carousel">
										<img alt="" src="itemImages/<%=p.getSubItemImage3()%>" />
									</li>
								</ol>
							</div>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="center_detail_2_right clearfix">
							<h3 class="mgt"><%=p.getTitle()%></h3>
							<h5 class="col_1">
								<i class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star-o"></i> <a href="#">( 3 user review )</a>
							</h5>
							<h4>
								 <span class="span_2 col_1">RS.<%=p.getPrice()%></span>
							<br><br>
							 Status      :  <%=p.getStatus()%>
							 <br><br>
							 Category    :  <%=p.getCategory()%>
							 <br><br>
							 Model       :  <%=p.getModel()%>
							 <br><br>  
							 Posted Date :  <%=p.getPostedDate()%>
						 </h4>
							<hr />
							
							<h5>Quantity:</h5>
							<div class="input-group number-spinner">
								<span class="input-group-btn">
									<button class="btn btn-default" data-dir="dwn">
										<span class="glyphicon glyphicon-minus"></span>
									</button>
								</span> <input type="text" class="form-control text-center" value="1" />
								<span class="input-group-btn">
									<button class="btn btn-default" data-dir="up">
										<span class="glyphicon glyphicon-plus"></span>
									</button>
								</span>
							</div>
							<div class="pd_n1 clearfix">
								<h4>
									<a class="button" href="#">ADD TO CART</a>
								</h4>
								<h4>
									<a class="button_1" href="#"> ADD TO WISHLIST</a>
								</h4>
							</div>
							<ul class="social-network social-circle">
								<li><a href="#" class="icoRss" title="Rss"><i
										class="fa fa-rss"></i></a></li>
								<li><a href="#" class="icoFacebook" title="Facebook"><i
										class="fa fa-facebook"></i></a></li>
								<li><a href="#" class="icoTwitter" title="Twitter"><i
										class="fa fa-twitter"></i></a></li>
								<li><a href="#" class="icoGoogle" title="Google +"><i
										class="fa fa-google-plus"></i></a></li>
								<li><a href="#" class="icoLinkedin" title="Linkedin"><i
										class="fa fa-linkedin"></i></a></li>
							</ul>
						</div>
					</div>
				</div>
				<br><br><br><br><br><br><br>
				<div class="product_detail_1 clearfix">
					<ul class="nav nav-tabs tab_1">
						<li class="active"><a data-toggle="tab" href="#home"><i
								class="fa fa-globe"></i> Description</a></li>
						<li class=""><a data-toggle="tab" href="#menu1"><i
								class="fa fa-photo"></i> Additional Information</a></li>
						
					</ul>
					<div class="tab-content clearfix">
						<div id="home" class="tab-pane fade clearfix active in">
							<div class="click clearfix">
								<div class="col-sm-12">
									<div class="home_i">
										<p class="mgt"> <%=p.getDescription()%>
										     Web design lorem ipsum dolor sit amet,
											consectetuer adipiscing elit.</p>
										<p>Suspendisse et justo. Praesent mattis commyolk augue
											Aliquam ornare hendrerit augue Cras tellus In pulvinar lectus
											a est Curabitur eget orci Cras laoreet. Lorem ipsum dolor sit
											amet, consectetuer adipiscing elit. Suspendisse et justo.
											Praesent mattis commyolk augue aliquam ornare augue.</p>
										<p>"But I must explain to you how all this mistaken idea
											of denouncing pleasure and praising pain was born and I will
											give you a complete account of the system, and expound the
											actual teachings of the great explorer of the truth, the
											master-builder of human happiness. No one rejects, dislikes,
											or avoids pleasure itself, because it is pleasure, but
											because those who do not know how to pursue pleasure
											rationally encounter consequences that are extremely painful.
											Nor again is there anyone who loves or pursues or desires to
											obtain pain of itself, because it is pain, but because
											occasionally circumstances occur in which toil and pain can
											procure him some great pleasure. To take a trivial example,
											which of us ever undertakes laborious physical exercise,
											except to obtain some advantage from it? But who has any
											right to find fault with a man who chooses to enjoy a
											pleasure that has no annoying consequences, or one who avoids
											a pain that produces no resultant pleasure?"</p>
										<ul>
											<li>"But I must explain to you how all this mistaken
												idea of denouncing pleasure and praising pain was born and I
												will give you a complete account of the system, and</li>
											<li>Lorem Ipsum is simply dummy text of the printing and
												typesetting industry. Lorem Ipsum has been the industry's
												standard dummy text ever since the 1500s, when an unknown
												printer took a galley of type and scrambled it to make a
												type specimen book.</li>
											<li>t is a long established fact that a reader will be
												distracted by the readable content of a page when looking at
												its layout. The point of using Lorem Ipsum is that it has a
												more-or-less normal distribution of letters, as opposed to
												using 'Content here, content here'</li>
											<li>Lorem Ipsum has been the industry's standard dummy
												text ever since the 1500s, when an unknown printer took a
												galley of type and scrambled it to make a type specimen
												book.</li>
											<li>Dorem ipsum dolor sit amet</li>
										</ul>
									</div>
								</div>
							</div>
						</div>
						<div id="menu1" class="tab-pane fade clearfix">
							<div class="click clearfix">
								<div class="col-sm-12">
									<div class="menu_i clearfix">
										<table>
											<tbody>
												<tr>
													<td>Pricing</td>
													<td>RS.<%=p.getPrice()%></td>
												</tr>
												<tr>
													<td>Stock Availability</td>
													<td><%=p.getAvailability()%></td>
												</tr>
												<tr>
													<td>Rating</td>
													<td><span> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i> <i
															class="fa fa-star"></i> <i class="fa fa-star"></i>
													</span></td>
												</tr>
											</tbody>
										</table>
									</div>
								</div>
							</div>
						</div>
						
											<div class="col-sm-6">
												<div class="grid clearfix">
													<figure class="effect-jazz">
														<a href="#"><img
															src="itemImages/<%=p.getMainItemImage()%>" height="400" class="iw" alt="img25" /></a>
													</figure>
												</div>
											</div>
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

	<%
	}
	}
	}
	%>

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

	<script>
		/*
		Credits:
		https://github.com/marcaube/bootstrap-magnify
		 */

		!(function($) {
			"use strict"; // jshint ;_;

			/* MAGNIFY PUBLIC CLASS DEFINITION
			 * =============================== */

			var Magnify = function(element, options) {
				this.init("magnify", element, options);
			};

			Magnify.prototype = {
				constructor : Magnify,

				init : function(type, element, options) {
					var event = "mousemove", eventOut = "mouseleave";

					this.type = type;
					this.$element = $(element);
					this.options = this.getOptions(options);
					this.nativeWidth = 0;
					this.nativeHeight = 0;

					this.$element.wrap('<div class="magnify" \>');
					this.$element.parent(".magnify").append(
							'<div class="magnify-large" \>');
					this.$element.siblings(".magnify-large").css(
							"background",
							"url('" + this.$element.attr("src")
									+ "') no-repeat");

					this.$element.parent(".magnify").on(
							event + "." + this.type, $.proxy(this.check, this));
					this.$element.parent(".magnify").on(
							eventOut + "." + this.type,
							$.proxy(this.check, this));
				},

				getOptions : function(options) {
					options = $.extend({}, $.fn[this.type].defaults, options,
							this.$element.data());

					if (options.delay && typeof options.delay == "number") {
						options.delay = {
							show : options.delay,
							hide : options.delay,
						};
					}

					return options;
				},

				check : function(e) {
					var container = $(e.currentTarget);
					var self = container.children("img");
					var mag = container.children(".magnify-large");

					// Get the native dimensions of the image
					if (!this.nativeWidth && !this.nativeHeight) {
						var image = new Image();
						image.src = self.attr("src");

						this.nativeWidth = image.width;
						this.nativeHeight = image.height;
					} else {
						var magnifyOffset = container.offset();
						var mx = e.pageX - magnifyOffset.left;
						var my = e.pageY - magnifyOffset.top;

						if (mx < container.width() && my < container.height()
								&& mx > 0 && my > 0) {
							mag.fadeIn(100);
						} else {
							mag.fadeOut(100);
						}

						if (mag.is(":visible")) {
							var rx = Math.round((mx / container.width())
									* this.nativeWidth - mag.width() / 2)
									* -1;
							var ry = Math.round((my / container.height())
									* this.nativeHeight - mag.height() / 2)
									* -1;
							var bgp = rx + "px " + ry + "px";

							var px = mx - mag.width() / 2;
							var py = my - mag.height() / 2;

							mag.css({
								left : px,
								top : py,
								backgroundPosition : bgp
							});
						}
					}
				},
			};

			/* MAGNIFY PLUGIN DEFINITION
			 * ========================= */

			$.fn.magnify = function(option) {
				return this
						.each(function() {
							var $this = $(this), data = $this.data("magnify"), options = typeof option == "object"
									&& option;
							if (!data)
								$this.data("tooltip", (data = new Magnify(this,
										options)));
							if (typeof option == "string")
								data[option]();
						});
			};

			$.fn.magnify.Constructor = Magnify;

			$.fn.magnify.defaults = {
				delay : 0,
			};

			/* MAGNIFY DATA-API
			 * ================ */

			$(window).on("load", function() {
				$('[data-toggle="magnify"]').each(function() {
					var $mag = $(this);
					$mag.magnify();
				});
			});
		})(window.jQuery);
	</script>

	<script>
		$(document).on(
				"click",
				".number-spinner button",
				function() {
					var btn = $(this), oldValue = btn
							.closest(".number-spinner").find("input").val()
							.trim(), newVal = 0;

					if (btn.attr("data-dir") == "up") {
						newVal = parseInt(oldValue) + 1;
					} else {
						if (oldValue > 1) {
							newVal = parseInt(oldValue) - 1;
						} else {
							newVal = 1;
						}
					}
					btn.closest(".number-spinner").find("input").val(newVal);
				});
	</script>
</body>
</html>
