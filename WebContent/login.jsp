<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>login page</title>
<link rel="stylesheet" type="text/css" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

<script type="text/javascript">
function check()
{
<%
if(request.getParameter("wrong")!=null)
{
%>
var wrong='Userid  password Wrong';
alert(wrong);
<%
}

if(request.getParameter("login")!=null)
{
%>
var login='Login Successfully';
alert(login);
<%
}


%>
}
</script>
</head>
<body onload="return check()" style="background-color:#FFFFE0">


  <center>
  <img src="prakash.PNG" height="80px" width="800px">
  </center>
	<style type="text/css">
	body{
	background-image: url(back3.jpg);
	}
	input[type=text], input[type=password]{
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
	<h1 style="color:white; text-shadow: 4px 4px black;  font-size: 30px; font-family: Cooper;">Admin Login</h1>
	<form action="login_task.jsp" method="post" name="form1">
    <fieldset style="background-color: #FFFFE0; border-color: red; border-width: 8px; width: 400px; height: 400px;">
    <legend style="color:red; font-size: 30px; font-family: Cooper;"></i><img src="user2.png" height="80px" width="80px" ></legend>
    <div style="margin-top: 10px; margin-right: 250px; font-size: 18px; color: red;"> First name:</div><br>
    <div class="n">
    <input type="text" name="username"  placeholder="prakash"><br>
    </div>
    <div style="margin-top: 10px; margin-right: 250px; font-size: 18px;  color: red;"> Password:</div><br>
    <input type="password" name="password" placeholder="*******" id="myInput"><br>
    <input type="checkbox" onclick="myFunction()">Show Password
     <script>
  function myFunction() {
  let x = document.getElementById("myInput");
  if (x.type === "password") {
    x.type = "text";
  } else {
    x.type = "password";
  }
}
</script>
   

    <input type="submit" value="Submit" ><br>

 Forget <a href="changeps.jsp">Password</a><br>
 Create new account <a href="register.jsp">Register Here</a><br>
 <a href="index.jsp">Home</a>

  </fieldset>
   
</form>

</center>


</body>
</html>