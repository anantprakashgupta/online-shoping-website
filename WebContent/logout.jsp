<%
	session.getAttribute("current_user");
session.invalidate();
response.sendRedirect("login.jsp");
%>