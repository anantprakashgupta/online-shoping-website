<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
.

<meta charset="ISO-8859-1">
<title>category list</title>
</head>
<body>
<%@ include file="Admin_login_page.jsp" %>
  <center>
	<table class="table table-striped" style="color: black; font-size:20px; width:500px;">
	 <h1 style="color:white;margin-top:70px;">All category list</h1>
		<thead>
			<tr style="color:red">
				<th>Id</th>
				<th>C name</th>
				<th>Edit</th>
				<th>Delete</th>
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
				
				<td><button style="background: rgba(0, 0, 0, 0.015);"><a href="edit_task.jsp?cid=<%=c.getCid()%>">Edit<i class="fa fa-edit" style="font-size:48px;color:red"></i></i></button></td>
				<td><button style="background: rgba(0, 0, 0, 0.015);"><a href="delete_category_task.jsp?cid=<%=c.getCid()%>">Delete<i class="fa fa-trash-o" style="font-size:48px;color:red"></i></button></td>
				
			</tr>
				
		</tbody>
				
				<% 
			}
			%>
		
	</table></center>

</body>
<%@ include file="footer.jsp" %>

</html>