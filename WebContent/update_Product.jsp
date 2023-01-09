<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product add</title>
</head>
<body>
<%@ include file="index.jsp" %>

	<style type="text/css">
	body{
	background-image: url(back4.jpg);
	}
	input[type=text]{
  		width: 82%; 
  		font-family: "Lucida Grande","Lucida Sans Unicode",Tahoma,Sans-Serif;
  		padding: 10px;
  		font-size: 0.9em;
  		border-radius: 5px;
  		background: rgba(0, 0, 0, 0.08);
  		margin-top: -30px;
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
	input-placeholder{
	color:white;
	}
	}
</style>
<%
String pid= request.getParameter("pid");
%>

	<center>
	<h1 style="margin-top:60px; color:white; text-shadow: 4px 4px black;  font-size: 30px; font-family: Lucida Calligraphy;">update Product here...</h1>
	<form action="update_product_task.jsp" method="get">
  <fieldset style=" border-color: white; border-width: 8px; width: 400px; height: 400px;">
    <legend style="color:white; font-size: 30px; font-family: Cooper;"> <img src="addp.png" height="100px" width="100px" ></legend>
  
   <div style="margin-top: 10px; margin-right: 250px; font-size: 20px;  color: white;">Product name</div><br>
   <input type="text" name="pname" placeholder="product name" required="required"><br>
   <div style="margin-top: 10px; margin-right: 250px; font-size: 18px; color: white;">Product prize</div><br>
   <input type="text" name="prize"  placeholder="prize" required="required"><br>  
   <div style="margin-top: 10px; margin-right: 250px; font-size: 18px;  color: white;">Description</div><br>
   <input type="text" name="description" placeholder="description" required="required"><br><br>
      <input type="hidden" name="pid" value="<%=pid %>">
   
   <input type="submit" value="Upadate"><br><br>
 

</fieldset>
   
</form>

</center>


</body>
</html>

</body>
<%@ include file="footer.jsp" %>
</html>