<%@page import="dao.BillingDAO"%>
<jsp:useBean id="billing" class="model.Billing" scope="request"/>
<jsp:setProperty property="*" name="billing"/>

<% if(BillingDAO.delete(billing)){
	Object aid= request.getParameter("name");
	response.sendRedirect("Cash_On_Delivery.jsp");
	

	}else{
		response.sendRedirect("error.jsp");
		
	}
%>