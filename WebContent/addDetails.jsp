<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error500.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="addDetails.xsl"?>
    
    
    							<!-- Implement page styles + elements from .xsl -->
    
    <% 
    // init java application
    String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication" scope="application">
    <jsp:setProperty name="usersApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<page>

<%
//get all users and specific user object from session
Users users = usersApp.getUsers();
User user = (User)session.getAttribute("user");

String fName = request.getParameter("fName");
String sName = request.getParameter("sName");
String email = request.getParameter("email");
String password = request.getParameter("password");
String bio = request.getParameter("bio");
String dob = request.getParameter("dob");
%>

<%
//used to fill in bio before submitting articles
if (user.getBio() == null)
{
%>

<bio />

<%
session.setAttribute("user", user);
}

else if (user.getBio() != null)
	//can submit articles if details filled in

{
%>

<full />

<%
session.setAttribute("user", user);
}

//usersApp.getUsers().removeUser(user);
//usersApp.getUsers().addUser(user);
session.setAttribute("user", user);
//save user details
usersApp.setUsers(users);

%>


</page>