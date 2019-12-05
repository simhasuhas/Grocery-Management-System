<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<title>home</title>
<head>
<link rel="stylesheet" href="style.css">

</head>
<body class="body1">





<%String username=(String)session.getAttribute("username"); %>
<div align="center" class="body2">
<h1><solid> GROCERY MANAGEMENT SYSTEM</solid></h1>
<h2><solid>WELCOME <%=username%></solid></h2>
</div>



<%@ include file="header.jsp" %>






</body>
</html>