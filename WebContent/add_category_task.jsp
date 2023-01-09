<%@page import="dao.CategoryDao"%>
<jsp:useBean id="category" class="model.Category" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="category"/>

<%
Object cname= request.getParameter("cname");
if(cname.equals("")){
	response.sendRedirect("add_category.jsp");
	
}	else{
if(CategoryDao.add(category)){
		%>
		<script>
		alert("category added successfully");	
		window.location.href='add_category.jsp';
			
		</script>
		<%
		
	}else{
		response.sendRedirect("error.jsp");
		
	}
}
%>