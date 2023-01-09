<%@page import="dao.AdminDAO"%>
<jsp:useBean id="admin" class="model.Admin" scope="request"/>
<jsp:setProperty property="*" name="admin"/>
<%
if(AdminDAO.athenticAdmin(admin)){
 session.setAttribute("current_user2",admin.getUsername());
	response.sendRedirect("welcome.jsp");
	
}
else{
	response.sendRedirect("index.jsp?login");
	
}
%>