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

			<link rel="stylesheet" href="navAndFooter.css" />
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,400;0,500;0,700;0,900;1,400&display=swap"
	rel="stylesheet">
<link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
      integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
      crossorigin="anonymous"
      referrerpolicy="no-referrer"
    />

<meta charset="ISO-8859-1">
<title>Tool Store</title>
    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/checkout.css" rel="stylesheet" />

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
                <h3 class="mgt">Checkout</h3>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="center_shop_1r text-right clearfix">
                <h5>
                  <a class="col_2" href="#">Home</a> / <span>Checkout</span>
                </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="checkout" class="clearfix">
      <div class="container">
        <div class="row">
          <div class="checkout_1 clearfix">
            <div class="col-sm-8">
              <div class="checkout_1l clearfix">
                <h3 class="mgt">Make Your Checkout Here</h3>
                <p>Please register in order to checkout more quickly</p>
              </div>
              <br />
              <form action="billing-details" method="post">
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>First Name <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required" name="fname"/>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Last Name <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required"  name="lname"/>
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Email Address <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required"  name="email"/>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Phone Number <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required"  name="phone" />
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Country <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required"  name="country" />
                
                </div>
                <div class="col-sm-6 space_left">
                  <h5>State / Divition <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required"  name="state" />
                
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Address Line 1 <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required"  name="addressl1" />
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Address Line 2 <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required"  name="addressl2" />
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Postal Code <span class="col_1"></span></h5>
                  <input class="form-control" type="text" required="required"  name="postal" />
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Company <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="company" />
                
                </div>
              </div>
              <br>
              
              <div class="checkout_1l clearfix">
               <!--   <input type="submit" name="submit" value="billing">-->
               <button type ="submit" class="btn btn-primary btn">Submit</button>
               </div>
               </form>
               
              
              
              
            </div>
            <div class="col-sm-4">
              <div class="checkout_1r clearfix">
                <h4 class="mgt">CART TOTALS</h4>
                <hr class="hr_1" />
                <h5>Sub Total <span class="pull-right">RS.${ (total>0)?dcf.format(total):0}</span></h5>
             
                <br />
                <h4>PAYMENTS</h4>
                <hr class="hr_1" />
                <p><input type="radio" /> <span>Check Payments</span></p>
                <p><input type="radio" /> <span>Cash On Delivery</span></p>
                <p><input type="radio" /> <span>PayPal</span></p>
                <br />
                <h6><a class="button" href="#">PROCEED TO CHECKOUT</a></h6>
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

</body>
</html>