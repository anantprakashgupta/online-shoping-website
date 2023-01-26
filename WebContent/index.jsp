<!DOCTYPE html>
<html>
<head>
	<title>index first page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color:#a58c8c;">
<div style="width: 100%; height: 60px; background-color: dodgerblue">

<style type="text/css">
.header a{
 	text-decoration: none;
 	color: white;
 	font-family:Lucida Calligraphy;
 }		
</style>
		
		<img src="mart.png" width="300" height="260" style="margin-top:-100px;position:absolute;">
		<div style="float: right; position:absolute; display: block;padding: 4px 50px; margin-right:400px;margin-top: 10px;font-size: 25px;">
		<div class="header" style="margin-left:300px;">
		<tr color="white">
				<td><a href="about.jsp">About</td></a>
				<td><a href="contact.jsp">Contact</td></a>
				<td><a href="www.facebook.com">Share on facebook</td></a>
			</tr></div>
		</div>
 <%
 Object user4=session.getAttribute("current_user");
 if(user4==null){
 %>    
    
 	 <%
}else{
%>			
	 <marquee behavior="slide" scrollamount="6" direction="up"><h4 style="color:white;float:right;margin-top:15px;margin-right:30px;">Hi, <%=user4 %></h4></marquee> 
<%}
 %> 
	</div>
<marquee style="color:red" behavior="alternate">Hello Good Morning Users Today sale on 50% Discount any items</marquee>

	<nav class="navbar navbar-expand-md navbar-light "style="background-color: gainsboro;">
		<a class="navbar-brand" href="index.jsp">PkMart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mx-auto">
			<li class="nav-item active">
					<a class="nav-link" href="index.jsp">Home</a>
				</li>
<%
 Object user=session.getAttribute("current_user");
 if(user==null){
 %>
				
				<a class="nav-link" href="Admin_login_page.jsp">Admin Login</a>
				</li>
				<li class="nav-item">
				<li class="nav-item">
					<a class="nav-link" href="user_login.jsp">User Login</a>
				</li>
					<a class="nav-link" href="category_list_user.jsp">Category list</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="product_list_User.jsp">Product list</a>
				</li>
	 <%
}else{
%>			
				
				
					<a class="nav-link" href="category_list_user.jsp">Category list</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="product_list_User.jsp">Product list</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="MyCart.jsp">Mycart</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="logoutUser.jsp">Logout</a>
				</li>
			</ul>
  <%
}
%>
			<form class="form-inline" action="Search_task.jsp">
				<input class="form-control mr-sm-2" type="search" name="pname" placeholder="Search items.." aria-label="Search">
				<button class="btn btn-light my-sm-0" type="submit">Search</button>
			</form>

		</div>
	</nav>
</body>
</html>

