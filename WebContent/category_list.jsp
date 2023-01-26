<%@page import="model.Category"%>
<%@page import="java.util.ArrayList"%>
<%@page import="dao.CategoryDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
.<link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.13.1/css/jquery.dataTables.css">
<script type="text/javascript" charset="utf8" src="https://cdn.datatables.net/1.13.1/js/jquery.dataTables.js"></script>


<meta charset="ISO-8859-1">
<title>category list</title>

</head>
<body style="background-color:#a58c8c;">
<%@ include file="Admin_login_page.jsp" %>
  <center>
	<table id="table_id" class="display">
	 <h1 style="color:white;margin-top:70px;">All category list</h1>
		<thead>
			<tr style="color:white">
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
				
				<td><button style="background: rgba(0, 0, 0, 0.015);"><a href="edit_task.jsp?cid=<%=c.getCid()%>">Edit<i class="fa fa-edit" style="font-size:48px;color:yellow"></i></i></button></td>
				<td><button style="background: rgba(0, 0, 0, 0.015);"><a href="delete_category_task.jsp?cid=<%=c.getCid()%>">Delete<i class="fa fa-trash-o" style="font-size:48px;color:yellow"></i></button></td>
				
			</tr>
				
		</tbody>
				
				<% 
			}
			%>
		
	</table></center>

</body>
<%@ include file="footer.jsp" %>
<script>
$(document).ready( function () {
    $('#table_id').dataTable();
} );
</script>
</html>