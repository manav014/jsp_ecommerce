<%@ include file = "../backend/database_connection.jsp" %>
<%
String u="hello";
	if(session.getAttribute("username")!=null)
	{
		 u = (String)session.getAttribute("username");
	}
	else
	{
		response.sendRedirect("login.jsp");
	}
%>
<!--HTML5 DECLARARTION-->
<!DOCTYPE>
  <html lang="en" dir="ltr">
    <head>
      <!--all meta tags-->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      <title>Select Delivery Address</title>
      <!--Bootstrap CSS and other CSS files-->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
    <!--Bootstrap JS and other JS files-->
       <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
   <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>



   </head>
    <body>
      <div class="container-fluid">


        <nav class="navbar navbar-expand-lg navbar-light bg-dark">


          <a class="navbar-brand" href="homepage.jsp"> <img src="assets/k.svg" width="120" height="120" alt=""></a>
          <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav"
                  aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
          </button>
          <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav mx-auto">
                  <li class="nav-item active">

                    <h1><strong> <a class="nav-link text-light" href="homepage.jsp">ExpressDeals <span class="sr-only">(current)</span></a></strong>  </h1>

                  </li>

              </ul>

               <ul class="navbar-nav">
                      <li class="nav-item">
                          <a class="nav-link" href="<%if(session.getAttribute("username")==null){out.print("login.jsp");}else if(u.equals("admin")){out.print("admin_profile.jsp");}else{out.print("profile.jsp");}%>">
                              <img src="assets/log.png" width="30" height="30"/>
                          </a>
                      </li>




                      <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarNavDropdown" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                              <img src="assets/more.png" width="30" height="30"/>
                          </a>
                          <div class="dropdown-menu" aria-labelledby="navbarDropdown">
						  <a class="dropdown-item" href="my_orders.jsp">My Orders</a>
						   <a class="dropdown-item" href="my_transactions.jsp">My Transactions</a>
                            <a class="dropdown-item" href="backend/logout.jsp">Logout</a>

                      </li>







                      <li class="nav-item">
                          <a class="nav-link" href="cart.jsp">
                              <img src="assets/shopping-cart.png" width="30" height="30"/>
                          </a>
                      </li>


                  </ul>



          </div>

      </nav>


    <nav class="navbar navbar-light bg-dark justify-content-between ">
      <a class="navbar-brand mx-auto text-light" href="homepage.jsp"><b>Home</b></a>
    <a class="navbar-brand mx-auto text-light" href="menwear.jsp"><b>Men's Wear</b></a>
      <a class="navbar-brand mx-auto text-light" href="womenwear.jsp"><b>Women's Wear</b></a>
      <a class="navbar-brand mx-auto text-light" href="kidswear.jsp"><b>Kid's Wear</b></a>
      <a class="navbar-brand mx-auto text-light" href="menfootwear.jsp"><b>Men's FootWear</b></a>
      <a class="navbar-brand mx-auto text-light" href="womenfootwear.jsp"><b>Women's FootWear</b></a>

    </nav>
	<div class="container">


<%
	PreparedStatement ps = con.prepareStatement("SELECT * from address where username = ?");
	ps.setString(1, u);
	ResultSet rs = ps.executeQuery();
%>

	<form action="backend/proceed_to_payment.jsp" method="POST" id="proceed">
		<!-- Not a waste Form, Do not delete this. -->
		<!-- Its Elements are below in the code using form attribute -->
	</form>

<%
	if(rs.next()) {
%>

	<!-- <div class="right-panel">  -->
			<br>
			<div class="alert text-secondary" align="center" role="alert">
      			<h4><b>Your previously saved addresses are:</b></h4>
	  		</div>
			<!-- <p align="center"> Your previously saved addresses are: </p>-->
			


			<!-- This prints the saved addresses if available -->
			<div class="alert alert-dark" role="alert" style="margin-top: 30px">	
			
			<input type="radio" value="<%=rs.getString(1) %>" name="address" form="proceed" required>
				<table>
				<div class="text-center">
					<tr><td>Name: </td><td><%=rs.getString(3) %>   </td></tr>
					<tr><td>Mobile: </td><td><%=rs.getString(4) %></td></tr>
					<tr><td>Pincode: </td><td><%=rs.getString(5) %></td></tr>
					<tr><td>Locality: </td><td><%=rs.getString(6) %></td></tr>
					<tr><td>Address: </td><td><%=rs.getString(7) %></td></tr>
					<tr><td>City: </td><td><%=rs.getString(8) %></td></tr>
					<tr><td>State: </td><td><%=rs.getString(9) %></td></tr>
		</div>
				</table>
			<form action="backend/remove_address.jsp" method="POST">
			<div class="text-right">
			<button class="btn btn-dark" type="submit" value="<%=rs.getString(1) %>" name="remove"> remove </button>
		</div>
			   </form>
		</div>
		
			

		<!-- </div> -->
<%
	}
