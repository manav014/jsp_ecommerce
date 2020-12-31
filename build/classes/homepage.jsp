<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!--HTML5 DECLARARTION-->
 <!DOCTYPE>
 <html lang="en" dir="ltr">
   <head>
     <!--all meta tags-->
     <meta charset="utf-8">
     <meta name="viewport" content="width=device-width,initial-scale=1">
     <title>Home Page</title>
     <!--Bootstrap CSS and other CSS files-->
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
   <!--Bootstrap JS and other JS files-->
      <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>


  </head>
   <body>
<%@page import="java.sql.*"%>
<%@ include file = "../backend/database_connection.jsp" %>
<%
String u = (String)session.getAttribute("username");
%>
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
                         <a class="nav-link" href="<% if(session.getAttribute("username")==null){ out.println("login.jsp");} else if(u.equals("admin")){ out.println("admin_profile.jsp");} else{out.println("profile.jsp");}%>">
                             <img src="assets/log.png" width="30" height="30"/>
                         </a>
                     </li>



 <% if(session.getAttribute("username")!=null){%>

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
		<%} %>
     </nav>

   <nav class="navbar navbar-light bg-dark justify-content-between ">
     <a class="navbar-brand mx-auto text-light" href="homepage.jsp"><b>Home</b></a>
   <a class="navbar-brand mx-auto text-light" href="menwear.jsp"><b>Men's Wear</b></a>
      <a class="navbar-brand mx-auto text-light" href="womenwear.jsp"><b>Women's Wear</b></a>
      <a class="navbar-brand mx-auto text-light" href="kidswear.jsp"><b>Kid's Wear</b></a>
      <a class="navbar-brand mx-auto text-light" href="menfootwear.jsp"><b>Men's FootWear</b></a>
      <a class="navbar-brand mx-auto text-light" href="womenfootwear.jsp"><b>Women's FootWear</b></a>
     <form class="form-inline ">
       <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
       <button type="submit" class="btn btn-dark">
         <img src="assets/search.png" width="30" height="30"/>
       </button>
       <!-- <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> -->
     </form>
   </nav>
 <br>
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
     <ol class="carousel-indicators">
       <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
     </ol>
     <div class="carousel-inner">
       <div class="carousel-item active">
         <img class="d-block w-100" src="assets/61.webp" alt="First slide">
       </div>
       <div class="carousel-item">
         <img class="d-block w-100" src="assets/62.webp" alt="Second slide">
       </div>
       <div class="carousel-item">
         <img class="d-block w-100" src="assets/63.webp" alt="Third slide">
       </div>
     </div>
     <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
       <span class="carousel-control-prev-icon" aria-hidden="true"></span>
       <span class="sr-only">Previous</span>
     </a>
     <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
       <span class="carousel-control-next-icon" aria-hidden="true"></span>
       <span class="sr-only">Next</span>
     </a>
   </div>

