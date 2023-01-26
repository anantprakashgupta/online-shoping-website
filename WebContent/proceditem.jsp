<%@page import="dao.BuyProductDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="model.Product"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>process item</title>
</head>
<body style="background-image: url(product7.jpg);">
<%@include file="index2.jsp" %>
<center>
<div style="width:400px; height:400px;border:5px;  opacity:5px; margin-top:100px;">
 <p style="color:yellow;margin-top:-90px;">Congratulation!</p>
</center>

<%			int sum1=0;
 %>
  <center>
  
	<table class=""  bgcolor="white" style="color: black; font-size:20px; width:auto; margin-top:-370px;backgraund:color:red;">
		<%
			int i=1;
			ArrayList<Product> al= BuyProductDAO.getProduct();
			for(Product b : al){
				
				%>
		<tbody>
			<tr style="color:black; font-size:35px; font-family:Monotype Corsiva;">
			   <td> <%=i++ %></td>
				
				<td><%=b.getPname() %></td>	
				<td ><%=b.getPrize() %></td>	
					
			</tr>
				</tbody>
				
				<% 
			}
			for(Product s: al){
				Object sum=s.getPrize();
			int a=	Integer.parseInt(sum.toString());
			sum1+=a;
			}
			%>
		<tfoot>
				<tr class="warning"  style="color:black;background-color:white; font-size:35px; font-family:Clarendon Blk BT;">
				<td bgcolor="lightcyan">Total</td>
				<td bgcolor="lightcyan">Prize</td>
				<td bgcolor="lightcyan"><%=sum1 %></td>
				</tr>
				<td colspan="3"><button style="margin-left:90px"><a href="Billing_view.jsp" style="text-decoration:none;">Payment Confirm</a></button></td>
				</tfoot>
				
			
		
	</table>
		<%@include file="footer.jsp" %>	
	</center>
	
	</div>


</body>

</html>
