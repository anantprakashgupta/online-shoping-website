<%@page import="dao.CategoryDao"%>
<jsp:useBean id="category" class="model.Category" scope="request"></jsp:useBean>
<jsp:setProperty property="*" name="category"/>


<% if(CategoryDao.delete(category)){
	Object cid= request.getParameter("cid");
	response.sendRedirect("category_list.jsp");
	out.print("delete");
	

	}else{
		response.sendRedirect("error.jsp");
		
	}

%>