<%@page import="dao.UpadateDAO"%>
<jsp:useBean id="admin" class="model.Admin" scope="request"/>
<jsp:setProperty property="*" name="admin"/>
<%
if(UpadateDAO.upadate(admin)){
	%>
	<script>
	alert("Password Upadate Sucessfull");	
	window.location.href='login.jsp';	
	</script>
	
	<%

}
else{
	response.sendRedirect("error.jsp");
	
}
%>