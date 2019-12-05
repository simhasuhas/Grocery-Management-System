<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="style.css">

</head>
<body>
<h1 align="center"> ADD GROCERY</h1>
<div align="center">
<form action="processaddgrocery.jsp" method="post">
<table border="1">
<thead>
<tr>
<th colspan="2">GROCERY DETAILS</th>
</tr>
</thead>
<tr>
<td>Grocery ID</td>
<td><input type="text" name="groceryid" size="20"></td>
</tr>

<tr>
<td>Grocery Name</td>
<td><input type="text" name="groceryname" size="20"></td>
</tr>

<tr>
<td>Grocery Category</td>
<td><input type="text" name="grocerycategory" size="20"></td>
</tr>
<tr>
<td>Grocery Quantity</td>
<td><input type="text" name="groceryquantity" size="20"></td>
</tr>

<tr>
<td>Grocery Price</td>
<td><input type="text" name="groceryprice" size="20"></td>
</tr>

</table><br>
<input type="submit" value="ADD">
</form>
</div>
</body>
</html>