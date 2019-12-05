<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dao.*" %>
    <%@page import="pojo.*" %>
    <%@ page import="java.util.List" %>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid black;
  height:50px;
   width: 200px;
  text-align:center;
  padding: 8px;
}


</style>

<link rel="stylesheet" href="style.css">
<style>
table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
}

td, th {
  border: 1px solid black;
  height:50px;
   width: 200px;
  text-align:center;
  padding: 8px;
}


</style>


<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>VIEW GROCERY</title>
</head>
<body>

<table  class="product">
<thead>
<tr>

  <th>Grocery ID</th>
  <th>Grocery Name</th>
  <th>Grocery Category</th>
  <th>Grocery Quantity</th>
  <th>Grocery Price</th>
  <th colspan="2" align="center">Action</th>

  </tr>
</thead>


<%
List <groceryPOJO>grocerylist=groceryDAO.getProductlist();
for(groceryPOJO g:grocerylist)
{
	%>
	<tr>
	<td><%=g.getPid() %></td>
		<td><%=g.getPname() %></td>
			<td><%=g.getPcategory() %></td>
				<td><%=g.getPweight() %></td>
					<td><%=g.getPprice() %></td>
					<td><button class="actionBtn" onclick="location.href = 'editgrocery.jsp?Pid=<%= g.getPid()%>';">Edit</button></td>
								
					<td><button class="actionBtn" onclick="location.href='processdeletegrocery.jsp?Pid=<%=g.getPid()%>';">Delete</button></td>
					</tr>
					<%
}

%>

</table>
  
</body>
</html>