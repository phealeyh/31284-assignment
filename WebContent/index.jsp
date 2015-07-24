<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="index3.xsl"?>

							<!-- Implement page styles + elements from .xsl -->


<% 
//get objects from .xml files
String filePath = application.getRealPath("WEB-INF/users.xml"); %>
<jsp:useBean id="usersApp" class="uts.wsd.UsersApplication" scope="application">
    <jsp:setProperty name="usersApp" property="filePath" value="<%=filePath%>"/>
</jsp:useBean>

<% 
//get objects from .xml files
String filePath2 = application.getRealPath("WEB-INF/articles.xml"); %>
<jsp:useBean id="articlesApp" class="uts.wsd.ArticlesApplication" scope="application">
    <jsp:setProperty name="articlesApp" property="filePath" value="<%=filePath2%>"/>
</jsp:useBean>

 							<!-- Present data from .xml file -->
 
<articles xmlns="http://www.uts.edu.au/31284/wsd-articles"
  xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
  xsi:schemaLocation="http://www.uts.edu.au/31284/wsd-articles WEB-INF/articles.xsd">
<%
//for each article in stored articles list
Articles articles = articlesApp.getArticles();
for (Article article : articles.getList())
{
%>

<article id="<%=article.getId()%>">
<author><%=article.getAuthor()%></author>
		<date><%=article.getDate()%></date>
		<title><%=article.getTitle()%></title>
		<category><%=article.getCategory()%></category>
		<sText><%=article.getsText()%></sText>
</article>

<%} %>
</articles>
