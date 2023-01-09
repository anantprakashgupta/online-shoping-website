<!DOCTYPE html>
<%@page import="dao.SearchDAO"%>
<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<html>
<head>
	<title>search product</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color:moccasin">
<div style="width: 100%; height: 60px; background-color: dodgerblue">
<%
Object pname= request.getParameter("pname");
Object prize= request.getParameter("prize");
Object description= request.getParameter("description");

Product p=new Product();
p.setPname(pname.toString());
//p.setPrize(prize.toString());
//p.setDescription(description.toString());

%>
<style type="text/css">
.header a{
 	text-decoration: none;
 	color: white;
 	font-family:Lucida Calligraphy;
 }		
</style>
		<img src="mart.png" width="300" height="260" style="margin-top:-100px;">
		<div style="float: right; display: block;padding: 4px 50px; margin-right:400px;margin-top: 10px;font-size: 25px;">
		<div class="header">
		<tr color="white">
				<td><a href="about.jsp">About</td></a>
				<td><a href="contact.jsp">Contact</td></a>
				<td><a href="www.facebook.com">Share on facebook</td></a>
			</tr></div>
		</div>
	</div>
<marquee style="color:red" behavior="alternate">Hello Good Morning Users Today sale on 50% Discount any items</marquee>

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
	<center>
	<% 
	ArrayList<Product> al=SearchDAO.SearchProduct(p);
	for(Product c : al){
		if(al.next==true) {
			System.out.println("yes");
			
		}else {
			System.out.println("file not found");
		}
		

%>     <div style="margin-top:20px;">
		<h6 style="color:red">Product name-<%=c.getPname() %> </h6>
		<h6>Color-<%=c.getDescription() %> </h6>
		<h6>Prize-<%=c.getPrize() %> </h6>
		
		<td><button style="background: rgba(0, 0, 0, 0.015);"><a href="buy_product_on_search_list.jsp?pname=<%=c.getPname()%>&prize=<%=c.getPrize() %>&description=<%=c.getDescription() %>" style="text-decoration:none;background-color:red;color:white">Add Cart</a></td></button>
		<td><button style="background: rgba(0, 0, 0, 0.015);" onclick="validate()"><a href="buy_process_direct.jsp?pname=<%=p.getPname()%>&prize=<%=p.getPrize() %>&description=<%=p.getDescription() %>" style="text-decoration:none;background-color:red;color:white">Buy</a></td></button>
		</div>
<%	System.out.println(c.getPrize());  
	}
	%>
	</center>
	
</body>

</html>

