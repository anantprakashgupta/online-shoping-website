<%@page import="dao.ProductDAO"%>

<%@page import="dao.BuyProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>buy_process_direct</title>
</head>
<body style="background-image: url(product7.jpg);">
<%@include file="index2.jsp" %>
<center>
<div style="width:400px; height:400px;border:5px;  opacity:5px; margin-top:100px;">
 <h4 style="color:yellow;margin-top:-130px;">Congratulation!</h4>
</center>
<% 
    Object pname=request.getParameter("pname");
	Object prize=request.getParameter("prize");
	Object descripton=request.getParameter("description");
%>
<center>
<div style="color:red; margin-top:-350px; font-size:25px;background-color:white;width:300px;border-radius:30px;border-style:double;border-width:10px">
  
     <td>Item-
        <td><%=pname %></td>
		</td><br>
		<td>Prize-
        <td><%=prize%>	</td>
		</td><br>
		<td>Datails-
        <td><%=descripton%></td>
		</td><br>
        <td><button style="margin-left:20px;"><a href="billing_view_direct.jsp" style="text-decoration:none;">Payment Confirm</a></button></td>
  </center></div>
  
  
	
		
		
		
			
				
					
					
		
				
				
				
				
			
				
	


</body>
<%@ include file="footer.jsp" %>
</html>