<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ include file="backend/database_connection.jsp" %>
<%@page import="java.sql.*"%>
<%
String u = null;
if(session.getAttribute("username")!=null)
	u = (String) session.getAttribute("username");
String pid = null;
if(request.getParameter("productId")==null)
	response.sendRedirect("homepage.jsp");
else {
	pid = (String) request.getParameter("productId");
	
	String temp = pid;
		String table="";
		if(temp.indexOf("ww")!=-1)
		{
			table = "womenwear";
		}
		else if(temp.indexOf("mw")!=-1)
		{
			table = "menwear";
		}
		else if(temp.indexOf("wfw")!=-1)
		{
			table = "womenfootwear";
		}
		else if(temp.indexOf("mfw")!=-1)
		{
			table = "menfootwear";
		}
		else if(temp.indexOf("kw")!=-1)
		{
			table = "kidswear";
		}
 
String sql_l = "SELECT * FROM "+table+" WHERE productId= ?";
PreparedStatement st = con.prepareStatement(sql_l);
st.setString(1, pid);
ResultSet res = st.executeQuery();
res.next();
String image = res.getString("image");
String name = res.getString("name");
String price = res.getString("price");
String size = res.getString("size");
String description = res.getString("description");

%>
<!doctype html>
<html lang="en">
  <head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">

    <title><% out.print(name + " - Item Description"); %></title>
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
                          <a class="nav-link" href="<% if(session.getAttribute("username")==null){ out.print("login.jsp");} else if(u=="admin"){ out.print("admin_profile.jsp");} else{ out.print("profile.jsp");}%>">
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

      <form class="form-inline ">
        <!-- <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
        <button type="submit" class="btn btn-dark">
          <img src="assets/search.png" width="30" height="30"/>
        </button> -->
        <!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->
      </form>
    </nav>


 <!-- <div class="container"> -->

    <br>
    <br>
    <div class="alert text-info" align="center" role="alert">
      <h1><b><% out.print(name); %></b></h2>
  </div>
    

  <div class="container">
	<div class="alert alert-dark" role="alert" style="margin-top: 50px">

	<form action="backend/add_to_cart.jsp" method="POST">

        <p align="center">
            <a class="navbar-brand" >
              <img src="<% out.print(image); %>" width="300" height="300" class="d-inline-block align-top" alt="" loading="lazy">
			</a>
          <p align="center"> 
          <tr> <td> Product:</td><td> <% out.print(name); %></td></tr><br><br>
          <tr> <td>	Price:</td> <td><% out.print("Rs. " + price); %></td> </tr><br><br>
					<tr> <td>Size: </td><td><select name="size"><option value="s">S</option>
            <option value="m">M</option><option value="l">L</option></select></td> </tr><br><br>
			<tr> <td>Quantity: </td><td><select name="quantity"><option value="1">1</option>
						<option value="2">2</option><option value="3">3</option><option value="4">4</option>
						<option value="5">5</option><option value="6">6</option><option value="7">7</option>
						<option value="8">8</option><option value="9">9</option><option value="10">10</option></select></td> </tr><br><br>
          <tr> <td>About: </td> <td><% out.print(description); %></td> </tr><br><br>
          <input type=hidden value=<%out.print(pid); %> name="pid">
		  <tr> <td> <input class="btn btn-outline-dark" type="submit" value="Add to cart" name="Cart"></td> <td><input class="btn btn-outline-dark" type="submit" value="Buy now" name="Buy"></td> </tr><br><br>
		  </p>
		</p>
		</form>
    </div>
  </div>

<%
}
%>

    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
  
  
  
  
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


  
  
  </body>
</html>
