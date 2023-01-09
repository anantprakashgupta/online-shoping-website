<%@page import="dao.UserDAO"%>
<%@page import="dao.AdminDAO"%>
<jsp:useBean id="user" class="model.User" scope="request"/>
<jsp:setProperty property="*" name="user"/>
<%
if(UserDAO.registerUser(user)){
 
	%>
	<script>
	alert("Register Sucessfull");	
	window.location.href='UserRegister.jsp';	
	</script>
	
	<%
	response.sendRedirect("user_login.jsp");
	
}
else{
	response.sendRedirect("error.jsp");
	
}
%>