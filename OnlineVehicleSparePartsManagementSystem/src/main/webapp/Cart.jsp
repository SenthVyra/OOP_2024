<%@page import="java.text.DecimalFormat" %>
<%@page import="java.util.List" %>
<%@page import="java.util.ArrayList" %>
<%@page import="com.ovspms.item.ItemDBUtil" %>
<%@page import="com.ovspms.DBConnection.DBConnection" %>
<%@page import="com.ovspms.customer.*" %>
<%@page import="com.ovspms.cart.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
        <%
    if (session.getAttribute("sellerID") == null && session.getAttribute("cusID") == null) {
    	response.sendRedirect("commonLogin.jsp");
    }else{
    	int cusID = (int) session.getAttribute("cusID");
    }
    %>
    <%
    

    DecimalFormat dcf= new DecimalFormat("#.##");
    request.setAttribute("dcf",dcf);
    
    

    ArrayList<Cart> cart_list = (ArrayList<Cart>) session.getAttribute("cart-list");
    List<Cart> cartProduct = null;
    if(cart_list !=null){
    	ItemDBUtil p = new ItemDBUtil();
    	cartProduct = p.getCartProducts(cart_list);
    	double total =p.getTotalCartPrice(cart_list);
    	request.setAttribute("cart_list",cart_list);
    	request.setAttribute("total", total);
    	
    
    }
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
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

