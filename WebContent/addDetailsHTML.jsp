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
<title>Edit Details</title>
</head>
<body>

<%
Users users = usersApp.getUsers();
User user = (User)session.getAttribute("user");

String fName = request.getParameter("fName");
String sName = request.getParameter("sName");
String email = request.getParameter("email");
String password = request.getParameter("password");
String bio = request.getParameter("bio");
String dob = request.getParameter("dob");
%>

<div style="text-align: right;">
You are logged in as <%= user.getName() %>
</div>
<div style="text-align: right;">
<a href="account.jsp">My Account</a> | <a href="logout.jsp">Logout</a>
</div>

<h1>Edit Details</h1>

<%
if (user.getBio() == null)
{
%>

<p>Please enter your Date of Birth and brief Biography below.</p>
<form action="account.jsp" method="POST">

<table>
<tr><td>First name</td><td><input type="text" name="fName" value=<%=user.getfName()%> required></td></tr>
<tr><td>Last name</td><td><input type="text" name="sName" value=<%=user.getsName()%> required></td></tr>
<tr><td>Email</td><td><input type="text" name="email" value=<%=user.getEmail()%> required></td></tr>
<tr><td>Password</td><td><input type="password" name="password" value=<%=user.getPassword()%> required></td></tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
<tr><td>Date of Birth</td><td><input type="date" name="dob" placeholder="dd/mm/yyyy" min="01/01/1911" max="01/01/2001"required></td></tr>
<tr><td>Biography</td><td><input type="text" size="85" name="bio" required></td></tr>
<tr><td>Agree to TOS</td><td><input type="checkbox" name="tos" checked></td></tr>
<tr><td></td><td><input type="submit" value="Save"></td></tr>
</table>
</form>

<%
session.setAttribute("user", user);
}

else if (user.getBio() != null)
{
%>
<form action="account.jsp" method="POST">

<table>
<tr><td>First name</td><td><input type="text" name="fName" value=<%= user.getfName() %> required></td></tr>
<tr><td>Last name</td><td><input type="text" name="sName" value=<%=user.getsName()%> required></td></tr>
<tr><td>Email</td><td><input type="text" name="email" value=<%=user.getEmail()%> required></td></tr>
<tr><td>Password</td><td><input type="password" name="password" value=<%=user.getPassword()%> required></td></tr>
<tr><td></td><td></td></tr>
<tr><td></td><td></td></tr>
<tr><td>Date of Birth</td><td><input type="date" name="dob" value=<%=user.getDob()%> required></td></tr>
<tr><td>Biography</td><td><input type="text" name="bio" value=<%=user.getBio()%> required></td></tr>
<tr><td>Agree to TOS</td><td><input type="checkbox" name="tos" checked></td></tr>
<tr><td></td><td><input type="submit" value="Save"></td></tr>
</table>
</form>

<%
session.setAttribute("user", user);
}

//usersApp.getUsers().removeUser(user);
//usersApp.getUsers().addUser(user);
session.setAttribute("user", user);
usersApp.setUsers(users);

%>

</body>
</html>