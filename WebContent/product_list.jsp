<%@page import="model.Product"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.ProductDAO"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#a58c8c;">
<%@ include file="Admin_login_page.jsp" %>
  <center>
	<table class="table table-striped" style="color: black; font-size:20px; width:800px;">
	 <h1 style="color:white;margin-top:70px;">All product list</h1>
		<thead>
			<tr style="color:yellow">
				<th>id</th>
				<th>product name</th>
				<th>prize</th>
				<th>Description</th>
				<th>Edit</th>
				<th>Delete</th>
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
		
				<td><button style="background: rgba(0, 0, 0, 0.015);"><a href="update_Product.jsp?pid=<%=p.getPid() %>"><i class="fa fa-edit" style="font-size:48px;color:red">Edit</i></i></button></td>
				<td><button style="background: rgba(0, 0, 0, 0.015);"><a href="delete_product_task.jsp?pid=<%=p.getPid() %>"><i class="fa fa-trash-o" style="font-size:48px;color:red">delete</i></button></td>
				
				
			</tr>
				
		</tbody>
				
				<% 
			}
			%>
		
	</table></center>

</body>
<%@ include file="footer.jsp" %>
</html>