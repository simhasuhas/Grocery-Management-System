<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign up</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
<div class="body">
<form action="processsign.jsp" >
  <center>
    <h1>Sign Up</h1>
    <p>Please fill in this form to create an account.</p>
    <hr>

     <label for="username"><b>Username</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
     <input type="text" placeholder="Enter Username" name="username" required><br><br>

    <label for="password"><b>Password</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
    <input type="password" placeholder="Enter Password" name="password" required><br><br>
 
 	<label for="confirmpassword"><b>Confirm Password</b></label>
    <input type="password" placeholder="Confirm Password" name="confirmpassword" required><br><br>

    <div >
 
      <button type="submit" class="signupbtn">SIGN UP</button>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
   <a href="createlogin.jsp">Login</a> 
     
    </div>
  
    
  </centre>
</form>
</div>
</body>
</html>
