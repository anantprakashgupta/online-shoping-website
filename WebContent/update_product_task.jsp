<%@page import="dao.ProductDAO"%>
<jsp:useBean id="product" class="model.Product" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="product"/>

<% if(ProductDAO.update(product)){
	Object cid= request.getParameter("cid");
	response.sendRedirect("product_list.jsp");
	

	}else{
		response.sendRedirect("error.jsp");
		
	}

%>