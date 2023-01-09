<%@page import="dao.ProductDAO"%>
<jsp:useBean id="product"  class="model.Product" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="product"/>
<%
if(ProductDAO.insert(product)){
	
	Object pname=request.getParameter("pname");
	Object prize=request.getParameter("prize");
	Object descripton=request.getParameter("description");
	System.out.print(pname);
	
	
	response.sendRedirect("buy_process_direct.jsp");

	
	
}else{
	response.sendRedirect("error.jsp");
}

%>