</head>
<body>
<jsp:include page="navbar.jsp" />
     <section id="center" class="clearfix center_shop">
      <div class="container">
        <div class="row">
          <div class="center_shop_1 clearfix">
            <div class="col-sm-6">
              <div class="center_shop_1l clearfix">
                <h3 class="mgt">Shopping Cart</h3>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="center_shop_1r text-right clearfix">
                <h5>
                  <a class="col_2" href="#">Home</a> /
                  <span>Shopping Cart</span>
                </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="cart_page" class="clearfix cart">
      <div class="container">
        <div class="row">
          <div class="cart_1 clearfix">
            <div class="col-sm-12">
              <p class="mgt">
                <a href="#">Home</a> / <a href="#">Shopping Cart</a>
              </p>
            </div>
          </div>
          <div class="cart_2 clearfix">
            <div class="col-sm-6">
              <h3 class="bold col_1">MY CART</h3>
            </div>
            <div class="col-sm-6">
              <h5 class="text-right"><a href="#">Continue Shopping</a></h5>
            </div>
          </div>
          <div class="cart_3 clearfix">
            <div class="col-sm-8">
              <div class="cart_3l clearfix">
                <h5 class="mgt">PRODUCT</h5>
              </div>
              <%if(cart_list !=null){
            	for(Cart c:cartProduct){ %> 
              
              <div class="cart_3l1 clearfix">
                <div class="col-sm-3 space_left">
                  <div class="cart_3l1i clearfix">
                    <a href="#"
                      ><img src="itemImages/<%= c.getMainItemImage() %>" alt="abc" class="iw"
                    /></a>
                  </div>
                </div>
                <div class="col-sm-9">
                  <div class="cart_3l1i1 clearfix">
                    <h5 class="mgt">
                      <a href="#"
                        ><%=c.getCategory() %></a
                      >
                    </h5>
                    <h5 class="normal">RED / XS</h5>
                    <h6><%=c.getTitle() %></h6>
                    <h4>RS.<%=c.getPrice() %></h4>
                    <h5>Quantity</h5>
                  </div>
                    <div class="cart_3l1i2 clearfix">
                    <form action="order-now" method="post" class="form-inline">
                   <input type="hidden" name="id" value="<%=c.getItemID() %>" class="form-input">
                   <div class="form-group d-flex justify-content-between w-50">
                    <a class="btn btn-sm btn-incre" href="quantity-inc-dec?action=inc&ItemID=<%= c.getItemID()%>"><i class="fas fa-plus-square"></i></a>
                   <input type="text" class="texxt" name="quantity" class="form-control w-50" value="<%=c.getQuantity() %>" readonly>
                   <a class="btn btn-sm btn-decre" href="quantity-inc-dec?action=dec&ItemID=<%= c.getItemID()%>"><i class="fas fa-minus-square"></i></a>
                   </div>
                    <br>
                    <br>
                    <h6 class="mgt">
                     <!--  <a class="button_1 mgt" href="order-now">Buy Now</a> -->
                     <button type ="submit" class="btn btn-primary btn-m">Buy Now</button>
                    </h6>
                    <!--  <input type="submit"  value="Buy Now">-->
                    <br>
                  </form>
                  
                   
                    <br>
                    <h6 class="mgt">
                      <a class="button_1 mgt" href="remove-from-cart?ItemID=<%= c.getItemID() %>">REMOVE</a>
                    </h6>
                
                  </div>
                </div>
              </div>
             <%}
              }
              %>
              
              <!--  <div class="cart_3l1 clearfix">
                <div class="col-sm-3 space_left">
                  <div class="cart_3l1i clearfix">
                    <a href="#"
                      ><img src="img/18.jpg" alt="abc" class="iw"
                    /></a>
                  </div>
                </div>
                <div class="col-sm-9">
                  <div class="cart_3l1i1 clearfix">
                    <h5 class="mgt">
                      <a href="#"
                        >Naminos elementum disus tincidunts cosmo de
                        cosmopolis</a
                      >
                    </h5>
                    <h5 class="normal">RED / XS</h5>
                    <h6>Vendor</h6>
                    <h4>$175.00</h4>
                    <h5>Quantity</h5>
                  </div>
                  <div class="cart_3l1i2 clearfix">
                    <div class="input-group number-spinner">
                      <span class="input-group-btn">
                        <button class="btn btn-default" data-dir="dwn">
                          <span class="glyphicon glyphicon-minus"></span>
                        </button>
                      </span>
                      <input
                        type="text"
                        class="form-control text-center"
                        value="1"
                      />
                      <span class="input-group-btn">
                        <button class="btn btn-default" data-dir="up">
                          <span class="glyphicon glyphicon-plus"></span>
                        </button>
                      </span>
                    </div>
                    <h6 class="mgt">
                      <a class="button_1 mgt" href="#">REMOVE</a>
                    </h6>
                    <!--<h6 class="mgt">
                      <a class="button mgt" href="#">UPDATE CART</a>
                    </h6>
                  </div>
                </div>
              </div>
              <div class="cart_3l1 border_none clearfix">
                <div class="col-sm-3 space_left">
                  <div class="cart_3l1i clearfix">
                    <a href="#"
                      ><img src="img/19.jpg" alt="abc" class="iw"
                    /></a>
                  </div>
                </div>
                <div class="col-sm-9">
                  <div class="cart_3l1i1 clearfix">
                    <h5 class="mgt">
                      <a href="#"
                        >Naminos elementum disus tincidunts cosmo de
                        cosmopolis</a
                      >
                    </h5>
                    <h5 class="normal">RED / XS</h5>
                    <h6>Vendor</h6>
                    <h4>$175.00</h4>
                    <h5>Quantity</h5>
                  </div>
                  <div class="cart_3l1i2 clearfix">
                    <div class="input-group number-spinner">
                      <span class="input-group-btn">
                        <button class="btn btn-default" data-dir="dwn">
                          <span class="glyphicon glyphicon-minus"></span>
                        </button>
                      </span>
                      <input
                        type="text"
                        class="form-control text-center"
                        value="1"
                      />
                      <span class="input-group-btn">
                        <button class="btn btn-default" data-dir="up">
                          <span class="glyphicon glyphicon-plus"></span>
                        </button>
                      </span>
                    </div>
                    <h6 class="mgt">
                      <a class="button_1 mgt" href="#">REMOVE</a>
                    </h6>
                    
                  </div>
                </div>
              </div>-->
            </div>
            <div class="col-sm-3">
              <div class="cart_3r clearfix">
                <h5 class="mgt head_1">SUBTOTAL</h5>
                <h3 class="text-center">RS.${ (total>0)?dcf.format(total):0}</h3>
                <hr />
                <!--  <h6>Additional comments</h6>
                <textarea class="form-control"></textarea>-->
                <h5 class="text-center">
                  <a class="button"  href ="cart-check-out">PROCEED TO CHECKOUT</a>
                </h5>
                <br />
                <br>
                <h6 class="mgt">
                      <a class="button mgt" href="cart-check-out">Check Out</a>
                    </h6>
                    
                <!--  <h5>GET SHIPPING ESTIMATES</h5>
                <hr />
              </div>
              <div class="cart_3r1 clearfix">
                <h6>Country</h6>
                <select class="form-control" id="subject" name="subject">
                  <option>America</option>
                  <option>India</option>
                  <option>England</option>
                  <option>Africa</option></select
                ><br />
                <h6>State</h6>
                <select class="form-control" id="subject" name="subject">
                  <option>Delhi</option>
                  <option>Uttar Pradesh</option>
                  <option>Punjab</option>
                  <option>Madhya Pradesh</option></select
                ><br />
                <h6>Postal/Zip Code</h6>
                <input class="form-control" type="text" />
                <h5 class="text-center">
                  <a class="button_1" href="#">CALCULATE SHIPPING</a>
                </h5>-->
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

  <jsp:include page="footer.jsp" />

    <script>
      $(document).ready(function () {
        /*****Fixed Menu******/
        var secondaryNav = $(".cd-secondary-nav"),
          secondaryNavTopPosition = secondaryNav.offset().top;
        $(window).on("scroll", function () {
          if ($(window).scrollTop() > secondaryNavTopPosition) {
            secondaryNav.addClass("is-fixed");
          } else {
            secondaryNav.removeClass("is-fixed");
          }
        });
      });
    </script>

    <script>
      $(document).on("click", ".number-spinner button", function () {
        var btn = $(this),
          oldValue = btn.closest(".number-spinner").find("input").val().trim(),
          newVal = 0;

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