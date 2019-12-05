


	<%@page import="dao.*"%> 
	 <%@page import="pojo.*"%> 
	 
	 
	 <% 
	  
	 String Pid = request.getParameter("Pid"); 
	  
	 int status = groceryDAO.deletegrocery(Pid); 
	 if(status == 1) 
	 { 
	 	response.sendRedirect("view_grocery.jsp");  
	 } 
	 else 
	{ 
	 	response.sendRedirect("error.jsp");  
	 } 
	  
	 %> 

	
}

