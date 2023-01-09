<!DOCTYPE html>
<html>
<head>
	<title>index first page</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color:moccasin">
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
	<style type="text/css">
		/* SLIDER */

#slider {

  height: 200px;
  width: 1024px;
 margin-top:20px;
 margin-left:180px;
}

#mask {
  overflow: hidden;
  height: 200px;
}

#mask img {
  width: 100%;
  height: 100%;
}

#slider ul {
  margin: 0;
  padding: 0;
  position: relative;
}

#slider li {
  width: 1024px;
  height: 200px;
  position: absolute;
  top: -325px;
  list-style: none;
}

#slider li.firstanimation {
  -moz-animation: cycle 30s linear infinite;
  -webkit-animation: cycle 30s linear infinite;
}

#slider li.secondanimation {
  -moz-animation: cycletwo 30s linear infinite;
  -webkit-animation: cycletwo 30s linear infinite;
}

#slider li.thirdanimation {
  -moz-animation: cyclethree 30s linear infinite;
  -webkit-animation: cyclethree 30s linear infinite;
}

#slider li.fourthanimation {
	-moz-animation:cyclefour 30s linear infinite;
	-webkit-animation:cyclefour 30s linear infinite;		
}
#slider li.fifthanimation {
	-moz-animation:cyclefive 30s linear infinite;
	-webkit-animation:cyclefive 30s linear infinite;		
}

#slider:hover li,
#slider:hover .progress-bar {
  -moz-animation-play-state: paused;
  -webkit-animation-play-state: paused;
}


/* PROGRESS BAR */

.progress-bar {
  position: relative;
  top: -5px;
  width: 1024px;
  height: 5px;
  background: green;
  -moz-animation: fullexpand 5s ease-out infinite;
  -webkit-animation: fullexpand 5s ease-out infinite;
}


/* ANIMATION */
@-moz-keyframes cycle {
	0%  { top:0px; }
	4%  { top:0px; } 
	16% { top:0px; opacity:1; z-index:0; } 
	20% { top:325px; opacity:0; z-index:0; } 
	21% { top:-325px; opacity:0; z-index:-1; }
	92% { top:-325px; opacity:0; z-index:0; }
	96% { top:-325px; opacity:0; }
	100%{ top:0px; opacity:1; }
	
}
@-moz-keyframes cycletwo {
	0%  { top:-325px; opacity:0; }
	16% { top:-325px; opacity:0; }
	20% { top:0px; opacity:1; }
	24% { top:0px; opacity:1; } 
	36% { top:0px; opacity:1; z-index:0; } 
	40% { top:325px; opacity:0; z-index:0; }
	41% { top:-325px; opacity:0; z-index:-1; } 
	100%{ top:-325px; opacity:0; z-index:-1; }
}
@-moz-keyframes cyclethree {
	0%  { top:-325px; opacity:0; }
	36% { top:-325px; opacity:0; }
	40% { top:0px; opacity:1; }
	44% { top:0px; opacity:1; } 
	56% { top:0px; opacity:1; } 
	60% { top:325px; opacity:0; z-index:0; }
	61% { top:-325px; opacity:0; z-index:-1; } 
	100%{ top:-325px; opacity:0; z-index:-1; }
}
@-moz-keyframes cyclefour {
	0%  { top:-325px; opacity:0; }
	56% { top:-325px; opacity:0; }
	60% { top:0px; opacity:1; }
	64% { top:0px; opacity:1; }
	76% { top:0px; opacity:1; z-index:0; }
	80% { top:325px; opacity:0; z-index:0; }
	81% { top:-325px; opacity:0; z-index:-1; }
	100%{ top:-325px; opacity:0; z-index:-1; }
}
@-moz-keyframes cyclefive {
	0%  { top:-325px; opacity:0; }
	76% { top:-325px; opacity:0; }
	80% { top:0px; opacity:1; }
	84% { top:0px; opacity:1; }
	96% { top:0px; opacity:1; z-index:0; }
	100%{ top:325px; opacity:0; z-index:0; }
}

