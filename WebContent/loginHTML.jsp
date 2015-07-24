<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="uts.wsd.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

<div style="text-align: right;">You are not logged in</div>
<div style="text-align: right;"><a href="index.jsp">Index</a> | <a href="register.jsp">Register</a></div>

<h1>Login</h1>
<br>
<form action="loginActionHTML.jsp" method="POST">

<table>
<tr><td>Email</td><td><input type="text" name="email"></td></tr>
<tr><td>Password</td><td><input type="password" name="password"></td></tr>
<tr><td></td><td><input type="submit" value="Login"></td></tr>
</table>

</form>

</body>
</html>