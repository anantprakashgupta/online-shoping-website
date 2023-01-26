<!DOCTYPE html>
<html>
<head>
	<title>Admin login page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>


	<nav class="navbar navbar-expand-md navbar-dark bg-dark">
		<a class="navbar-brand" href="#">PkMart</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent">
			<span class="navbar-toggler-icon"></span>
		</button>


		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mx-auto">
			<li class="nav-item active">
					<a class="nav-link" href="index.jsp">Home</a>
				</li>
<%
 Object user=session.getAttribute("current_user2");
 if(user==null){
 %>
				
				<a class="nav-link" href="login.jsp">Admin Login</a>
				</li>
				<li class="nav-item">
		
	 <%
}else{
%>			
				<a class="nav-link" href="add_category.jsp">Add Category</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="category_list.jsp">Category list</a>
				</li>
				 <li class="nav-item">
					<a class="nav-link" href="add_product.jsp">Add Product</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="product_list.jsp">Product list</a>
				</li>
				
				<li class="nav-item">
					<a class="nav-link" href="logout.jsp">Logout</a>
				</li>
			</ul>

  <%
}
%>
			<form class="form-inline">
				<input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
				<button class="btn btn-light my-sm-0" type="submit">Search</button>
			</form>

		</div>
	</nav>
	

</body>
</html>



 
