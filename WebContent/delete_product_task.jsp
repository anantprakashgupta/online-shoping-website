<%@page import="dao.ProductDAO"%>
<jsp:useBean id="product" class="model.Product" scope="request"/>
<jsp:setProperty property="*" name="product"/>

<% if(ProductDAO.delete(product)){
	Object pid= request.getParameter("pid");
	response.sendRedirect("product_list.jsp");
	

	}else{
		response.sendRedirect("error.jsp");
		
	}
%>