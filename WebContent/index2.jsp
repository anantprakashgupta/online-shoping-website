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
<marquee style="color:yellow" behavior="alternate">Hello Good Morning Users Today sale on 50% Discount any items</marquee>

	<nav class="navbar navbar-expand-md navbar-light bg-light">
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

	 
