<%@page import="dao.BuyProductDAO"%>
<jsp:useBean id="product"  class="model.Product" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="product"/>
<%
if(BuyProductDAO.insert(product)){
	
	Object pname=request.getParameter("pname");
	
	Object prize=request.getParameter("prize");
	Object descripton=request.getParameter("description");
// 	System.out.print(pname);
// 	System.out.print(prize.toString());
// 	System.out.print(descripton.toString());
	
	
	%>
	<script>
	alert("product added to cart");
	window.location.href='index.jsp';
	</script>
	
	<%
	
}else{
	response.sendRedirect("error.jsp");
}

%>