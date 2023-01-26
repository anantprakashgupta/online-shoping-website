<%@page import="dao.AdminDAO"%>
<jsp:useBean id="admin" class="model.Admin" scope="request"/>
<<jsp:setProperty property="*" name="admin"/>
<%
if(AdminDAO.registerAdmin(admin)){
	
		%>
		<script>
		alert("Register Sucessfull");	
		window.location.href='register.jsp';	
		</script>
		
		<%
	
	
}
else{
	response.sendRedirect("error.jsp");
	
}
%>