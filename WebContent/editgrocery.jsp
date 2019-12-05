<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
       <%@page import="dao.*" %>
          
    <%@page import="pojo.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>

<%
String Pid=request.getParameter("Pid");
groceryPOJO grocery=groceryDAO.getProductById(Pid);
%>
<div align="center">
<form action="processeditgrocery.jsp" method="post">
<table class="producttab">
<thead>
<tr>
<th colspan="2">GROCERY DETAILS</th>
</tr>
</thead>
<tr>
<td>Grocery ID</td>
<td><input type="text" name="Pid" size="20" value="<%=Pid%>" class="productTextField" readonly/></td>
 

</tr>

<tr>
<td>Grocery Name</td>
<td><input type="text" name="Pname" size="20" value="<%=grocery.getPname()%>" class="productTextField"/></td>
</tr>

<tr>
<td>Grocery Category</td>
<td><input type="text" name="Pcategory" size="20" value="<%=grocery.getPcategory()%>" class="productTextField"/></td>

</tr>
<tr>
<td>Grocery Quantity</td>
<td><input type="text" name="Pweight" size="20" value="<%=grocery.getPweight()%>" class="productTextField"/></td>
</tr>

<tr>
<td>Grocery Price</td>
<td><input type="text" name="Pprice" size="20" value="<%=grocery.getPprice()%>" class="productTextField"/></td>
</tr>

</table>
<button class="actionBtn" style="margin-top:10px">save</button>

</form>
</div>
</body>
</html>