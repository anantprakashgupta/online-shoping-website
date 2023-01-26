<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Register page</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body style="background-color:#FFFFE0">
  <center>
  <img src="prakash.PNG" height="80px" width="800px" ><br>
  </center>
	<style type="text/css">
	body{
	background-image: url(back4.jpg);
	}
	input[type=text], input[type=password], input[type=email]{
  		width: 80%; 
  		font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
  		padding: 6px;
  		font-size: 0.9em;
  		border-radius: 5px;
  		background: rgba(0, 0, 0, 0.07);
  		margin-top: -30px;
	}
	input[type=submit]{
        width: 85%;
       padding: 10px;
       font-size: 15px;
       font-family: News701 BT;
       border-radius: 5px;
       background-color:#DC143C;
       color: white;
	}
	input[type=submit]:hover{
    color: white;
     background-color: #FF0000;
	}
	}
</style>

	<center>
	<h1 style="color:white; text-shadow: 4px 4px black;  font-size: 30px; font-family: Cooper;">Admin Register</h1>
	<form action="register_task.jsp" method="get">
  <fieldset style="background-color: #FFFFE0; border-color: red; border-width: 8px; width: 400px; height: 400px;">
    <legend style="color:red; font-size: 30px; font-family: Cooper;"> <img src="adduser.PNG" height="100px" width="100px" ></legend>
   <div style="margin-top: 10px; margin-right: 250px; font-size: 18px; color: red;"> user id:</div><br><input type="text" name="username"  placeholder="user id" required="required"><br>  
   <div style="margin-top: 10px; margin-right: 250px; font-size: 18px;  color: red;"> Password:</div><br><input type="password" name="password" placeholder="*******" required="required"><br><br>
   
 <input type="submit" value="Register"><br>
  <input type="checkbox" name="check" required="required">Agree this turm & condition<br>
  
 Already have Account <a href="login.jsp">login Here</a>

</fieldset>
   
</form>

</center>


</body>
</html>