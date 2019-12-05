<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@	page import="dao.*"%>
<%@ page import="pojo.*"%>
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
String confirmpassword=request.getParameter("confirmpassword");
if(password.equals(confirmpassword))
{
			loginPOJO user=new loginPOJO(username,password);
	
			int status=loginDAO.proSignup(user);

			if(status==1)
				{
					response.sendRedirect("createlogin.jsp");
				}
			else
				{
						response.sendRedirect("error.jsp");
				}
}
else
{
	response.sendRedirect("error.jsp");
}

%>
</body>
</html>