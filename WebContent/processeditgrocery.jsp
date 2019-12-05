

 <%@page import="dao.*" %>
          
    <%@page import="pojo.*" %>



 
 <% 

 String groceryid=request.getParameter("Pid");
 String groceryname=request.getParameter("Pname");
 String grocerycategory=request.getParameter("Pcategory");
 String groceryweight=request.getParameter("Pweight");
 Integer groceryprice=Integer.parseInt(request.getParameter("Pprice"));

 groceryPOJO grocery=new groceryPOJO(groceryid,groceryname,grocerycategory,groceryweight,groceryprice);
  
 int status = groceryDAO.editgrocery(grocery); 
 if(status == 1) 
 { 
 	response.sendRedirect("view_grocery.jsp");  
 } 
 else 
{ 
 	response.sendRedirect("error.jsp");  
 } 
  
 %> 

 


