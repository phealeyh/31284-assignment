<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="author.xsl"?>

							<!-- Implement page styles + elements from .xsl -->


<%
//load data from .xml file
	String filePath = application.getRealPath("WEB-INF/users.xml");
%>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication"
	scope="application">
	<jsp:setProperty name="usersApp" property="filePath"
		value="<%=filePath%>" />
</jsp:useBean>

<%
	String author = request.getParameter("author");
//if authorName is null send to error page
if (author == null)
{
	response.sendRedirect("error.jsp");
	return;
	
}
%>

<users xmlns="http://www.uts.edu.au/31284/wsd-users"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.uts.edu.au/31284/wsd-users WEB-INF/users.xsd">
<%
	Users users = usersApp.getUsers();

	//User user = users.getUserbyString(author);
	for (User user : users.getList()) {
		if (user == users.getUserbyString(author)) {
%>

	<user>
		<email><%=user.getEmail()%></email>
		<fName><%=user.getfName()%></fName>
		<sName><%=user.getsName()%></sName>
		<password><%=user.getPassword()%></password>
		<dob><%=user.getDob()%></dob>
		<bio><%=user.getBio()%></bio>
	</user>

<%
	}
	}
%>
</users>