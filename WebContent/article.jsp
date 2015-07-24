<%@page contentType="application/xml" import="uts.wsd.*" errorPage="error.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="article.xsl"?>


							<!-- Implement page styles + elements from .xsl -->

<%
//get objects from .xml file
	String filePath2 = application.getRealPath("WEB-INF/articles.xml");
%>
<jsp:useBean id="articlesApp" class="uts.wsd.ArticlesApplication"
	scope="application">
	<jsp:setProperty name="articlesApp" property="filePath"
		value="<%=filePath2%>" />
</jsp:useBean>

<%
	String articleID = request.getParameter("articleID");
//if articleID is null send to error page
if (articleID == null)
{
	response.sendRedirect("error.jsp");
	return;
	
}
%>

<articles xmlns="http://www.uts.edu.au/31284/wsd-articles"
	xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance"
	xsi:schemaLocation="http://www.uts.edu.au/31284/wsd-articles WEB-INF/articles.xsd">
<%
	Articles articles = articlesApp.getArticles();

	//Article article = articles.getArticlebyString(articleID);
	for (Article article : articles.getList()) {	
		if (article == articles.getArticlebyString(articleID)) {
%>

	<article id="<%=article.getId()%>">
		<author><%=article.getAuthor()%></author>
		<date><%=article.getDate()%></date>
		<title><%=article.getTitle()%></title>
		<category><%=article.getCategory()%></category>
		<text><%=article.getText()%></text>
	</article>

<%
	}
		else if (articles.getList().size() < Integer.parseInt(articleID)){
			response.sendRedirect("error.jsp");
			return;
		}
		
	}
%>
</articles>