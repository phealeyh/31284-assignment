<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error500.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="welcome.xsl"?>

							<!-- Implement page styles + elements from .xsl -->

<page>

<% //get objects from .xml files
String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication" scope="application">
    <jsp:setProperty name="usersApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<%
//get all details
String fName = request.getParameter("fName");
String sName = request.getParameter("sName");
String name = fName + " " + sName;
String email = request.getParameter("email");
String password = request.getParameter("password");
String dob = request.getParameter("dob");
String bio = request.getParameter("bio");

String agreeTOS = request.getParameter("tos");

//get all users
Users users = usersApp.getUsers();
//get specific user from session
User user = (User)session.getAttribute("user");

//User user = users.checkRegister(email);
//if user exists, then load details
if (user != null) {
	session.setAttribute("user", user);
%>

<exists />

	<% } else {
//if user does not exist, then save
//else (users.checkRegister(email) == null) {
	user = new User(email, fName, sName, password, dob, bio);
	users.addUser(user);
	usersApp.setUsers(users);
	session.setAttribute("user",user);
	%>

<welcome />

<%} %>
</page>