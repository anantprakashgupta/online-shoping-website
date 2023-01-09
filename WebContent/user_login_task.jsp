<%@page import="dao.UserDAO"%>
<%@page import="dao.AdminDAO"%>
<jsp:useBean id="user" class="model.User" scope="request"/>
<jsp:setProperty property="*" name="user"/>
<%
if(UserDAO.UserSelect(user)){
	
	
	 session.setAttribute("current_user",user.getUname());
	response.sendRedirect("index.jsp");

	
}
else{
	response.sendRedirect("user_login.jsp?msg");
	
}
%>