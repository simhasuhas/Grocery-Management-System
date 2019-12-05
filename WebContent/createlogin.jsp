<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
<link rel="stylesheet" href="style.css">
<style>
table {
 
  
 background-color: #d5dbe4;
	border-spacing: 55px;
	padding: 20px;
	margin-top:100px;
	 border-radius: 5px;
	 border-style:ridge;
	 border-width:5px;
	 
}




</style>

</head>
<body>
<div align="center">
<form action="processlogin.jsp" method="post">
<table  class="loginfrom">
<tr>
<td><solid><label for="username">USERNAME</label></td></solid>
<td><input type="text" id="userename" name="username" class="searchtextfield"></input></td>
</tr>

<tr>
<td><label for="password">PASSWORD</label></td>
<td><input type="text" id="password" name="password" class="searchtextfield"></input></td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" value="LOGIN" class="actionbtn"></td></input>
</tr>

</table>
</form>

</div>

</body>
</html>