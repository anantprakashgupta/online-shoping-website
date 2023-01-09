<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page import="dao.BuyProductDAO"%>
<%@page import="dao.CashDeliveryDAO"%>
<%@page import="model.Billing"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Cash_on delivery</title>
</head>
<body style="background-color:salmon;">
<%@include file="index2.jsp" %>
<%
int sum1=0;
Object name=request.getParameter("name");

%>

<%
	ArrayList<Billing> all=CashDeliveryDAO.getAddress();
   for(Billing a : all){
				
%>

<div style="color:white; margin-left:10px;">
<h4 style="color:yellow">Order is placed on your address</h4>
<p style="background-color: dodgerblue;width:300px;text-align:center;border-style:double;border-width:10px;">
<td><%=a.getName() %></td><br>
<td><%=a.getAddress() %></td><br>
<td><%=a.getEmail() %></td><br>
<td><%=a.getMobile() %></td><br>
<td><%=a.getPin() %></td><br>
<td><%=a.getCountry() %></td><br>
<td><%=a.getState() %></td><br>
<td><%=a.getDistrict() %></td><br>
</p>
</div>
<td><a href="Change_address.jsp?aid<%=a.getName()%>" style="color:red; font-size:20px;margin-left:20px;">Change Address</a></td><br>
<td><a href="delete_address_task.jsp?name=<%=a.getName() %>"style="color:red; font-size:20px;margin-left:20px;">delete</td><br>
<td><a href="#" style="color:red;margin-left:20px;font-size:20px;">Cancel</a></td><br>
<td><a href="#" style="color:red;margin-left:20px;font-size:20px;">Track your items</a></td><br>
<%} %>

<%
ArrayList<Product> p=ProductDAO.getProduct();
for(Product pr:p){
	
	%>		
<%	
}
for(Product p2: p){
	Object sum=p2.getPrize();
int a=Integer.parseInt(sum.toString());
sum1+=a;
}
%>
<div style="margin-right:500px;margin-top:-200px;color:white;font-size:40px; float:right">
<td>Rs:-</td>
<td><%=sum1 %></td><br>
</div>

</body>
</html>
<%@include file="footer.jsp" %>