%>

	<div class="alert alert-dark" role="alert" style="margin-top: 20px">
	<b><p align="center" style="font-size:30px;">Add Address</p></b>
	<div class="row">	
	<div class="col-sm-6 mx-auto" style="margin-top: 35px">
		<form action="backend/add_address.jsp" method="POST">
		




		<div class="form-group row">
                        <label for="name" class="col-2 col-form-label">Name</label>
                        <div class="col-10">
                            <input name='name' class="form-control" type="text" placeholder="Name" id="name">
                        </div>
                    </div>
			<!-- <label for="name" class="label">Name</label></br>
			<input id="name" type="text" placeholder="Name" class="user-input" name="name" required ></br> -->
			<div class="form-group row">
                        <label for="mobileno" class="col-2 col-form-label">MobileNo</label>
                        <div class="col-10">
                            <input name='mobileno' class="form-control" type="text" placeholder="Mobile No." id="mobileno" required>
                        </div>
                    </div>
			<!-- <label for="mobileno" class="label">Mobile No.</label></br>
			<input id="mobileno" type="text" placeholder="Mobile No." class="user-input" name="mobileno" required></br> -->
			<div class="form-group row">
                        <label for="pincode" class="col-2 col-form-label">Pincode</label>
                        <div class="col-10">
                            <input name='pincode' class="form-control" type="text" placeholder="Pincode" id="pincode" required>
                        </div>
                    </div>
            <!-- <label for="pincode" class="label">Pincode</label></br>
			<input id="pincode" type="text" placeholder="Pincode" class="user-input"  name="pincode" required></br> -->
			<div class="form-group row">
                        <label for="locality" class="col-2 col-form-label">Locality</label>
                        <div class="col-10">
                            <input name='locality' class="form-control" type="text" placeholder="Locality" id="locality">
                        </div>
                    </div>
			<!-- <label for="locality" class="label">Locality</label></br>
			<input id="locality" type="text" placeholder="Locality" class="user-input"  name="locality" required></br> -->
			<div class="form-group row">
                        <label for="address" class="col-2 col-form-label">Address</label>
                        <div class="col-10">
                            <input name='address' class="form-control" type="text" placeholder="Address" id="Address">
                        </div>
                    </div>
            <!-- <label for="address" class="label">Address</label></br>
			<input id="address" type="text" placeholder="Address" class="user-input" name="address" required></br> -->
			<div class="form-group row">
                        <label for="city" class="col-2 col-form-label">City</label>
                        <div class="col-10">
                            <input name='city' class="form-control" type="text" placeholder="City" id="city">
                        </div>
                    </div>
            <!-- <label for="city" class="label">City</label></br>
			<input id="city" type="text" placeholder="City" class="user-input" name="city" required></br> -->
			<div class="form-group row">
                        <label for="state" class="col-2 col-form-label">State</label>
                        <div class="col-10">
                            <input name='state' class="form-control" type="text" placeholder="State" id="state">
                        </div>
                    </div>
			<!-- <label for="state" class="label">State</label></br>
			<input id="state" type="text" placeholder="State" class="user-input" name="state" required></br> -->
			<div class="text-center">
			<button class="btn btn-dark" type="submit" value="address" name="add"> Add Address </button>	 
			</div>	
		</form>
</div>
	</div>
</div>
	<div class="alert alert-dark" role="alert" style="margin-top: 20px">
			<div class="text-center">
			<button class="btn btn-dark p-3 mb-2" type="submit" form="proceed" value="Proceed to payment" name="proceed_to_payment"> Proceed to Payment </button>
	</div>
</div>



</div>


<div class="alert alert-dark text-light bg-dark" role="alert">
      <div class="container mx-auto" align="center">
   
    ExpressDealz: The Best Shopping Destination

Lifestyle
ExpressDealz, is your one-stop fashion destination for anything and everything you need to look good. Our exhaustive range of Western and Indian wear, summer and winter clothing, formal and casual footwear are sure to sweep you off your feet. Shop from crowd favourites like Vero Moda, Forever 21, Only, Arrow, among dozens of other top-of-the-ladder names. From summer staple maxi dresses, no-nonsense cigarette pants, traditional Bandhani kurtis to street-smart biker jackets, you can rely on us for a wardrobe that is up to date. Explore our in-house brands like Metronaut, Anmi, and Denizen, to name a few, for carefully curated designs that are the talk of the town. Get ready to be spoiled for choice.Festivals, office get-togethers, weddings, brunches, or nightwear - ExpressDealz will have your back each time.
 Kids
Your kids deserve only the best. From bodysuits, booties to strollers. When it comes to safety, hygiene and comfort, you can rely on us without a second thought: we host only the most-trusted names in the business for your baby.

<br>
<br>
<table>
<tr>
      <td class="text-light" align="center">
      ©2020 developed by <br>
      Aashutosh Agrawal <a href="https://in.linkedin.com/in/aashutosh-agrawal-281201191"><img src="assets/link.png" width="20" height="20" alt=""></a> <a href="https://github.com/inbornhandsome"><img src="assets/git.png" width="20" height="20" alt=""></a><br>
      Ashutosh Kumar Singh <a href="https://www.linkedin.com/in/ashutosh-kumar-singh-576b111b2/"><img src="assets/link.png" width="20" height="20" alt=""></a> <a href="https://github.com/ashutosh113"><img src="assets/git.png" width="20" height="20" alt=""></a><br>
      Avanya Wadhwa <a href="https://www.linkedin.com/in/avanya-wadhwa-07b171197"><img src="assets/link.png" width="20" height="20" alt=""></a> <a href="https://github.com/avanya080"><img src="assets/git.png" width="20" height="20" alt=""></a><br>
      Manav Agarwal <a href="https://www.linkedin.com/in/manav-agarwal-982553190/"><img src="assets/link.png" width="20" height="20" alt=""></a> <a herf="https://github.com/manav014"><img src="assets/git.png" width="20" height="20" alt=""></a><br>
     under the guidance of Mr. Prashant Tomer
      </td>
      </tr>
      
       </table>
       </div>
</div>

