<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="uts.wsd.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<form action="account.jsp" method="POST">


<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication" scope="application">
    <jsp:setProperty name="usersApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<%
String fName = request.getParameter("fName");
String sName = request.getParameter("sName");
String name = fName + " " + sName;
String email = request.getParameter("email");
String password = request.getParameter("password");
String dob = request.getParameter("dob");
String bio = request.getParameter("bio");

String agreeTOS = request.getParameter("tos");

Users users = usersApp.getUsers();
//System.out.println(users);
User user = (User)session.getAttribute("user");

//if (users.login(email, password) != null) { 
//User user = users.checkRegister(email);
//if user exists, then load details
if (user != null) {
//if (session.getAttribute("user") != null){
	//user = (User)session.getAttribute("user");
	//user.setFName(fName);
	//user.setSName(sName);
	//user.setEmail(email);
	//user.setPassword(password);
	session.setAttribute("user", user);
	System.out.println("exists");

%>


	<%
//if user does not exist, then save
//else (users.checkRegister(email) == null) {
} else {
	user = new User(email, fName, sName, password, dob, bio);
	users.addUser(user);
	usersApp.setUsers(users);
	session.setAttribute("user",user);
	%>


<div style="text-align: right;">
You are logged in as <%= name %>
</div>
<div style="text-align: right;">
<a href="account.jsp">My Account</a> | <a href="logout.jsp">Logout</a>
</div>

<h1>Thanks for Signing Up</h1>
<br>
<p> Welcome, <%= name %>.
</p>
<p> You will soon have access to a wide range of scholarly articles ranging many topics over many categories.
<br>
By signing up, you have been granted access to:
<br></p>

<ul>
  <li>Submit scholarly works such as articles and journals;</li>
  <li>Access submitted content that is restricted to viewing by other registered authors.</li>
</ul>

<p> Click <a href="account.jsp">here</a> to access your account.</p>

<% } %>

</form>
</body>
</html>