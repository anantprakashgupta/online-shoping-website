
<!DOCTYPE html>
<html>
 
<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="footer, address, phone, icons" />
 
	<title>Responsive Footer</title>
 
	<link rel="stylesheet" href="style.css">
	
	<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css">
 
	<link href="http://fonts.googleapis.com/css?family=Cookie" rel="stylesheet" type="text/css">
 
</head>
	<body>
 <style type="text/css">
 	
 	*{
	padding:0;
	margin:0;
}
 

body{
	font:16px/1.6 Arial,  sans-serif;
}
 
header{
	text-align: center;
	padding-top: 100px;
	margin-bottom:190px;
}
 
header h1{
	font: normal 32px/1.5 'Open Sans', sans-serif;
	color: #3F71AE;
	padding-bottom: 16px;
}
 
header h2{
	color: #F05283;
}
 
header span{
	color: #3F71EA;
}
 
 
/* The footer is fixed to the bottom of the page */
 
footer{
	position: fixed;
	bottom: 0;
}
 
@media (max-height:800px){
	footer { position: static; }
	header { padding-top:40px; }
}
 
 
.footer-distributed{
	background-color: darkslategray;
	box-sizing: border-box;
	width: 100%;
	text-align: left;
	font: bold 16px sans-serif;
	padding: 50px 50px 60px 50px;
	margin-top: 80px;
	height:280px;
}
 
.footer-distributed .footer-left,
.footer-distributed .footer-center,
.footer-distributed .footer-right{
	display: inline-block;
	vertical-align: top;
}
 
/* Footer left */
 
.footer-distributed .footer-left{
	width: 30%;
}
 
.footer-distributed h3{
	color:  #ffffff;
	font: normal 36px 'Cookie', cursive;
	margin: 0;
}
 
/* The company logo */
 
.footer-distributed .footer-left img{
	width: 30%;
}
 
.footer-distributed h3 span{
	color:  #e0ac1c;
}
 
/* Footer links */
 
.footer-distributed .footer-links{
	color:  #ffffff;
	margin: 20px 0 12px;
}
 
.footer-distributed .footer-links a{
	display:inline-block;
	line-height: 1.8;
	text-decoration: none;
	color:  inherit;
}
 
.footer-distributed .footer-company-name{
	color:  #8f9296;
	font-size: 14px;
	font-weight: normal;
	margin: 0;
}
 
/* Footer Center */
 
.footer-distributed .footer-center{
	width: 35%;
}
 
 
.footer-distributed .footer-center i{
	background-color:  #33383b;
	color: #ffffff;
	font-size: 25px;
	width: 38px;
	height: 38px;
	border-radius: 50%;
	text-align: center;
	line-height: 42px;
	margin: 10px 15px;
	vertical-align: middle;
}
 
.footer-distributed .footer-center i.fa-envelope{
	font-size: 17px;
	line-height: 38px;
}
 
.footer-distributed .footer-center p{
	display: inline-block;
	color: #ffffff;
	vertical-align: middle;
	margin:0;
}
 
.footer-distributed .footer-center p span{
	display:block;
	font-weight: normal;
	font-size:14px;
	line-height:2;
}
 
.footer-distributed .footer-center p a{
	color:  #e0ac1c;
	text-decoration: none;;
}
 
 
/* Footer Right */
 
.footer-distributed .footer-right{
	width: 30%;
}
 
.footer-distributed .footer-company-about{
	line-height: 20px;
	color:  #92999f;
	font-size: 13px;
	font-weight: normal;
	margin: 0;
}
 
.footer-distributed .footer-company-about span{
	display: block;
	color:  #ffffff;
	font-size: 18px;
	font-weight: bold;
	margin-bottom: 20px;
}
 
.footer-distributed .footer-icons{
	margin-top: 25px;
}
 
.footer-distributed .footer-icons a{
	display: inline-block;
	width: 35px;
	height: 35px;
	cursor: pointer;
	background-color:  #33383b;
	border-radius: 2px;
 
	font-size: 20px;
	color: #ffffff;
	text-align: center;
	line-height: 35px;
 
	margin-right: 3px;
	margin-bottom: 5px;
}
 
/* Here is the code for Responsive Footer */
/* You can remove below code if you don't want Footer to be responsive */
 
 
@media (max-width: 880px) {
 
	.footer-distributed .footer-left,
	.footer-distributed .footer-center,
	.footer-distributed .footer-right{
		display: block;
		width: 100%;
		margin-bottom: 40px;
		text-align: center;
	}
 
	.footer-distributed .footer-center i{
		margin-left: 0;
	}
 
}
 </style>





		
		<!-- The content of your page would go here. -->
 
		<footer class="footer-distributed">
 
			<div class="footer-left">
          <img src="mart.png">
				<h3>About<span>PkMart</span></h3>
 
				<p class="footer-links">
					<a href="#">Home</a>
					|
					<a href="#">Blog</a>
					|
					<a href="about.jsp">About</a>
					|
					<a href="contact.jsp">Contact</a>
				</p>
 
				<p class="footer-company-name">� 2019 PkMart Pvt Ltd</p>
			</div>
 
			<div class="footer-center">
			
 
				<div>
					<i class="fa fa-phone"></i>
					<p>+91-7903167633</p>
				</div>
				<div>
					<i class="fa fa-envelope"></i>
					<p><a href="mailto:support@eduonix.com">kumarguptaprakash126@gmail.com</a></p>
				</div>
			</div>
			<div class="footer-right">
				<p class="footer-company-about">
					<span>About the company</span>
					We offer the produts and items to buy 50% discount</p>
				<div class="footer-icons">
					<a href="#"><i class="fa fa-facebook"></i></a>
					<a href="#"><i class="fa fa-twitter"></i></a>
					<a href="#"><i class="fa fa-instagram"></i></a>
					<a href="#"><i class="fa fa-linkedin"></i></a>
					<a href="#"><i class="fa fa-youtube"></i></a>
				</div>
			</div>
		</footer>
	</body>
</html>