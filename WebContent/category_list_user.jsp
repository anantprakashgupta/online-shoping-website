<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background-color:#a58c8c;">
<%@ include file="index.jsp" %>
  <center>
	<table class="table table-striped" style="color: black; font-size:20px; width:300px;">
	 <h1 style="color:white;margin-top:20px;">All category list</h1>
		<thead>
			<tr class="warning"style="color:yellow;">
				<th>Id</th>
				<th>Category name</th>	
			</tr>
		</thead>
			<%
			int i=1;
			ArrayList<Category> al= CategoryDao.getCategorylist();
			for(Category c : al){
				
				%>
		<tbody>
			<tr>
			   <td> <%=i++ %></td>
				
				<td><%=c.getCname() %></td>	
			</tr>
				</tbody>
				
				<% 
			}
			%>
		
	</table></center>

<%@ include file="footer.jsp" %>
</body>
</html>
