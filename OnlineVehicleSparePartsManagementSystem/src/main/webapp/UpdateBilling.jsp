<%@ page import = "java.sql.DriverManager" %>

<%@ page import = "com.ovspms.billing.*" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.PreparedStatement" %>
<%@ page import = "java.sql.Statement" %>
<%@ page import = "java.sql.Connection" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>

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
          
          
          
          <form action="update-billing-details" method="post">
            <div class="col-sm-8">
              <div class="checkout_1l clearfix">
                <h3 class="mgt">Update Billing Details</h3>
                <p></p>
              </div>
              <br />
               <%
						//String id = request.getParameter("userId");
						//String driverName = "com.mysql.jdbc.Driver";
						String host = "jdbc:mysql://localhost:3306/ovspms";
						//String dbName = "ovspms";
						//String userId = "root";
						//String password = "Sanduni@1130";
						
						/*try {
							Class.forName(driverName);
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}*/
						
						Connection conn = null;
						PreparedStatement pst = null;
						Statement stat = null;
						ResultSet res = null;
						PreparedStatement stmt = null;
						Class.forName("com.mysql.jdbc.Driver").newInstance();
						conn = DriverManager.getConnection(host,"root","mysql123");
					%>
              <form action="update-billing-details" method="post">
              <%
              stat = conn.createStatement();
              String bid = request.getParameter("bno");
              int num = Integer.parseInt(bid);
              String sql = "select * from billing_details where b_id=?";
           
              
              pst = conn.prepareStatement(sql);
  			pst.setInt(1, num);

  			res = pst.executeQuery();
              while(res.next()){
              %>
              <div class="checkout_1l1 clearfix">
              <div class="col-sm-6 space_left">
                  <h5>Billing ID <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="id" value='<%=res.getString("b_id") %>'/>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>First Name <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="fname" value="<%=res.getString("f_name") %>"/>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Last Name <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="lname" value="<%=res.getString("l_name") %>"/>
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Email Address <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="email" value="<%=res.getString("email") %>"/>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Phone Number <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="phone" value="<%=res.getString("phone_number") %>"/>
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Country <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="country" value="<%=res.getString("country") %>"/>
                
                </div>
                <div class="col-sm-6 space_left">
                  <h5>State / Divition <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="state" value="<%=res.getString("state") %>"/>
                
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Address Line 1 <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="addressl1" value="<%=res.getString("a_line1") %>"/>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Address Line 2 <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="addressl2" value="<%=res.getString("a_line2") %>"/>
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Postal Code <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="postal" value="<%=res.getString("p_code") %>"/>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Company <span class="col_1"></span></h5>
                  <input class="form-control" type="text" name="company" value="<%=res.getString("company") %>"/>
                
                </div>
              </div>
              <br>
              <%
              }
              %>
              
              <div class="checkout_1l clearfix">
               <!--   <input type="submit" name="submit" value="billing">-->
               <button type ="submit" class="btn btn-primary btn">Submit</button>
               </div>
               </form>
               
              
              
              
            </div>
            </div>
            </div>
            </div>
            </section>
<jsp:include page="footer.jsp" />
</body>
</html>