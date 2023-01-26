<%@page import="dao.BuyProductDAO"%>
<jsp:useBean id="product"  class="model.Product" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="product"/>
<%
Object user=session.getAttribute("current_user");
if(user !=null){
if(BuyProductDAO.insert(product)){
	
	Object pname=request.getParameter("pname");
	Object prize=request.getParameter("prize");
	Object descripton=request.getParameter("description");
	
	
	%>
	<script>
	alert("product added to cart");
	window.location.href='product_list_User.jsp';
	</script>
	
	<%
	
}else{
	response.sendRedirect("error.jsp");
}
}else{
	response.sendRedirect("user_login.jsp");
	
}
%>