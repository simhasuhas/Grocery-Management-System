<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@page import="dao.*" %>
    <%@page import="pojo.*" %>
    <%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="style.css">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String groceryid=request.getParameter("groceryid");
String groceryname=request.getParameter("groceryname");
String grocerycategory=request.getParameter("grocerycategory");
String groceryquantity=request.getParameter("groceryquantity");
Integer groceryprice=Integer.parseInt(request.getParameter("groceryprice"));

groceryPOJO grocery=new groceryPOJO(groceryid,groceryname,grocerycategory,groceryquantity,groceryprice);

int status=groceryDAO.addgrocery(grocery);

if(status==1)
{
	response.sendRedirect("view_grocery.jsp");
}

%>
</body>
</html>
