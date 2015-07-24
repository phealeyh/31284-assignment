<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error500.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="account.xsl"?>

							<!-- Implement page styles + elements from .xsl -->

<page>


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

//get the users list from application
Users users = usersApp.getUsers();
User user = (User)session.getAttribute("user");

%>

<welcome />

<%if (user.getBio() != null)
	{
	%>
	
	<submit />


<%
// Display articles in table form along with submitted article

// code to get only submitted articles from logged in author
// view submissions in table form
//have ability to delete a displayed article (use checkbox or similar)
// confirmation
// remove from .xml file
//return back to display updated list of articles
//check that index.jsp reflects updated list

// ArticlesPrinter.html.print(filePath2, out);
%>
<%
	}
else if (user.getBio() == null)
	//must add details before submitting articles
{
%>

<addDetails />
<%
}

%>


</page>