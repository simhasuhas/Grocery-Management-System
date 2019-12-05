<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>

<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  width: 200px;
  background-color: #f1f1f1;
}

li a {
  display: block;
  color: #000;
  padding: 8px 16px;
  text-decoration: none;
}

li a.active {
  background-color: #4CAF50;
  color: white;
}

li a:hover:not(.active) {
  background-color: #555;
  color: white;
}
</style>

<body>


<%
if(session.getAttribute("username")==null)
{
	response.sendRedirect("createlogin.jsp");
}
%>
 
<table align="center">

<ul>
  <li><a class="active" href="home.jsp">HOME</a></li>
  <li><a href="add_grocery.jsp">ADD GROCERY</a></li>
  <li><a  href="view_grocery.jsp">VIEW GROCERY</a></li>
   <li><a href="search_grocery.jsp">SEARCH GROCERY</a></li>

   
 <li float:top-right"><a href="createlogin.jsp" >LOGOUT</a></li>
  
  
     </ul>
   </table> 




</div>

</body>
</html>