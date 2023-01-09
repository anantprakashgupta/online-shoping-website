<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>change password</title>
</head>
<body >
 <center> <img src="prakash.PNG" height="80px" width="800px" ><br></center>
 
	<style type="text/css">
	body{
	background-image: url(back1.jpg);
	}
	input[type=text], input[type=password], input[type=email]{
  		width: 80%; 
  		font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
  		padding: 6px;
  		font-size: 0.9em;
  		border-radius: 5px;
  		background: rgba(0, 0, 0, 0.07);
  		margin-bottom: -20px;
	}
	input[type=submit]{
        width: 85%;
       padding: 10px;
       font-size: 15px;
       font-family: News701 BT;
       border-radius: 5px;
       background-color:#DC143C;
       color: white;
       margin-top: 30px
	}
	input[type=submit]:hover{
    color: white;
     background-color: #FF0000;
	}
	}
</style>

	<center>
	<h1 style="color:white; text-shadow: 4px 4px black;  font-size: 30px; font-family: Cooper;">User Change password</h1>
	<form action="changepsUser_task.jsp" method="post">
  <fieldset style="background-color: #FFFFE0; border-color: red; border-width: 8px; width: 400px; height: 500px;">
    <legend style="color:red; font-size: 30px; font-family: Cooper;"><img src="changeps.png" height="100px" width="100px" ></legend>
 
    <tr>
   <td ><h3 style="color: red"> Enter user id</h3></td>  
   <br><input type="text" name="uname" placeholder="user id" required="required"><br>
   
   
   <td><h3 style="color: red"> Enter New Password:</h3></td>
   <br><input type="password" name="password" placeholder="*******" required="required"><br>
   
   <td><input type="submit" value="Upadate"><br></td>
   <a href="login.jsp">Back</a>
</tr>

</fieldset>
   
</form>

</center>

</body>
</html>