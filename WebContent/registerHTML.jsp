<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="uts.wsd.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration</title>
</head>
<body>

<div style="text-align: right;">You are not logged in</div>
<div style="text-align: right;"><a href="index.jsp">Index</a> | <a href="login.jsp">Login</a></div>

<h1>Registration</h1>

<form action="welcome.jsp" method="POST">

<table>
<tr><td>First name</td><td><input type="text" name="fName" required></td></tr>
<tr><td>Last name</td><td><input type="text" name="sName" required></td></tr>
<tr><td>Email</td><td><input type="text" name="email" required></td></tr>
<tr><td>Password</td><td><input type="password" name="password" required></td></tr>
</table>
<br>
<!--Opens terms page in a new tab-->
<p> Click <a href="terms.jsp" target="_blank" >here</a> to view the terms and conditions of site use.</p>

<br>
<table>
<!--Disables submit button until terms agreed to- via checkbox selected-->
<tr><td>Agree to TOS</td><td><input type="checkbox" name="tos" onclick="this.form['reg'].disabled=false"></td></tr>
<tr><td></td><td></td></tr>
<tr><td></td><td><input type="submit" name="reg" value="Register" disabled></td></tr>
</table>


</form>

</body>
</html>