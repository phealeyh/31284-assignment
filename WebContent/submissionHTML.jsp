<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="uts.wsd.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Article Submission</title>
</head>
<body>

<%
	User user = (User) session.getAttribute("user");
	if (user != null) {
%>

<div style="text-align: right;">You are logged in as <%=user.getName()%>
</div>
<div style="text-align: right;"><a href="index.jsp">Index</a> | <a href="logout.jsp">Logout</a></div>

<h1>Article Submission</h1>

<%-- Submit button takes webpage to submissionAction.jsp page--%>
<form action="submissionAction.jsp" method="POST">
<%--Pass Id, Author, and Date to the next page. Problem--%>
<table>
<tr><td>Title</td><td><input type="text" name="title"></td></tr>
<tr><td>Category</td><td>
<select>
  <option type="text" value="sciences" name="category">Sciences</option>
  <option type="text" value="informationTechnology" name="category">Information Technology</option>
  <option type="text" value="healthCare" name="category">Health Care</option>
  <option type="text" value="architecture" name="category">Architecture</option>
</select></td></tr>
<tr><td>Abstract</td><td><textarea type="text" name="sText" style="height: 105px; width: 685px; "></textarea></td></tr>
<tr><td>Full Text</td><td><textarea type="text" name="text" style="height: 235px; width: 685px; "></td></tr>
</table>
<input type="submit" value="Submit">
</form>
 
<%
	} else {
%>

<div style="text-align: right;">You are not logged in <br>
<a href="login.jsp">Login</a> | <a href="register.jsp">Register</a></div>

<div style="text-align: center;">
<h2> You are unable to submit an article. <br></br>
Please <a href="login.jsp">log in</a> first then retry.
</h2>
</div>
<%
	}
%>


</body>
</html>