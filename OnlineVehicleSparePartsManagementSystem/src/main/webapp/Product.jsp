<%@page import="java.util.List"%>
<%@page import="com.ovspms.item.ItemDBUtil"%>
<%@page import="com.ovspms.item.*"%>
<%@page import="com.ovspms.customer.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%

if(session.getAttribute("cusID") != null){
	int cusID = (int) session.getAttribute("cusID");
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
<title>Tool Store</title>
<link rel="stylesheet" href="navAndFooter.css" />
<link href="./css/bootstrap.min.css" rel="stylesheet" />
<link href="./css/global.css" rel="stylesheet" />
<link href="./css/shop.css" rel="stylesheet" />
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
<link
	href="https://fonts.googleapis.com/css2?family=Baloo+2&display=swap"
	rel="stylesheet" />
<script src="./js/jquery-2.1.1.min.js"></script>
<script src="./js/bootstrap.min.js"></script>
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
							<h3 class="mgt">Shop Grid Sidebar Left</h3>
						</div>
					</div>
					<div class="col-sm-6">
						<div class="center_shop_1r text-right clearfix">
							<h5>
								<a class="col_2" href="#">Home</a> / <a class="col_2" href="#">Shop</a>
								/ <span>Shop Grid Sidebar Left</span>
							</h5>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<section id="shop">
		<div class="container">
			<div class="row">
				<div class="sell_o_1 clearfix">


					<!--  <div class="shop_1 clearfix">
            <div class="col-sm-3">
             
              <div class="shop_1lm clearfix">
                <div class="product_1l mgt clearfix">
                   <h4 class="mgt">Shop By Price</h4>
                  <hr />
                  <h6>Range:</h6>
                  <h5 class="bold">$120 - $250</h5>
                  <br />
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">$20 - $50 (2)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">$50 - $80 (5)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">$80 - $120 (7</a>)
                  </h5>
                </div>
                <div class="product_1l clearfix">
                  <h4 class="mgt">CATEGORIES</h4>
                  <hr />
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Catagory (1)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Catagory (2)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Catagory (3)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Catagory (4)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Catagory (5)</a>
                  </h5>
                </div>
                <div class="product_1l clearfix">
                  <h4 class="mgt">MANUFACTURER</h4>
                  <hr />
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Brake Parts(5)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Accessories (11)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Engine Parts (3)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Hermes (12)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Tommy Hilfiger(6)</a>
                  </h5>
                </div>
                <div class="product_1l clearfix">
                  <h4 class="mgt">SELECT BY COLOR</h4>
                  <hr />
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Black (1)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" /> <a href="detail.html">Blue (2)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Brown (3)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" />
                    <a href="detail.html">Green (4)</a>
                  </h5>
                  <h5>
                    <input type="checkbox" /> <a href="detail.html">Pink (5)</a>
                  </h5>
                </div>
                <div class="product_1l clearfix">
                  <h4 class="mgt">Recent Post</h4>
                  <hr />
                  <div class="product_1li clearfix">
                    <img src="img/1.jpg" alt="abc" />
                    <h5 class="mgt">
                      <a href="detail.html">Best Tool</a> <br />$89.00
                    </h5>
                    <span>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-o"></i>
                    </span>
                  </div>
                  <div class="product_1li clearfix">
                    <img src="img/2.png" alt="abc" />
                    <h5 class="mgt">
                      <a href="detail.html">Nice tool</a> <br />$69.00
                    </h5>
                    <span>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star-half-o"></i>
                    </span>
                  </div>
                  <div class="product_1li border_none pdb clearfix">
                    <img src="img/33.jpg" alt="abc" />
                    <h5 class="mgt">
                      <a href="detail.html">Good Tool</a> <br />$99.00
                    </h5>
                    <span>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                      <i class="fa fa-star"></i>
                    </span>
                  </div>
                </div>
              </div>
            </div>
            <div class="col-sm-9">
              <div class="product_1rm clearfix">
                <div class="product_1r clearfix">
                  <h5 class="mgt">Show :</h5>
                  <select class="form-control">
                    <option>10</option>
                    <option>20</option>
                    <option>30</option>
                    <option>40</option>
                    <option>50</option>
                  </select>
                  <h5 class="mgt">Sort By :</h5>
                  <select class="form-control">
                    <option>Default</option>
                    <option>Popularity</option>
                    <option>Latest</option>
                    <option>Price: low to high</option>
                    <option>Price: high to low</option>
                  </select>
                </div>-->
					<%
					if (!products.isEmpty()) {
						for (Item p : products) {
					%>

					<div class="col-sm-4">
						<div class="arriv_2m clearfix">
							<div class="arriv_2m1 clearfix">
								<a href="itemDetails.jsp?itemID=<%=p.getItemID() %>"><img
									src="itemImages/<%=p.getMainItemImage()%>" width="200"
									height="300" alt="abc" class="iw" /></a>
							</div>
							<div class="arriv_2m2 clearfix">
								<h5 class="text-center mgt">New</h5>
							</div>
							<div class="arriv_2m2n clearfix">
								<h5 class="text-center mgt">Sale</h5>
							</div>

							<div class="arriv_2m3 clearfix">
								<h4 class="bold mgt"><%=p.getTitle()%></h4>
								<p>
									<a href="itemDetails.jsp"><%=p.getCategory()%></a>
								</p>
								<span class="span_1"> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i> <i
									class="fa fa-star"></i> <i class="fa fa-star"></i>
								</span>
								<h3 class="normal">
									<a href="add-to-cart?ItemID=<%=p.getItemID()%>"
										class="btn btn-primary" type="button">Add to cart</a> <a
										href="order-now?quantity=1&id=<%=p.getItemID()%>"
										class="btn btn-primary" type="button">Buy</a> <span
										class="span_3 col_1">Rs.<%=p.getPrice()%></span>
								</h3>

							</div>

						</div>
					</div>









					<!--  <div class="col-sm-12">
                    <ul>
                      <li class="act"><a href="detail.html">1</a></li>
                      <li><a href="detail.html">2</a></li>
                      <li><a href="detail.html">3</a></li>
                      <li><a href="detail.html">4</a></li>
                      <li><a href="detail.html">5</a></li>
                      <li><a href="detail.html">6</a></li>
                      <li>
                        <a href="detail.html"
                          ><i class="fa fa-chevron-right"></i
                        ></a>
                      </li>
                    </ul>
                  </div>-->


					<%
					}
					}
					%>

				</div>
			</div>
		</div>




	</section>


	<!--  <div class="col-sm-4">
                    <div class="arriv_2m clearfix">
                      <div class="arriv_2m1 clearfix">
                        <a href="detail.html"
                          ><img src="img/17.jpg" alt="abc" class="iw"
                        /></a>
                      </div>
                      <div class="arriv_2m2 clearfix">
                        <h5 class="text-center mgt">New</h5>
                      </div>
                      <div class="arriv_2m2n clearfix">
                        <h5 class="text-center mgt">Sale</h5>
                      </div>
                      <div class="arriv_2m3 clearfix">
                        <h4 class="bold mgt">OTHER</h4>
                        <p>
                          <a href="detail.html"
                            >Naminos elementum disus tincidunts cosmo de
                            cosmopolis</a
                          >
                        </p>
                        <span class="span_1">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </span>
                        <h3 class="normal">
                          <a href="#"  class="btn btn-primary" type="button">Add to cart</a>
                          <span class="span_3 col_1"> $44.00</span>
                        </h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="arriv_2m clearfix">
                      <div class="arriv_2m1 clearfix">
                        <a href="detail.html"
                          ><img src="img/18.jpg" alt="abc" class="iw"
                        /></a>
                      </div>
                      <div class="arriv_2m2 clearfix">
                        <h5 class="text-center mgt">New</h5>
                      </div>
                      <div class="arriv_2m2n clearfix">
                        <h5 class="text-center mgt">Sale</h5>
                      </div>
                      <div class="arriv_2m3 clearfix">
                        <h4 class="bold mgt">POPULAR</h4>
                        <p>
                          <a href="detail.html"
                            >Naminos elementum disus tincidunts cosmo de
                            cosmopolis</a
                          >
                        </p>
                        <span class="span_1">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </span>
                        <h3 class="normal">
                          <a href="#"  class="btn btn-primary" type="button">Add to cart</a>
                          <span class="span_3 col_1"> $54.00</span>
                        </h3>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="sell_o_1 clearfix">
                  <div class="col-sm-4">
                    <div class="arriv_2m clearfix">
                      <div class="arriv_2m1 clearfix">
                        <a href="detail.html"
                          ><img src="img/19.jpg" alt="abc" class="iw"
                        /></a>
                      </div>
                      <div class="arriv_2m2 clearfix">
                        <h5 class="text-center mgt">New</h5>
                      </div>
                      <div class="arriv_2m2n clearfix">
                        <h5 class="text-center mgt">Sale</h5>
                      </div>
                      <div class="arriv_2m3 clearfix">
                        <h4 class="bold mgt">PRODUCT</h4>
                        <p>
                          <a href="detail.html"
                            >Naminos elementum disus tincidunts cosmo de
                            cosmopolis</a
                          >
                        </p>
                        <span class="span_1">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </span>
                        <h3 class="normal">
                          <a href="#"  class="btn btn-primary" type="button">Add to cart</a>
                          <span class="span_3 col_1"> $34.00</span>
                        </h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="arriv_2m clearfix">
                      <div class="arriv_2m1 clearfix">
                        <a href="detail.html"
                          ><img src="img/20.jpg" alt="abc" class="iw"
                        /></a>
                      </div>
                      <div class="arriv_2m2 clearfix">
                        <h5 class="text-center mgt">New</h5>
                      </div>
                      <div class="arriv_2m2n clearfix">
                        <h5 class="text-center mgt">Sale</h5>
                      </div>
                      <div class="arriv_2m3 clearfix">
                        <h4 class="bold mgt">OTHER</h4>
                        <p>
                          <a href="detail.html"
                            >Naminos elementum disus tincidunts cosmo de
                            cosmopolis</a
                          >
                        </p>
                        <span class="span_1">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </span>
                        <h3 class="normal">
                           <a href="#"  class="btn btn-primary" type="button">Add to cart</a>
                         <span class="span_3 col_1"> $34.00</span>
                        </h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="arriv_2m clearfix">
                      <div class="arriv_2m1 clearfix">
                        <a href="detail.html"
                          ><img src="img/21.jpg" alt="abc" class="iw"
                        /></a>
                      </div>
                      <div class="arriv_2m2 clearfix">
                        <h5 class="text-center mgt">New</h5>
                      </div>
                      <div class="arriv_2m2n clearfix">
                        <h5 class="text-center mgt">Sale</h5>
                      </div>
                      <div class="arriv_2m3 clearfix">
                        <h4 class="bold mgt">POPULAR</h4>
                        <p>
                          <a href="detail.html"
                            >Naminos elementum disus tincidunts cosmo de
                            cosmopolis</a
                          >
                        </p>
                        <span class="span_1">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </span>
                        <h3 class="normal">
                          <a href="#"  class="btn btn-primary" type="button">Add to cart</a>
                          <span class="span_3 col_1"> $54.00</span>
                        </h3>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="sell_o_1 clearfix">
                  <div class="col-sm-4">
                    <div class="arriv_2m clearfix">
                      <div class="arriv_2m1 clearfix">
                        <a href="detail.html"
                          ><img src="img/22.jpg" alt="abc" class="iw"
                        /></a>
                      </div>
                      <div class="arriv_2m2 clearfix">
                        <h5 class="text-center mgt">New</h5>
                      </div>
                      <div class="arriv_2m2n clearfix">
                        <h5 class="text-center mgt">Sale</h5>
                      </div>
                      <div class="arriv_2m3 clearfix">
                        <h4 class="bold mgt">PRODUCT</h4>
                        <p>
                          <a href="detail.html"
                            >Naminos elementum disus tincidunts cosmo de
                            cosmopolis</a
                          >
                        </p>
                        <span class="span_1">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </span>
                        <h3 class="normal">
                          <a href="#"  class="btn btn-primary" type="button">Add to cart</a>
                          <span class="span_3 col_1"> $34.00</span>
                        </h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="arriv_2m clearfix">
                      <div class="arriv_2m1 clearfix">
                        <a href="detail.html"
                          ><img src="img/23.jpg" alt="abc" class="iw"
                        /></a>
                      </div>
                      <div class="arriv_2m2 clearfix">
                        <h5 class="text-center mgt">New</h5>
                      </div>
                      <div class="arriv_2m2n clearfix">
                        <h5 class="text-center mgt">Sale</h5>
                      </div>
                      <div class="arriv_2m3 clearfix">
                        <h4 class="bold mgt">OTHER</h4>
                        <p>
                          <a href="detail.html"
                            >Naminos elementum disus tincidunts cosmo de
                            cosmopolis</a
                          >
                        </p>
                        <span class="span_1">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </span>
                        <h3 class="normal">
                          <a href="#"  class="btn btn-primary" type="button">Add to cart</a>
                          <span class="span_3 col_1"> $44.00</span>
                        </h3>
                      </div>
                    </div>
                  </div>
                  <div class="col-sm-4">
                    <div class="arriv_2m clearfix">
                      <div class="arriv_2m1 clearfix">
                        <a href="detail.html"
                          ><img src="img/16.jpg" alt="abc" class="iw"
                        /></a>
                      </div>
                      <div class="arriv_2m2 clearfix">
                        <h5 class="text-center mgt">New</h5>
                      </div>
                      <div class="arriv_2m2n clearfix">
                        <h5 class="text-center mgt">Sale</h5>
                      </div>
                      <div class="arriv_2m3 clearfix">
                        <h4 class="bold mgt">POPULAR</h4>
                        <p>
                          <a href="detail.html"
                            >Naminos elementum disus tincidunts cosmo de
                            cosmopolis</a
                          >
                        </p>
                        <span class="span_1">
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                          <i class="fa fa-star"></i>
                        </span>
                        <h3 class="normal">
                          <a href="#"  class="btn btn-primary" type="button">Add to cart</a>
                          <span class="span_3 col_1"> $54.00</span>
                        </h3>
                      </div>
                    </div>
                  </div>
                </div> -->


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