<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>product list user</title>
</head>
<body style="background-color:#a58c8c;">
<%@ include file="index.jsp" %>
  <% user= session.getAttribute("current_user"); %>
  <center>
	<table class="table table-striped" style="color: black; font-size:20px; width:auto;">
	 <h1 style="color:white;margin-top:20px;">All product list</h1>
		<thead>
			<tr class="warning"style="color:yellow">
				<th>Id</th>
				<th>Product name</th>
				<th>Prize</th>
				<th>Description</th>
				<th>Buy</th>
				<th>Add To cart</th>
				
			</tr>
		</thead>
			<%
			int i=1;
			ArrayList<Product> al= ProductDAO.getProduct();
			for(Product p : al){
				
				%>
		<tbody>
			<tr>
			   <td> <%=i++ %></td>
				
				<td><%=p.getPname() %></td>
				<td><%=p.getPrize() %></td>
				<td><%=p.getDescription() %></td>
				<td><button style="background: rgba(0, 0, 0, 0.015);" onclick="validate()"><a href="buy_process_direct.jsp?pname=<%=p.getPname()%>&prize=<%=p.getPrize() %>&description=<%=p.getDescription() %>" style="text-decoration:none;background-color:red;color:white">Buy</a></td></button>
				<td><button style="background: rgba(0, 0, 0, 0.015);" onclick="validate()"><a href="buy_product.jsp?pname=<%=p.getPname()%>&prize=<%=p.getPrize() %>&description=<%=p.getDescription() %>" style="text-decoration:none;background-color:red;color:white">AddCart</a></td></button>
			
			</tr>
				
		</tbody>
				
				<% 
			}
			%>
		
	</table></center>

</body>
</html>