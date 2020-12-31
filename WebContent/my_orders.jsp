<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ include file="backend/database_connection.jsp" %>
<%@page import="java.sql.*"%>

<%
String u = null;
if(session.getAttribute("username")==null)
	response.sendRedirect("login.jsp");
else {
	u = (String) session.getAttribute("username");
%>
<!--HTML5 DECLARARTION-->
  <!DOCTYPE>
  <html lang="en" dir="ltr">
    <head>
      <!--all meta tags-->
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width,initial-scale=1">
      <title>My Orders</title>
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

    </nav>
	<div class="container">

<%
	int pag = 0;
	if(request.getParameter("page") == null) {pag = 1;}
		else {pag = Integer.parseInt(request.getParameter("page"));}

		int lowerlimit= (pag-1)*10;
		int noofrow= 10;
		String sel = "SELECT * from orders_log where username = ? limit ?, ?";
		PreparedStatement st = con.prepareStatement(sel);
		st.setString(1, u);
		st.setInt(2, lowerlimit);
		st.setInt(3, noofrow);
	ResultSet orders = st.executeQuery();
	if(orders.next()) {
		do {
		String pid = orders.getString("productId");
		//figure out product table
		String temp = pid;
		String table;
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

		//fetch the product details
		sel = "SELECT * FROM $table WHERE productId=?";
		st = con.prepareStatement(sel);
		st.setString(1, pid);
		ResultSet prod = st.executeQuery();
		prod.next();

%>
		<div class="alert alert-dark" role="alert" style="margin-top: 30px">
		<!-- This prints all the orders done by the user -->
		<div>
			<table>
				<tr> <td rowspan="4"> <img src = "<% out.print(prod.getString("image")); %>" alt="image" height="100" width="100"> </td> <td> <% out.print(prod.getString("name")); %> </td> </tr>
				<tr> 																									<td> Size: <% out.print(prod.getString("size")); %> </td> </tr>
				<tr>																				  					<td> Quantity: <% out.print(prod.getString("price")); %> </td> </tr>
				<tr> 																				   					<td> Total Price: <% out.print(Integer.parseInt(prod.getString("price")) * Integer.parseInt(orders.getString("quantity"))); %> </td> </tr>
				<tr> <td> Order Placed On: </td> 																<td> <% out.print(orders.getString("date")); %> </td> </tr>
			</table>
		</div>
		</div>

<%
	}
	while(orders.next());
	String s2= "select * from orders_log where username=?";
	PreparedStatement st2 = con.prepareStatement(s2);
	st2.setString(1, u);
	ResultSet result1 = st2.executeQuery();
	int pg = 0;
	while(result1.next()) 
		pg = pg + 1;
    pg = (pg + noofrow - 1) / noofrow;
%>
<center>
<%		   
		   for(int i=1; i<= pg; i++)
		   { %>
	      <a href= "my_orders.jsp?page=<% out.print(i); %>"><% out.print(i); %> </a>
		  <%
	}
	}
	else {

%></center>

		<br>
		<div class="alert text-info" align="center" role="alert">
      			<h4><b>You have not placed any orders till now..!</b></h4>
	  		</div>

<%
	}
}

%>
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
      Kartikeya Sharma <a href="https://www.linkedin.com/in/kartikeya-sharma-459990188"><img src="assets/link.png" width="20" height="20" alt=""></a> <a herf="https://github.com/savagecarol"><img src="assets/git.png" width="20" height="20" alt=""></a><br>
     under the guidance of Mr. Anand Kumar Srivastva
      </td>
      </tr>
      
       </table>
       </div>
</div>



</body>
</html>
