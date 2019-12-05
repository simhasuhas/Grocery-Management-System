<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page import="dao.*" %>
    <%@ page import="pojo.*" %>
<%@ page import="java.util.List" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%


String username=request.getParameter("username");
String password=request.getParameter("password");

if(loginDAO.isUserValid(new loginPOJO(username,password)))
	
{
	session.setAttribute("username",username);
	session.setMaxInactiveInterval(30);
	response.sendRedirect("home.jsp");
	
}
else
{
	response.sendRedirect("loginfailed.jsp");
}
%>



</body>
</html>