<br><br>
   <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
     <ol class="carousel-indicators">
       <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
       <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
     </ol>
     <div class="carousel-inner">
       <div class="carousel-item active">
         <img class="d-block w-100" src="assets/64.webp" alt="First slide">
       </div>
       <div class="carousel-item">
         <img class="d-block w-100" src="assets/65.webp" alt="Second slide">
       </div>
       <div class="carousel-item">
         <img class="d-block w-100" src="assets/66.webp" alt="Third slide">
       </div>
     </div>
     <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
       <span class="carousel-control-prev-icon" aria-hidden="true"></span>
       <span class="sr-only">Previous</span>
     </a>
     <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
       <span class="carousel-control-next-icon" aria-hidden="true"></span>
       <span class="sr-only">Next</span>
     </a>
   </div>


   <div class="alert alert-light" role="alert">




     <br>

     <img class="card-img-top img-fluid img-thumbnail" src="assets/67.webp" height="10%">


     <div class="row">
       <div class="col-md-4">

     <div class="card mrcard text-white bg-light mb-3 mx-auto" style="width: 15rem; height:40rem;">
       <img class="card-img-top img-fluid img-thumbnail" src="assets/11.jpeg" height="10%">
       <div class="card-body">
         <h5 class="card-title text-dark">Mini Dress</h5>
         <p class="card-text text-dark">Floral Print Dress Casual Cute Solid V Neck Dalmatian Ruffle Trim Tie Boho Beach High Waist Mini Dresses Women Fit and Flare Multicolor Dress.</p>
         <div class="container">
           <form action="product.jsp" method="POST">
  			<button class="btn btn-dark" type="submit" value="wwc1p1sm" name="productId"> View Item </button>
  		  </form>
           </div>
       </div>
     </div>
     </div>

     <div class="col-md-4">
     <div class="card mrcard text-white bg-dark mb-3 mx-auto" style="width: 15rem;height:40rem;">
       <img class="card-img-top img-fluid img-thumbnail" src="assets/50.jpeg" height="600" >
       <div class="card-body">
         <h5 class="card-title">Full Sleeve Boys Sweatshirt</h5>
         <p class="card-text">Crafted from 100% cotton this sweatshirt from the AW18 Dsquared2 kids collection </p>
         <div class="container">
           <br> <br>
     <form action="product.jsp" method="POST">
       <button class="btn btn-light" type="submit" value="kwc1p2sm" name="productId"> View Item </button>
       </form>
           </div>
       </div>
     </div>
     </div>


     <div class="col-md-4">
     <div class="card mrcard text-dark bg-light mb-3 mx-auto" style="width: 15rem;height:40rem;">
       <img class="card-img-top img-fluid img-thumbnail" src="assets/15.jpeg">
       <div class="card-body">
         <h5 class="card-title">Solid Men Round Neck Red T-Shirt</h5>
         <p class="card-text">The purple tree Men's Printed Cotton T-Shirt - 1 pc, Printed Cotton Tshirt for Men, Men Tshirt, Tshirt.</p>
         <div class="container">
           <br>
   	  <form action="product.jsp" method="POST">
    			<button class="btn btn-dark" type="submit" value="mwc1p3sm" name="productId"> View Item </button>
    		  </form>
           </div>
       </div>
     </div>
   </div>

   </div>

   </div>

 </div>

 <div class="alert alert-light" role="alert">




   <br>


   <div class="row">
     <div class="col-md-4">
     <div class="card mrcard text-dark bg-light mb-3 mx-auto" style="width: 15rem;height:40rem;">
       <img class="card-img-top img-fluid img-thumbnail" src="assets/3.jpg">
       <div class="card-body">
         <h5 class="card-title">Ruffled Saree</h5>
         <p class="card-text">Steal the show with these gorgeous ruffled sarees. Ruffled saree ideas for wedding and more inspirations for wedding.</p>
         <div class="container">
     	<form action="product.jsp" method="POST">
      			<button class="btn btn-dark" type="submit" value="wwc3p2sm" name="productId"> View Item </button>
      		  </form>
           </div>
       </div>
     </div>
     </div>

     <div class="col-md-4">
     <div class="card mrcard text-white bg-dark mb-3 mx-auto" style="width: 15rem;height:40rem;">
       <img class="card-img-top img-fluid img-thumbnail" src="assets/44.jpeg" >
       <div class="card-body">
         <h5 class="card-title">Unistar Jungle Boots</h5>
         <p class="card-text">Oil Stain & Water Resistant- Extra Cushion InnerSole -Light Weight Trekking Shoes Boots For Men (OliveGreen) Boots For Men  (Multicolor).</p>
         <div class="container">
           <br><br><br><br>
     	<form action="product.jsp" method="POST">
      			<button class="btn btn-light" type="submit" value="mfwc3p2sm" name="productId"> View Item </button>
      		  </form>
           </div>
       </div>
     </div>
     </div>


     <div class="col-md-4">

    <div class="card mrcard text-dark bg-light mb-3 mx-auto" style="width: 15rem;height:40rem;">
     <a href="#"><img class="card-img-top img-fluid img-thumbnail" src="assets/52.jpeg"></a>
     <div class="card-body">
       <h5 class="card-title">Boys Printed Pure Cotton T Shirt</h5>
       <p class="card-text">Wild Thunder T Shirt - Premium Quality Half Sleeve Round Neck Plain 100% Cotton Durable High Quality Crew neck for Kids.</p>
       <div class="container">
         <br><br>
     <form action="product.jsp" method="POST">
         <button class="btn btn-dark" type="submit" value="kwc2p1sm" name="productId"> View Item </button>
         </form>
         </div>
     </div>
    </div>
    </div>

 </div>

 </div>

</div>
<div class="alert alert-light" role="alert">

<div class="alert text-light" align="center" role="alert">
  <h3 style="color:hsl(355, 44%, 22%)"><i><b>Shirts</b></i></h3>
  </div>
<br>



<div class="row">
  <div class="col-md-4">

<div class="card mrcard text-dark bg-light mb-3 mx-auto" style="width: 15rem;height:40rem;">
  <a href="#"><img class="card-img-top img-fluid img-thumbnail" src="assets/16.jpeg" ></a>
  <div class="card-body">
    <h5 class="card-title">Men Printed Formal Spread Shirt</h5>
    <p class="card-text">Off Road Military Fashion Handsome Style Slim Fit Cotton Long-sleeved Men Shirt - Khaki M.</p>
    <div class="container">
	<form action="product.jsp" method="POST">
 			<button class="btn btn-dark" type="submit" value="mwc2p1sm" name="productId"> View Item </button>
 		  </form>
      </div>
  </div>
</div>
</div>

<div class="col-md-4">
<div class="card mrcard text-white bg-dark mb-3 mx-auto" style="width: 15rem;height:40rem;">
  <img class="card-img-top img-fluid img-thumbnail" src="assets/7.jpg">
  <div class="card-body">
    <h5 class="card-title">Ribbon design Pants</h5>
    <p class="card-text">This pants feature a side pockets and letter print design.amde by natural synthetic comfortable design.</p>
    <div class="container">
	<form action="product.jsp" method="POST">
 			<button class="btn btn-light" type="submit" value="wwc4p2sm" name="productId"> View Item </button>
 		  </form>
      </div>
  </div>
</div>
</div>


<div class="col-md-4">
<div class="card mrcard text-dark bg-light mb-3 mx-auto" style="width: 15rem;height:40rem;">
 <img class="card-img-top img-fluid img-thumbnail" src="assets/57.jpeg">
 <div class="card-body">
   <h5 class="card-title">Track Pant For Boys & Girls </h5>
   <p class="card-text">This pants feature a side pockets and letter print design.amde by natural synthetic comfortable design.</p>
   <div class="container">
     <br><br>
 <form action="product.jsp" method="POST">
     <button class="btn btn-dark" type="submit" value="kwc4p2sm" name="productId"> View Item </button>
     </form>
     </div>
 </div>
</div>
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


</body>
