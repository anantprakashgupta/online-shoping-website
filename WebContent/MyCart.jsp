<%@page import="dao.BuyProductDAO"%>
<%@page import="dao.ProductDAO"%>
<%@page import="model.Product"%>
<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Mycart</title>
</head>
<body style="background-color:#a58c8c;">
<%@ include file="index.jsp" %>
<%			

int sum1=0;
int total=0;
 %>
  <center>
	<table class="table table-striped" style="color: black; font-size:20px; width:auto;">
	 <h1 style="color:white;margin-top:20px;">MyCart</h1>
		<thead>
			<tr class="warning"style="color:yellow;">
				<th>Id</th>
				<th>Product name</th>
				<th>Prize name</th>
				<th>Quantity</th>
				<th>Submit</th>
				<th>Toatl Prize</th>
				<th>Description</th>	
				<th>Delete cart</th>
				
			</tr>
		</thead>
			<%
			int i=1;
			ArrayList<Product> al= BuyProductDAO.getProduct();
			
			for(Product b : al){
				
				%>
		<tbody>
			<tr>
			   <td> <%=i++ %></td>
				
				<td><%=b.getPname() %></td>	
				<td><%=b.getPrize() %></td>	
				<form action="quaintity_task.jsp">
				<input type="hidden" name="prize" value="<%=b.getPrize() %>">
				<td><input required="required" type="number" name="num" style="width:40px" min="0"></td>	
				<td><input required="required" type="submit" value="Add"></td>	
				</form>
			
				<td><%=total %></td>

				<td><%=b.getDescription() %></td>
					
			
				<td><button style="background: rgba(0, 0, 0, 0.015);"><a href="Delete_myCart_task.jsp?pid=<%=b.getPid() %>" style="text-decoration:none; background-color:red;color:white">Delete Cart</a></td></button>
					
			</tr>
				</tbody>
				
				<% 	
			
			}
			for(Product s: al){
				Object sum=s.getPrize();
			int a=Integer.parseInt(sum.toString());
			sum1+=a;
			}
			%>
		<tfoot>
				<tr class="warning"style="color:yellow;">
				<td>TOTAL</td>
				<td>PRIZE</td>
				<td colspan="2"><%=sum1 %></td>
				<td><button><a href="proceditem.jsp" style="text-decoration:none;">proced to Payment</a></button></td>
				
				</tr>
				</tfoot>
			
				
	</table></center>

</body>
</html>
<%@include file="footer.jsp"%>