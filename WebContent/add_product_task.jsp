<%@page import="dao.ProductDAO" %>
<jsp:useBean id="product" class="model.Product" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="product"/>

<%
Object cname= request.getParameter("cname");
Object prize= request.getParameter("prize");
Object description= request.getParameter("description");

if(ProductDAO.insert(product)){
	%>
	<script>
	alert("product added successfully");	
	window.location.href='add_product.jsp';
		
	</script>
	<%
}else{
	response.sendRedirect("error.jsp");
}

%>