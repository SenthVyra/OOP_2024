<%@ page import = "java.sql.DriverManager" %>
<%@ page import = "java.sql.Connection" %>
<%@ page import = "com.ovspms.billing.*" %>
<%@ page import = "java.sql.ResultSet" %>
<%@ page import = "java.sql.Statement" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   

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
<title>Billing Details</title>
 <link href="css/bootstrap.min.css" rel="stylesheet" />
    <link href="css/global.css" rel="stylesheet" />
    <link href="css/checkout.css" rel="stylesheet" />

    <script src="js/jquery-2.1.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>

  <jsp:include page="navbar.jsp" />
		
		
		<div class="container">
				<span><h2>View Billing Details</h2></span>

					 <%
						String id = request.getParameter("userId");
						String driverName = "com.mysql.jdbc.Driver";
						String connectionUrl = "jdbc:mysql://localhost:3306/";
						String dbName = "ovspms";
						String userId = "root";
						String password = "mysql123";
						
						try {
							Class.forName(driverName);
						} catch (ClassNotFoundException e) {
							e.printStackTrace();
						}
						
						Connection connection = null;
						Statement statement = null;
						ResultSet resultSet = null;
					%>
					
					
						
					    <%
						try{	
							connection = DriverManager.getConnection(connectionUrl+dbName, userId, password);
							statement=connection.createStatement();
							String sql ="SELECT * FROM billing_details ";
					
							resultSet = statement.executeQuery(sql);
							while(resultSet.next()){
						%>
						
						  <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>First Name <span class="col_1"></span></h5>
                  <p> <%=resultSet.getString ("f_name") %></p>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Last Name <span class="col_1"></span></h5>
                  <p> <%=resultSet.getString ("l_name") %></p>
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Email Address <span class="col_1"></span></h5>
                  <p> <%=resultSet.getString ("email") %></p>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Phone Number <span class="col_1"></span></h5>
                <p> <%=resultSet.getInt ("phone_number") %></p>
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Country <span class="col_1"></span></h5>
                 <p> <%=resultSet.getString ("country") %></p>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>State / Divition <span class="col_1"></span></h5>
                  <p> <%=resultSet.getString ("state") %></p>
                
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Address Line 1 <span class="col_1"></span></h5>
                 <p> <%=resultSet.getString ("a_line1") %></p>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Address Line 2 <span class="col_1"></span></h5>
                  <p> <%=resultSet.getString ("a_line2") %></p>
                </div>
              </div>
              <div class="checkout_1l1 clearfix">
                <div class="col-sm-6 space_left">
                  <h5>Postal Code <span class="col_1"></span></h5>
               <p> <%=resultSet.getInt ("p_code") %></p>
                </div>
                <div class="col-sm-6 space_left">
                  <h5>Company <span class="col_1"></span></h5>
              <p> <%=resultSet.getString ("company") %></p>
                  
                </div>
              </div>
              <br>
              
              <div class="checkout_1l clearfix">
               
                <br>
                <a href="UpdateBilling.jsp?bno=<%=resultSet.getInt("b_id")%>"><button type ="submit" class="btn btn-primary btn">Update</button></a>
              </div>
						
							
				</div>
							
								            
						<%		
								}
								
						} catch (Exception e) {
							e.printStackTrace();
						}
						%>
										
				
				
			<jsp:include page="footer.jsp" />	

</body>
</html>