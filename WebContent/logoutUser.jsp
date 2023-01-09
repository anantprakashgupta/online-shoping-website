<%
	session.getAttribute("current_user1");
session.invalidate();
response.sendRedirect("index.jsp");
%>