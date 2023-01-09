<%@page import="dao.BillingDAO"%>
<jsp:useBean id="billing" class="model.Billing" scope="request"/>
<jsp:setProperty property="*" name="billing"/>
<%
if(BillingDAO.insert(billing)){
	%>
	<script>
	alert("Address save Sucessfull");	
	window.location.href='payment_direct.jsp';	
	response.sendRedirect("payment_direct.jsp");
	</script>
	
	<%

}
else{
	response.sendRedirect("error.jsp");
	
}
%>