<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="uts.wsd.*"%>

<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication" scope="application">
    <jsp:setProperty name="usersApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Logging In...</title>
</head>
<body>

<%
String email = request.getParameter("email");
String password = request.getParameter("password");

User user = usersApp.getUsers().login(email, password);

if (user != null) { //login is successful
	session.setAttribute("user", user);
	response.sendRedirect("index.jsp");
%>
<h1>Login successful.</h1>
<p> Click <a href="index.jsp">here</a> to search through available articles.</p>

<%} else { 
%> 

<h1>Email and/or Password incorrect.</h1>
<p>Click <a href="login.jsp">here</a> to try again.</p>

<p>Click <a href="register.jsp">here</a> to create an account.</p>

<%} %>

</body>
</html>