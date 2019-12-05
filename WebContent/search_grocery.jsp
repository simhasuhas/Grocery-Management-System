<%@ page language="java" contentType="text/html; charset=ISO-8859-1" 
     pageEncoding="ISO-8859-1"%> 
<%@ page import="pojo.*" %> 
<%@ page import="dao.*" %> 
 
 
 <!DOCTYPE html> 
 <html> 
 <head> 
 <meta charset="ISO-8859-1"> 
 <title>Insert title here</title> 
 <link rel="stylesheet" href="style.css">
 </head> 
 <body> 
 
 <div align="center" style="padding-top:25px;"> 
 	<form action="search_grocery.jsp"> 
		<label>Enter Product ID: </label> 
 		<input type="text" name="Pid" size="25" class="searchTextField"/> 
 		<button class="actionBtn">Search</button> 
 	</form> 
 </div>  
 
 
 	<table align="center" class="productTable"> 
 		<thead> 
 			<tr> 
				<th>Grocery ID</th> 
 				<th>Grocery Name</th> 
 				<th>Grocery Category</th> 
 				<th>Grocery weight</th> 
                                <th>Grocery price</th> 
				<th colspan="2">Actions</th> 
 			</tr>  
 		</thead> 
 		<% 
 		String Pid=request.getParameter("Pid");
 		
 			if(Pid != null) 
 			{ 
 				groceryPOJO p = groceryDAO.getProductById(Pid); 
 	 			 
 				if(p!= null)  				{ 
 		%> 
 			<tr> 
 				<td><%=p.getPid()%></td> 
 				<td><%=p.getPname()%></td> 
 				<td><%=p.getPcategory()%></td> 
 				<td><%=p.getPweight()%></td> 
 				<td><%= p.getPprice() %></td> 
 				<td><button class="actionBtn" onclick="location.href = 'editgrocery.jsp?Pid=<%= p.getPid()%>';">Edit</button></td>
								
					<td><button class="actionbtn" onclick="location.href='deletegrocery.jsp?Pid=<%=p.getPid()%>';">delete</button></td>
					</tr>
 	    <%		} 
 				else 
 				{ 
 		%> 
 			<tr> 
 				<td colspan="5">No record to display</td> 
 			</tr> 
 		<%  
 				} 
 			} 
 			else  
 			{ 
 		%> 
 			<tr> 
 				<td colspan="5">No record to display</td> 
 			</tr> 
 		<%  
 			} 
 		%> 
 	</table> 
 
 
 
 
 </body> 
 </html> 
