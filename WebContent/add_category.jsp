<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product add</title>
</head>
 <body style="background-color:#a58c8c;">
<%@ include file="Admin_login_page.jsp" %>

	<style type="text/css">
	body{
	
	}
	input[type=text]{
  		width: 82%; 
  		font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
  		padding: 10px;
  		font-size: 0.9em;
  		border-radius: 5px;
  		background: rgba(0, 0, 0, 0.08);
  		margin-top: 30px;
  		margin-left:10px;
  		border-color:white;
  		color:white;
  	
	}
	input[type=submit]{
        width: 88%;
       padding: 10px;
       font-size: 15px;
       font-family: News701 BT;
       border-radius: 5px;
       background-color:#DC143C;
       color: white;
       height:50px;
       margin-left:10px;
	}
	input[type=submit]:hover{
    color: white;
     background-color: #FF0000;
	}
	::placeholder{
	color:white;
	font-size:30px;
	font-family:Monotype Corsiva;
	}
	}
</style>

	<center>						
	<h1 style="margin-top:60px; color:white; text-shadow: 4px 4px black;  font-size: 30px; font-family: Lucida Calligraphy;">Add Category here...</h1>
	<form action="add_category_task.jsp" method="get">
  <fieldset style=" border-color: white; border-width: 8px; width: 400px; height: 280px;">
    <legend style="color:white; font-size: 30px; font-family: Cooper;"> <img src="addc.png" height="100px" width="100px" ></legend>
  
   <input type="text" name="cname" placeholder="Enter Category name...." required="enter item.."><br><br>
   
   <input type="submit" value="Add"><br><br>
 

</fieldset>
   
</form>

</center>


</body>
</html>

</body>
</html>