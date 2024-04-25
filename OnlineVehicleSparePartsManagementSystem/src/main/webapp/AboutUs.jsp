<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <title>Tool Store</title>
    
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


    <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/about.css" rel="stylesheet" />
    

    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <style type="text/css">
    	   * {
	font-family: 'Roboto', sans-serif;
}
    </style>
  </head>

  <body>
 <jsp:include page="navbar.jsp" />
    <section id="center" class="clearfix center_shop">
      <div class="container">
        <div class="row">
          <div class="center_shop_1 clearfix">
            <div class="col-sm-6">
              <div class="center_shop_1l clearfix">
                <h3 class="mgt">About Us</h3>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="center_shop_1r text-right clearfix">
                <h5>
                  <a class="col_2" href="#">Home</a> / <span>About Us</span>
                </h5>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>

    <section id="about">
      <div class="container">
        <div class="row">
          <div class="about_1 clearfix">
            <div class="col-sm-6">
              <div class="about_1l clearfix">
                <h5 class="col_1 mgt">We believe in Quality over Quantity</h5>
                <h3>
                  Welcome to Spare Mart!
                  
                 <p> The purpose of our service is to provide
                  quality products and ensure the safety and quality of your vehicle...</p>
                </h3>
                <p>
                  Our company has been actively functioning for 8 years. To make a
                  positive impact in the markets where we operate, to empower
                  partners and the community. We are focusing on growth and adding
                  value to customers.
                </p>
                <p>A message from our founders</p>
                <br />
                <blockquote>
                  <p class="mgt">
                    We have been able to create a platform that customers can get
                    their hands on whenever they want. It is always our
                    intention to provide you a quality service.
                  </p>
                </blockquote>
              </div>
            </div>
            <div class="col-sm-6">
              <div class="about_1r clearfix">
                <img src="images/logo.jpeg" height="400px" width="500px" class="iw" alt="logo" />
              </div>
            </div>
          </div>
          <div class="about_2 clearfix">
            <div class="col-sm-3">
              <div class="about_2i text-center clearfix">
                <h2 class="col_1 mgt">12M</h2>
                <h5>Happy Clients</h5>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="about_2i text-center clearfix">
                <h2 class="col_1 mgt">22M</h2>
                <h5>Global Customers</h5>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="about_2i text-center clearfix">
                <h2 class="col_1 mgt">79+</h2>
                <h5>Experts Employee</h5>
              </div>
            </div>
            <div class="col-sm-3">
              <div class="about_2i text-center clearfix">
                <h2 class="col_1 mgt">29+</h2>
                <h5>Awards Win</h5>
              </div>
            </div>
          </div>
          <div class="about_3 clearfix">
            <div class="categories_1 clearfix">
              <div class="col-sm-12">
                <h2 class="mgt">Why Choose Us</h2>
              </div>
            </div>
            <div class="about_3i clearfix clearfix">
              <div class="col-sm-4">
                <div class="about_3ii text-center clearfix">
                  <span><i class="fa fa-building-o col_1"></i></span>
                  <h4>High Production</h4>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur ipiscing elit, sed
                    do eiusmod tempor inc ididunt ut labore et dolore magna
                    aliqua.
                  </p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="about_3ii text-center clearfix">
                  <span><i class="fa fa-chain col_1"></i></span>
                  <h4>Reliable Supplying</h4>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur ipiscing elit, sed
                    do eiusmod tempor inc ididunt ut labore et dolore magna
                    aliqua.
                  </p>
                </div>
              </div>
              <div class="col-sm-4">
                <div class="about_3ii text-center clearfix">
                  <span><i class="fa fa-truck col_1"></i></span>
                  <h4>Quick Delivery</h4>
                  <p>
                    Lorem ipsum dolor sit amet, consectetur ipiscing elit, sed
                    do eiusmod tempor inc ididunt ut labore et dolore magna
                    aliqua.
                  </p>
                </div>
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
    