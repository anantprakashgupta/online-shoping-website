<%@page import="dao.BuyProductDAO"%>
<jsp:useBean id="product" class="model.Product" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="product"/>
<%
if(BuyProductDAO.delete(product)){
	Object pid= request.getParameter("pid");
	response.sendRedirect("MyCart.jsp");
	

	}else{
		response.sendRedirect("error.jsp");
		
	
}
%>