<%
 Object user2=session.getAttribute("current_user");
 if(user2==null){
 %>
<html>
<head>
	<title></title>
</head>
<body>
<style>
*{
  margin:0px;
  padding:0px;
}

h1{
  text-align: center;
  margin-top: 30px;
  font-family: 'Source Serif Pro', serif;
}

.buttons{
    font-size: 22px;
    margin-top: 2%;
    margin-left: 4.2%;
}

.fa:hover{
    color: darkcyan;
}

.container{
  display: flex;
  flex-flow: column nowrap;
}
/*CSS Grid*/
.section-grid{
   display: flex; 
   padding-left: 25px;
   padding-right: 25px;
}
.grid-prod{
  flex: 1 1 auto;
  display: flex; 
  flex-flow: row wrap;  
}
.prod-grid{
  flex: 1 1 25%;
  margin:2%;
  padding:12px;
  border: 2px solid #000;
}

.prod-grid img{
  width:100%;
}
h3, p{
  text-align: center;
  line-height: 1.5;
  letter-spacing: 1px;
}

.btn{
    background: darkcyan;
    border: 1px solid darkcyan;
    border-radius: 6px;
    color: white;
    font-size: 22px;
    width: 200px;
    height: 40px;
    position: right;
    margin: 10px; 
    letter-spacing: 1px;
    display: inline-block;
}
.btn:hover{
    background: white;
    border: 2px solid darkcyan;
    border-radius: 6px;
    color: darkcyan;
    font-size: 22px;
    width: 200px;
    height: 40px;
    position: right;
    margin: 10px; 
    letter-spacing: 1px;
    font-weight: bold;
    display: inline-block;
}
button{
  float: right;
}

/*CSS List*/
.section-list{
   display: flex; 
   padding: 2% 4%; 
}
table {
  width: 100%;
  margin: 10px 10px;
  border:2px solid #000;
  border-collapse: collapse;
  border-spacing: 0;
}
table tr td {
  padding: 10px;
  border-top: 2px solid #000;
}
tr td img{
  width:100%;
}
.btn-list{
    background: darkcyan;
    border: 1px solid darkcyan;
    border-radius: 6px;
    color: white;
    font-size: 22px;
    width: 200px;
    height: 40px;
    position: right;
    margin: 10px; 
    margin-top: 10%;
    letter-spacing: 1px;
    display: inline-block;
    
}
.btn-list:hover{
    background: white;
    border: 2px solid darkcyan;
    
    color: darkcyan;

    margin: 10%; 

}
button{
  float: right;
}

@media (min-width : 320px) and (max-width : 480px) { 
  .section-list, .buttons{
    display: none;
  }
}
</style>
	
	 <title>Product List and Grid View</title>
<meta name"viewport" content="width=device-width, user-scalable=no, initial=scale=1.0, maximun-scale=1.0, minimun-scale=1.0" >

<h1>Product List</h1>

<!--Buttons of grid and list-->
 <div class="buttons">
<i class="fa fa-th-large"  id="showdiv1" aria-hidden="true"></i> &nbsp;  <i class="fa fa-th-list" id="showdiv2" aria-hidden="true"></i> 
</div>

<div class="container">
  <!--Product Grid-->
  <div id="div1">
    <section class="section-grid">
    <div class="grid-prod">
     <div class="prod-grid"><img src="https://images.unsplash.com/photo-1542291026-7eec264c27ff?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="kalita">
       <h3>Shoes </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn. </p>
 <button class="btn"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
     </div>
     <div class="prod-grid"><img src="https://images.unsplash.com/photo-1505740420928-5e560c06d30e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cHJvZHVjdHN8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60" alt="kalita">
       <h3>HedPhone. </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
 <button class="btn"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
     </div>
      <div class="prod-grid"><img src="https://rukminim1.flixcart.com/image/200/200/l2f20sw0/shopsy-hand-messenger-bag/b/4/n/stylish-women-shoulder-bag-shoper-1red-hobo-khatushyam-original-imagdrmucazmpztg.jpeg?q=70" alt="kalita">
       <h3>Ledies Bag </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
 <button class="btn"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
     </div>
      <div class="prod-grid"><img src="https://rukminim1.flixcart.com/image/200/200/l48s9zk0/shirt/w/s/r/m-st-pv-purple-majestic-man-original-imagf6g9knyyrxvp.jpeg?q=70" alt="kalita">
       <h3>Shirt</h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
 <button class="btn"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
     </div>
      <div class="prod-grid"><img src="https://rukminim1.flixcart.com/image/200/200/k6qsn0w0/tablet/3/q/z/lenovo-za5g0047in-original-imafp4w7qvpnprv5.jpeg?q=70" alt="kalita">
       <h3>Mobile</h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
 <button class="btn"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
     </div>
      <div class="prod-grid"><img src="https://rukminim1.flixcart.com/image/200/200/l3j2cnk0/electric-kettle/q/z/c/-original-imagemy6egjb6zme.jpeg?q=70" alt="kalita">
       <h3>Kitchen kettles</h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
 <button class="btn"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button>
     </div>
    </div>
     </section> 
  </div>
 <!--Product List-->         
  <div id="div2" style="display:none;">
    <section class="section-list">
      <table>
        <tr>
          <td><img src="https://rukminim1.flixcart.com/image/200/200/kqpj4i80/ring/8/1/8/adjustable-cfr-k149-ring-set-karishma-kreations-original-imag4ntug2g26twf.jpeg?q=70" alt="kalita"><td>
          <td>  <h3>Smart  Bag </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
           <button class="btn-list"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button></td>
        </tr>
        <tr>
          <td width="30%"><img src="https://rukminim1.flixcart.com/image/200/200/ji0lbbk0/recliner/q/n/7/maroon-pu-leatherette-emporiummaroon-westido-original-imaf5wr5x27c6gaq.jpeg?q=70" alt="kalita"><td>
          <td>  <h3>Sofa </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
           <button class="btn-list"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button></td>
        </tr>
        <tr>
          <td width="30%"><img src="https://rukminim1.flixcart.com/image/200/200/keg02a80/wardrobe-closet/f/y/f/particle-board-bewtri000500800620-kurlon-wenge-original-imafv49kgfrmmxbq.jpeg?q=70" alt="kalita"><td>
          <td>  <h3>Almira </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
           <button class="btn-list"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button></td>
        </tr>
        <tr>
          <td width="30%"><img src="https://rukminim1.flixcart.com/flap/200/200/image/83ed05de14e2176d.jpg?q=70" alt="kalita"><td>
          <td>  <h3>Shoes </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
           <button class="btn-list"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button></td>
        </tr>
        <tr>
          <td width="30%"><img src="https://images.contentful.com/3h0qt25be5vd/1ojeAoISmMSKysKIOKEWGi/22b6344383ffabc7e250f1eed88287ae/Brew_Guide-KalitaWave-Step03.jpg?w=960&h=640&fm=jpg&q=70" alt="kalita"><td>
          <td>  <h3>Ph'nglui mglw'nafh. </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
           <button class="btn-list"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button></td>
        </tr>
        <tr>
          <td width="30%"><img src="https://rukminim1.flixcart.com/image/200/200/kx50gi80/pen/h/z/k/119766-flair-original-imag9nzubznagufg.jpeg?q=70" alt="kalita"><td>
          <td>  <h3>Pen </h3>    
            <p>Ph'nglui mglw'nafh Cthulhu R'lyeh wgah'nagl fhtagn.</p>
           <button class="btn-list"> Buy <i class="fa fa-shopping-cart" aria-hidden="true"></i></button></td>
        </tr>
      </table>
     </section> 
  </div>
</div>  
    
    <script>
    $(function() {
        $('#showdiv1').click(function() {
            $('div[id^=div]').hide();
            $('#div1').show();
        });
        $('#showdiv2').click(function() {
            $('div[id^=div]').hide();
            $('#div2').show();
        });

    })
    </script>
	

</body>
</html>
<%@include file="footer.jsp" %>
 	 <%
}else{
%>
       
  <%
}
%>

