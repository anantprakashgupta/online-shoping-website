<%@page import="model.Billing"%>
<%@page import="dao.BillingDAO"%>
<%@page import="dao.BuyProductDAO"%>
<jsp:useBean id="billing" class="model.Billing" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="billing"/>

<% if(BillingDAO.update(billing)){
	Object aid= request.getParameter("aid");
	response.sendRedirect("Cash_On_Delivery.jsp");
	

	}else{
		response.sendRedirect("error.jsp");
		
	}

%>