@-webkit-keyframes cycle {
	0%  { top:0px; }
	4%  { top:0px; }
	16% { top:0px; opacity:1; z-index:0; } 
	20% { top:325px; opacity:0; z-index:0; }
	21% { top:-325px; opacity:0; z-index:-1; }
	50% { top:-325px; opacity:0; z-index:-1; }
	92% { top:-325px; opacity:0; z-index:0; }
	96% { top:-325px; opacity:0; }
	100%{ top:0px; opacity:1; }
	
}
@-webkit-keyframes cycletwo {
	0%  { top:-325px; opacity:0; }
	16% { top:-325px; opacity:0; }
	20% { top:0px; opacity:1; }
	24% { top:0px; opacity:1; } 
	36% { top:0px; opacity:1; z-index:0; } 
	40% { top:325px; opacity:0; z-index:0; }
	41% { top:-325px; opacity:0; z-index:-1; }  
	100%{ top:-325px; opacity:0; z-index:-1; }
}
@-webkit-keyframes cyclethree {
	0%  { top:-325px; opacity:0; }
	36% { top:-325px; opacity:0; }
	40% { top:0px; opacity:1; }
	44% { top:0px; opacity:1; } 
	56% { top:0px; opacity:1; z-index:0; } 
	60% { top:325px; opacity:0; z-index:0; } 
	61% { top:-325px; opacity:0; z-index:-1; }
	100%{ top:-325px; opacity:0; z-index:-1; }
}
@-webkit-keyframes cyclefour {
	0%  { top:-325px; opacity:0; }
	56% { top:-325px; opacity:0; }
	60% { top:0px; opacity:1; }
	64% { top:0px; opacity:1; }
	76% { top:0px; opacity:1; z-index:0; }
	80% { top:325px; opacity:0; z-index:0; }
	81% { top:-325px; opacity:0; z-index:-1; }
	100%{ top:-325px; opacity:0; z-index:-1; }
}
@-webkit-keyframes cyclefive {
	0%  { top:-325px; opacity:0; }
	76% { top:-325px; opacity:0; }
	80% { top:0px; opacity:1; }
	84% { top:0px; opacity:1; }
	96% { top:0px; opacity:1; z-index:0; }
	100%{ top:325px; opacity:0; z-index:0; }
}

/* ANIMATION BAR */
@-moz-keyframes fullexpand {
    0%, 20%, 40%, 60%, 80%, 100% { width:0%; opacity:0; }
    4%, 24%, 44%, 64%, 84% { width:0%; opacity:0.3; }
   16%, 36%, 56%, 76%, 96% { width:100%; opacity:0.7; }
   17%, 37%, 57%, 77%, 97% { width:100%; opacity:0.3; }
   18%, 38%, 58%, 78%, 98% { width:100%; opacity:0; }	
}
@-webkit-keyframes fullexpand {
    0%, 20%, 40%, 60%, 80%, 100% { width:0%; opacity:0; }
    4%, 24%, 44%, 64%, 84% { width:0%; opacity:0.3; }
   16%, 36%, 56%, 76%, 96% { width:100%; opacity:0.7; }
   17%, 37%, 57%, 77%, 97% { width:100%; opacity:0.3; }
   18%, 38%, 58%, 78%, 98% { width:100%; opacity:0; }	
}
	</style>
	<div id="slider">
  <div id="mask">
    <ul>
      <li id="first" class="firstanimation">
        <a href="#">
          <img src="del.PNG" alt="Cashback MRG Forex 2020" />
        </a>
      </li>

      <li id="second" class="secondanimation">
        <a href="#">
          <img src="product10.jpg">
        </a>
      </li>

      <li id="third" class="thirdanimation">
        <a href="#">
          <img src="product22.png">
        </a>
      </li>
      <li id="fourth" class="fourthanimation">
        <a href="#">
          <img src="product8.jpg">
        </a>
      </li>

      <li id="fifth" class="fifthanimation">
        <a href="#">
          <img src="product6.jpg" >
        </a>
      </li>
    </ul>
  </div>
  <div class="progress-bar"></div>
</div>

</body>
</html>
<%@include file="footer.jsp" %>
 	 <%
}else{
%>
       
  <%
}
%>

