<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>billing</title>
</head>
<body style="background-color:brown">
<%@include file="index2.jsp" %>

<%  user= session.getAttribute("current_user");
	if(user!=null){
%>
	<style>
	input[type=text],input[type=number],input[type=email]{
  		width: 82%; 
  		font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
  		padding: 10px;
  		font-size: 0.9em;
  		border-radius: 5px;
  		background: rgba(0, 0, 0, 0.08);
  		margin-top: 20px;
  		margin-left:10px;
  		border-color:white;
  		color:white;
  		height:33px;
  	
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
	font-size:25px;
	font-family:Monotype Corsiva;
	}
</style>
<img src="product10.jpg" style="width: 800px;height: 580px;margin-top:2px;margin-left:-20px;">

    <div style="text-align: center; margin-left: 800px;margin-top: -620px">						
	<form action="billing_task.jsp" method="get">
    <fieldset style=" border-color: white; border-width: 8px; width: 400px; height: 500px;">
    <legend style="color:white; font-size: 30px; font-family: Cooper;">Billing Address </legend>
  
   <input type="text" name="name" placeholder="Enter name...." required="required"><br>
   <input type="text" name="address" placeholder="Enter Address...." required="required"><br>
   <input type="email" name="email" placeholder="Enter email...." required="required"><br>
   <input type="number" name="mobile" placeholder="Enter mobile No...." required="required" min="0"><br>
   <input type="text" name="pin" placeholder="Enter pin...." required="required"><br>
   <input type="text" name="country" placeholder="Enter country...." required="required"><br>
   <input type="text" name="state" placeholder="Enter state...." required="required"><br>
   <input type="text" name="district" placeholder="Enter district...." required="required"><br><br>
   <input type="submit" value="save"><br>
 

</fieldset>
   
</form>
<%
}
else{
	response.sendRedirect("user_login.jsp");
	
}
%>
</div>
</body>
</html>
<%@include file="footer.jsp" %>