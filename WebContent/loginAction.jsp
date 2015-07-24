<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error500.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="loginAction.xsl"?>

							<!-- Implement page styles + elements from .xsl -->

<% 
//get objects from .xml files
String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication" scope="application">
    <jsp:setProperty name="usersApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<page>

<%
//get needed data

String email = request.getParameter("email");
String password = request.getParameter("password");
//System.out.println(email); for testing
//System.out.println(password); used for testing
//User user = null;
%>

<%
//init login method from java class
User user = usersApp.getUsers().login(email, password);

if (user != null) { //login is successful
	session.setAttribute("user", user);
	response.sendRedirect("index.jsp");
	 %>	
<success />

<% 
//if login is not successful
} else { %>
<fail />

<% } %>

</page>