<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="uts.wsd.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>My Account</title>
</head>
<body>

<% String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication" scope="application">
    <jsp:setProperty name="usersApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<% String filePath2 = application.getRealPath("WEB-INF/articles.xml"); %>
<jsp:useBean id="articlesApp" class="uts.wsd.ArticlesApplication" scope="application">
    <jsp:setProperty name="articlesApp" property="filePath" value="<%=filePath2%>"/>
</jsp:useBean>

<%
String fName = request.getParameter("fName");
String sName = request.getParameter("sName");
String name = fName + " " + sName;
String email = request.getParameter("email");
String password = request.getParameter("password");
String bio = request.getParameter("bio");
String dob = request.getParameter("dob");

Users users = usersApp.getUsers();
User user = (User)session.getAttribute("user");

%>

<div style="text-align: right;">
You are logged in as <%= user.getName() %>
</div>
<div style="text-align: right;">
<a href="index.jsp">Home</a> | <a href="logout.jsp">Logout</a>
</div>

<h1> My Account</h1>


<p>Welcome, <%=user.getName()%> !</p>
<br>
<h3>Submitted Content</h3>
<br>

<%if (user.getBio() != null)
	{
	%>

<p> Click <a href="submission.jsp">here</a> to submit an article.</p>
<br>
<%
// code to get only submitted articles from logged in author
// view submissions in table form
//have ability to delete a displayed article (use checkbox or similar)
// confirmation
// remove from .xml file
//return back to display updated list of articles
//check that index.jsp reflects updated list

//=use DOM/ from 2 weeks ago lab = google will help heaps

%>
<%
	}
else if (user.getBio() == null)
{
%>
<p>Please take the time to enter your Date of Birth and brief Biography so these details could be viewed along with your submitted articles.</p>
<p> Click <a href="addDetails.jsp">here</a> to do so in order to submit an article.</p>
<%
}

%>
<br>
<p> Click <a href="index.jsp">here</a> to search through available articles.</p>


</body>
</html>