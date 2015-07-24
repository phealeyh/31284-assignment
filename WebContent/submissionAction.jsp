<%@page contentType="application/xml" import="uts.wsd.*"
	errorPage="error.jsp"%><?xml version="1.0" encoding="UTF-8"?>
<?xml-stylesheet type="text/xsl" href="submissionAction.xsl"?>

<!-- Implement page styles + elements from .xsl -->
<%
	String filePath = application.getRealPath("WEB-INF/articles.xml");
%>
<jsp:useBean id="articlesApp" class="uts.wsd.ArticlesApplication"
	scope="application">
	<jsp:setProperty name="articlesApp" property="filePath"
		value="<%=filePath%>" />
</jsp:useBean>

<page>

<%
	User user = (User) session.getAttribute("user");
	if (user != null) {

		// Problem: increment id to be assigned for new created article (Paolo)
		//corrected by Michael
		Integer id = (articlesApp.getArticles().getList().size() + 1);

		// Passed value from submission.jsp file equalling variables of created article
		String title = request.getParameter("title");
		String author = request.getParameter("author");
		String date = request.getParameter("date");
		String category = request.getParameter("category");
		String sText = request.getParameter("sText");
		String text = request.getParameter("text");

		// Gets list of articles
		Articles articles = articlesApp.getArticles();
		// Creates new object article of submitted article
		Article article = (Article) session.getAttribute("article");
		article = new Article(id, author, date, title, category, sText, text);
		// Add article to article array list
		articles.addArticle(article);
		articlesApp.setArticles(articles);
		session.setAttribute("article", article);
%>

<submit />
<%
	} else {
%>

<fail />
<%
	}
%>

</page>