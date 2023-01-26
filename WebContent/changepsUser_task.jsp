<%@page import="dao.UpadateDAO"%>
<jsp:useBean id="user" class="model.User" scope="request"/>
<jsp:setProperty property="*" name="user"/>
<%
if(UpadateDAO.upadateUser(user)){
	%>
	<script>
	alert("Password Upadate Sucessfull");	
	window.location.href='user_login.jsp';	
	</script>
	
	<%

}
else{
	response.sendRedirect("error.jsp");
	
}
%>